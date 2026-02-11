module RDI_TOP #(
    parameter NBYTES = 64
) (
    // Global signals
    input               lclk,
    input               sys_rst,
    input               clk_ltsm,
    input               i_rst_n_mb,
    input               i_reset_pin_or_soft_ware_clear_error,
// ---------- LTSM Interface -----------------------------------------------------------------------------------------//
    //inputs from LTSM to RDI controller but not syncronized
    input               i_reset_only_from_ltsm,
    input               i_pl_error_from_ltsm,
    input               i_pl_inband_pres_from_ltsm,
    input               i_pl_train_error_from_ltsm,
    input [2:0]         i_pl_link_speed_from_ltsm,
    input               i_ltsm_in_L2,

    //outputs from RDI syncronized to LTSM
    output              o_go_to_l1_from_rdi_to_ltsm_sync,
    output              o_go_to_l2_from_rdi_to_ltsm_sync,
    output              o_go_to_active_from_rdi_to_ltsm_sync,
    output              o_go_to_training_from_rdi_to_ltsm_sync,
    output              o_go_to_linkerror_from_rdi_to_ltsm_sync,
    output              o_go_to_retrain_from_rdi_to_ltsm_sync,
    output              o_exit_from_l1_sync,
    output              o_reset_counter_signal, // exiting from L2 to reset
    output              o_clk_gate_en_sync,
    output              o_clk_gate_en,
    output              o_rdi_to_ltsm_go_to_reset_sync,
// ---------- Adapter Interface -----------------------------------------------------------------------------//
    //inputs from Adapate to RDI controller
    input [3:0]         i_lp_state_req,
    input               i_lp_wake_req,
    input               i_lp_stallack,
    input               i_lp_linkerror,
    input               i_lp_clk_ack,
    //outputs from RDI controller to Adapter
    output              o_pl_wake_ack,
    output              o_pl_clk_req,
    output              o_pl_stallreq, 
    output              o_pl_inband_pres,
    output              o_pl_error,
    output              o_pl_train_error,  
    output [2:0]        o_pl_speed_mode,   
    output [3:0]        o_pl_state_sts,   

// ---------- Sideband Interface --------------------------------------------------------------//
    //inputs from SB to RDI controller
    input [3:0]         i_rx_sb_message,
    input               i_rx_msg_valid,
    input               i_rx_done_send_message,
    input               i_sb_start_training,
    input               i_wake_adapter,
    //outputs from RDI controller to SB
    output [3:0]        o_tx_sb_message,
    output              o_tx_msg_valid,

    // outputfor sbi encoder 
    output             o_clk_done_hand_shake,
 
 /* ------------------------------ HM interface ------------------------------ */
    output   reg       o_mb_pll_en
);

// --------------- Internal signals from RDI controller to LTSM interface before synchrnizer ----------------
    wire                o_go_to_l1_from_rdi_to_ltsm;
    wire                o_go_to_l2_from_rdi_to_ltsm;
    wire                o_go_to_active_from_rdi_to_ltsm;
    wire                o_go_to_training_from_rdi_to_ltsm;
    wire                o_go_to_linkerror_from_rdi_to_ltsm;
    wire                o_go_to_retrain_from_rdi_to_ltsm;
    wire                o_exit_from_l1;
    wire                o_exit_from_l2;
    wire                w_rdi_to_ltsm_go_to_reset;
    // wire                o_clk_gate_en;
    // --------------- Internal signals from LTSM to RDI controller before synchronization ----------------
    wire                o_exit_from_l2_sync;

// --------------- Internal signals from LTSM to RDI controller after synchronization----------------
   
    wire                o_reset_only_from_ltsm_sync;
    wire                o_pl_error_from_ltsm_sync;
    wire                o_pl_inband_pres_from_ltsm_sync;
    wire                o_pl_train_error_from_ltsm_sync;
    wire                o_ltsm_is_waked_up_sync;
    wire [2:0]          o_pl_link_speed_from_ltsm_sync;
    wire                ltsm_in_L2_sync;

// --------------- Internal signals from RDI controller to LTSM interface after synchronization----------------
    // Internal signals
    wire                w_clk_done;
    wire                w_wake_adapter;
    wire                w_stall_done;
    wire                w_bring_up_done;
    wire                w_bring_up_pm_entry_done;
    wire                w_pm_timeout;
    wire                w_linkerror_timeout;
    wire                w_start_clk_hand;
    wire                w_start_stall_hand;

    wire [3:0]          o_tx_sb_message_bring_up;
    wire                o_tx_msg_valid_bring_up;
    wire [3:0]          o_tx_sb_message_pm_entry;
    wire                o_tx_msg_valid_pm_entry;

    wire                clk_div_ratio = (o_pl_speed_mode == 0)? 0 : 1; // connected to reset counter
    
// ---------- PM Interface ----------
    // input               i_pmnack_from_pm_entry,
    wire [1:0]        w_start_pm_entry_bring_up;
    
// ---------- Timer Interface ----------

    wire              w_start_linkerror_timer;
    wire              w_reset_counter_signal;
    /* -------------------------------------------------------------------------- */
    wire              i_pm_timer_start; // NOT USED, IGNORE
    wire              o_pm_timeout;     // NOT USED, IGNORE
    /* -------------------------------------------------------------------------- */
    
// ----------- bring up interface -------------//
    wire [2:0]        w_rdi_controller_choosen_bring_up;
    wire [4:0]        o_fsm_cs;
    wire              w_just_send_responce;

// ---------- Controller Instance ----------
    RDI_CONTROLLER_V2 u_rdi_controller (
        .lclk                                   (o_clk_for_rdi_controller),
        .sys_rst                                (sys_rst),
        .i_rx_sb_message                        (i_rx_sb_message),
        .i_rx_msg_valid                         (i_rx_msg_valid),
        .i_reset_only_from_ltsm                 (o_reset_only_from_ltsm_sync),
        .i_pl_error_from_ltsm                   (o_pl_error_from_ltsm_sync),
        .i_pl_inband_pres_from_ltsm             (o_pl_inband_pres_from_ltsm_sync),
        .i_pl_train_error_from_ltsm             (o_pl_train_error_from_ltsm_sync),
        .i_pl_link_speed_from_ltsm              (o_pl_link_speed_from_ltsm_sync),
        .i_lp_state_req                         (i_lp_state_req),
        .i_clk_done                             (w_clk_done),
        .i_wake_adapter                         (i_wake_adapter),// Not currently used in controller
        .i_stall_done                           (w_stall_done),
        .i_bring_up_done                        (w_bring_up_done),
        .i_bring_up_pm_entry_done               (w_bring_up_pm_entry_done),
        .i_sb_start_training                    (i_sb_start_training),
        .i_lp_linkerror                         (i_lp_linkerror),
        .i_pmnack_from_pm_entry                 (i_pmnack_from_pm_entry),
        .i_linkerror_timeout                    (w_linkerror_timeout),
        .i_reset_pin_or_soft_ware_clear_error   (i_reset_pin_or_soft_ware_clear_error),
        .o_go_to_l1_from_rdi_to_ltsm            (o_go_to_l1_from_rdi_to_ltsm),
        .o_go_to_l2_from_rdi_to_ltsm            (o_go_to_l2_from_rdi_to_ltsm),
        .o_go_to_active_from_rdi_to_ltsm        (o_go_to_active_from_rdi_to_ltsm),
        .o_go_to_training_from_rdi_to_ltsm      (o_go_to_training_from_rdi_to_ltsm),
        .o_go_to_linkerror_from_rdi_to_ltsm     (o_go_to_linkerror_from_rdi_to_ltsm),
        .o_go_to_retrain_from_rdi_to_ltsm       (o_go_to_retrain_from_rdi_to_ltsm),
        .o_rdi_to_ltsm_go_to_reset              (w_rdi_to_ltsm_go_to_reset),
        .o_rdi_controller_choosen_bring_up      (w_rdi_controller_choosen_bring_up),
        .o_start_pm_entry_bring_up              (w_start_pm_entry_bring_up),
        .o_pl_state_sts                         (o_pl_state_sts),
        .o_start_clk_hand                       (w_start_clk_hand),
        .o_start_stall_hand                     (w_start_stall_hand),
        .o_start_linkerror_timer                (w_start_linkerror_timer),
        .o_exit_from_l1                         (o_exit_from_l1),
        .o_exit_from_l2                         (o_exit_from_l2),
        .o_fsm_cs                               (o_fsm_cs),
        .o_just_send_responce                   (w_just_send_responce)
    );
    
// ---------- Timer Controller Instance ----------
    rdi_timer_controller u_timer_controller (
        .lclk                       (o_clk_for_rdi_controller),
        .sys_rst                    (sys_rst),
        .i_linkerror_timer_start    (w_start_linkerror_timer),
        .o_linkerror_timeout        (w_linkerror_timeout),
        /* -------------------------------------------------------------------------- */
        .i_pm_timer_start           (i_pm_timer_start), // NOT USED, IGNORE
        .o_pm_timeout               (o_pm_timeout)      // NOT USED, IGNORE
        /* -------------------------------------------------------------------------- */
    );
    
// ---------- Clock Handshake Instance ----------
    clk_handshake u_clk_handshake (
        .i_clk                  (o_clk_for_rdi_controller),
        .i_rst_n                (sys_rst),
        .i_lp_clk_ack           (i_lp_clk_ack), // Example connection
        .i_en                   (w_start_clk_hand),
        .o_pl_clk_req           (o_pl_clk_req), // Not currently used in top level
        .o_adapter_is_waked_up  (w_clk_done)
    );
    
// ---------- Wake Handshake Instance ----------
    wake_handshake u_wake_handshake (
        .i_clk                  (lclk),
        .i_rst_n                (sys_rst),
        .i_lp_state_req         (i_lp_state_req),
        .i_lp_wake_req          (i_lp_wake_req),
        .i_pl_state_sts         (o_fsm_cs),
        .i_pl_inband_pres       (o_pl_inband_pres),
        .i_sb_msg_valid         (i_rx_msg_valid),
        .i_ltsm_is_waked_up     (o_ltsm_is_waked_up_sync), // Example connection
        .i_ltsm_in_reset        (o_reset_only_from_ltsm_sync),
        .i_sb_start_training    (i_sb_start_training),
        .o_clk_gate_en          (o_clk_gate_en), // enable the clk for the ltsm
        .o_pl_wake_ack          (o_pl_wake_ack)
    );
    
    // ---------- Stall Handshake Instance ----------
    stall_hand_chak u_stall_handshake (
        .lclk           (o_clk_for_rdi_controller),
        .sys_rst        (sys_rst),
        .i_stall_start  (w_start_stall_hand),
        .i_lp_stallack  (i_lp_stallack),
        .o_pl_stallreq  (o_pl_stallreq),
        .o_stall_done   (w_stall_done)
    );
    
    // ---------- General Bring Up Wrapper Instance ----------
    General_Bring_Up_Wrapper general_bring_up_wrapper_inst (
        .lclk                               (o_clk_for_rdi_controller),
        .sys_rst                            (sys_rst),
        .i_rdi_controller_choosen_bring_up  (w_rdi_controller_choosen_bring_up),
        .i_rx_sb_message                    (i_rx_sb_message),
        .i_rx_msg_valid                     (i_rx_msg_valid),
        .i_rx_done_send_message             (i_rx_done_send_message), // Connected to training signal
        .i_just_send_responce               (w_just_send_responce),
        .i_lp_state_req                     (i_lp_state_req),
        .o_tx_sb_message                    (o_tx_sb_message_bring_up),
        .o_tx_msg_valid                     (o_tx_msg_valid_bring_up),
        .o_General_Bring_Up_done            (w_bring_up_done)
    );
    
    // ---------- PM Entry Wrapper Instance ----------
    PM_entry_wrapper u_pm_entry (
        .i_clk          (o_clk_for_rdi_controller),
        .i_rst_n        (sys_rst),
        .i_en           (w_start_pm_entry_bring_up[0]), 
        .i_req_L1_or_L2 (w_start_pm_entry_bring_up[1]), // L1=0, L2=1
        .i_clk_div_ratio(1'b0), 
        .i_msg_done     (i_rx_done_send_message), 
        .i_msg_valid    (i_rx_msg_valid), 
        .i_msg_no       (i_rx_sb_message), 
        .o_msg_valid    (o_tx_msg_valid_pm_entry), 
        .o_msg_no       (o_tx_sb_message_pm_entry), 
        .o_test_done    (w_bring_up_pm_entry_done),
        .o_pm_nak       (i_pmnack_from_pm_entry)
    );

// ------------- RDI_LTSM_INTERFSCE_INSTANCE ------------------------//
    
    RDI_LTSM_INTERFACE u_rdi_ltsm_interface (
        .lclk                                   (lclk),
        .clk_ltsm                               (clk_ltsm), 
        .sys_rst                                (sys_rst),
        .i_rst_n_mb                             (i_rst_n_mb),

        // Inputs from LTSM to RDI controller
        .i_reset_only_from_ltsm                 (i_reset_only_from_ltsm),
        .i_pl_error_from_ltsm                   (i_pl_error_from_ltsm),
        .i_pl_inband_pres_from_ltsm             (i_pl_inband_pres_from_ltsm),
        .i_pl_train_error_from_ltsm             (o_pl_train_error_from_ltsm_sync),
        .i_pl_link_speed_from_ltsm              (i_pl_link_speed_from_ltsm),
        .i_ltsm_in_L2                           (i_ltsm_in_L2),

        // Outputs from RDI controller to LTSM
        .i_go_to_l1_from_rdi_to_ltsm            (o_go_to_l1_from_rdi_to_ltsm),
        .i_go_to_l2_from_rdi_to_ltsm            (o_go_to_l2_from_rdi_to_ltsm),
        .i_go_to_active_from_rdi_to_ltsm        (o_go_to_active_from_rdi_to_ltsm),
        .i_go_to_training_from_rdi_to_ltsm      (o_go_to_training_from_rdi_to_ltsm),
        .i_go_to_linkerror_from_rdi_to_ltsm     (o_go_to_linkerror_from_rdi_to_ltsm),
        .i_go_to_retrain_from_rdi_to_ltsm       (o_go_to_retrain_from_rdi_to_ltsm),
        .i_exit_from_l1                         (o_exit_from_l1),
        .i_clk_gate_en                          (o_clk_gate_en),
        .i_reser_counter_done                   (w_reset_counter_signal),
        .i_rdi_to_ltsm_go_to_reset              (w_rdi_to_ltsm_go_to_reset),

        // Synchronized outputs to RDI controller
        .o_reset_only_from_ltsm_sync            (o_reset_only_from_ltsm_sync), 
        .o_pl_error_from_ltsm_sync              (o_pl_error_from_ltsm_sync),  
        .o_pl_inband_pres_from_ltsm_sync        (o_pl_inband_pres_from_ltsm_sync), 
        .o_pl_train_error_from_ltsm_sync        (o_pl_train_error_from_ltsm_sync), 
        .o_ltsm_is_waked_up_sync                (o_ltsm_is_waked_up_sync), 
        .o_pl_link_speed_from_ltsm_sync         (o_pl_link_speed_from_ltsm_sync), 
        .o_ltsm_in_L2_sync                      (ltsm_in_L2_sync),

        // Synchronized outputs to LTSM
        .o_go_to_l1_from_rdi_to_ltsm_sync       (o_go_to_l1_from_rdi_to_ltsm_sync), 
        .o_go_to_l2_from_rdi_to_ltsm_sync       (o_go_to_l2_from_rdi_to_ltsm_sync), 
        .o_go_to_active_from_rdi_to_ltsm_sync   (o_go_to_active_from_rdi_to_ltsm_sync), 
        .o_go_to_training_from_rdi_to_ltsm_sync (o_go_to_training_from_rdi_to_ltsm_sync), 
        .o_go_to_linkerror_from_rdi_to_ltsm_sync(o_go_to_linkerror_from_rdi_to_ltsm_sync), 
        .o_go_to_retrain_from_rdi_to_ltsm_sync  (o_go_to_retrain_from_rdi_to_ltsm_sync), 
        .o_exit_from_l1_sync                    (o_exit_from_l1_sync), 
        .o_clk_gate_en_sync                     (o_clk_gate_en_sync),
        .o_reset_counter_signal                 (o_reset_counter_signal),
        .o_rdi_to_ltsm_go_to_reset_sync         (o_rdi_to_ltsm_go_to_reset_sync)
    );
    
// -------------------- Reset Counter Instance -------------------//
    reset_counter u_reset_counter (
        .i_clk              (lclk),
        .i_rst_n            (sys_rst),
        .i_count_en         (o_exit_from_l2),
        .i_clk_div_ratio    (clk_div_ratio), 
        .o_reset_count_done (w_reset_counter_signal)
    );

// ---------- Clock Gating Instance ------------------------------------//
    CLK_GATING u_clk_gating (
        .CLK        (lclk),
        .EN         (o_clk_gate_en),
        .GATED_CLK  (o_clk_for_rdi_controller)
    );

// assign o_clk_for_rdi_controller =lclk & o_clk_gate_en; 
    assign o_clk_done_hand_shake = w_clk_done;
    assign o_tx_sb_message       = o_tx_sb_message_bring_up | o_tx_sb_message_pm_entry; 
    assign o_tx_msg_valid        = o_tx_msg_valid_bring_up  | o_tx_msg_valid_pm_entry;
    assign o_pl_inband_pres      = o_pl_inband_pres_from_ltsm_sync;
    assign o_pl_error            = o_pl_error_from_ltsm_sync;
    assign o_pl_train_error      = o_pl_train_error_from_ltsm_sync;  
    assign o_pl_speed_mode       = o_pl_link_speed_from_ltsm_sync;

    always @ (*) begin
        o_mb_pll_en = 1;
        if ((o_pl_state_sts == 5'b01000) && ltsm_in_L2_sync) o_mb_pll_en = 0;
    end





endmodule
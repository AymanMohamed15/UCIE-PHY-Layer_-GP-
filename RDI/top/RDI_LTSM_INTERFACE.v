module RDI_LTSM_INTERFACE (
    // Global signals
    input               lclk,
    input               clk_ltsm,
    input               sys_rst,
    input               i_rst_n_mb,

    // Inputs from LTSM to RDI controller
    input               i_reset_only_from_ltsm,
    input               i_pl_error_from_ltsm,
    input               i_pl_inband_pres_from_ltsm,
    input               i_pl_train_error_from_ltsm,
    input               i_ltsm_in_L2,
    input [2:0]         i_pl_link_speed_from_ltsm,

    // Outputs from RDI controller to LTSM
    input               i_go_to_l1_from_rdi_to_ltsm,
    input               i_go_to_l2_from_rdi_to_ltsm,
    input               i_go_to_active_from_rdi_to_ltsm,
    input               i_go_to_training_from_rdi_to_ltsm,
    input               i_go_to_linkerror_from_rdi_to_ltsm,
    input               i_go_to_retrain_from_rdi_to_ltsm,
    input               i_exit_from_l1,
    input               i_clk_gate_en,
    input               i_reser_counter_done,
    input               i_rdi_to_ltsm_go_to_reset,

    // Synchronized outputs to RDI controller
    output              o_reset_only_from_ltsm_sync,
    output              o_pl_error_from_ltsm_sync,
    output              o_pl_inband_pres_from_ltsm_sync,
    output              o_pl_train_error_from_ltsm_sync,
    output              o_ltsm_is_waked_up_sync,
    output [2:0]        o_pl_link_speed_from_ltsm_sync,
    output              o_ltsm_in_L2_sync,

    // Synchronized outputs to LTSM
    output              o_go_to_l1_from_rdi_to_ltsm_sync,
    output              o_go_to_l2_from_rdi_to_ltsm_sync,
    output              o_go_to_active_from_rdi_to_ltsm_sync,
    output              o_go_to_training_from_rdi_to_ltsm_sync,
    output              o_go_to_linkerror_from_rdi_to_ltsm_sync,
    output              o_go_to_retrain_from_rdi_to_ltsm_sync,
    output              o_exit_from_l1_sync,
    output              o_clk_gate_en_sync,
    output              o_reset_counter_signal,
    output              o_rdi_to_ltsm_go_to_reset_sync
);

/*******************************************
* Synchronizers for Inputs (LTSM to RDI)
*******************************************/
    bit_synchronizer u_sync_reset_only_from_ltsm (
        .i_clk(lclk),
        .i_rst_n(sys_rst),
        .i_data_in(i_reset_only_from_ltsm),
        .o_data_out(o_reset_only_from_ltsm_sync)
    );

    bit_synchronizer u_sync_pl_error_from_ltsm (
        .i_clk(lclk),
        .i_rst_n(sys_rst),
        .i_data_in(i_pl_error_from_ltsm),
        .o_data_out(o_pl_error_from_ltsm_sync)
    );

    bit_synchronizer u_sync_pl_inband_pres_from_ltsm (
        .i_clk(lclk),
        .i_rst_n(sys_rst),
        .i_data_in(i_pl_inband_pres_from_ltsm),
        .o_data_out(o_pl_inband_pres_from_ltsm_sync)
    );

    bit_synchronizer u_sync_pl_train_error_from_ltsm (
        .i_clk(lclk),
        .i_rst_n(sys_rst),
        .i_data_in(i_pl_train_error_from_ltsm),
        .o_data_out(o_pl_train_error_from_ltsm_sync)
    );

    bit_synchronizer u_sync_ltsm_is_waked_up (
        .i_clk(lclk),
        .i_rst_n(sys_rst),
        .i_data_in(o_clk_gate_en_sync),
        .o_data_out(o_ltsm_is_waked_up_sync)
    );

    bit_synchronizer u_sync_ltsm_is_in_L2 (
        .i_clk      (lclk),
        .i_rst_n    (sys_rst),
        .i_data_in  (i_ltsm_in_L2),
        .o_data_out (o_ltsm_in_L2_sync)
    );

    assign o_pl_link_speed_from_ltsm_sync = i_pl_link_speed_from_ltsm;

/*******************************************
* Synchronizers for Outputs (RDI to LTSM)
*******************************************/
    bit_synchronizer u_sync_go_to_l1_from_rdi_to_ltsm (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_go_to_l1_from_rdi_to_ltsm),
        .o_data_out(o_go_to_l1_from_rdi_to_ltsm_sync)
    );

    bit_synchronizer u_sync_go_to_l2_from_rdi_to_ltsm (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_go_to_l2_from_rdi_to_ltsm),
        .o_data_out(o_go_to_l2_from_rdi_to_ltsm_sync)
    );

    bit_synchronizer u_sync_go_to_active_from_rdi_to_ltsm (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_go_to_active_from_rdi_to_ltsm),
        .o_data_out(o_go_to_active_from_rdi_to_ltsm_sync)
    );

    bit_synchronizer u_sync_go_to_training_from_rdi_to_ltsm (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_go_to_training_from_rdi_to_ltsm),
        .o_data_out(o_go_to_training_from_rdi_to_ltsm_sync)
    );

    bit_synchronizer u_sync_go_to_linkerror_from_rdi_to_ltsm (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_go_to_linkerror_from_rdi_to_ltsm),
        .o_data_out(o_go_to_linkerror_from_rdi_to_ltsm_sync)
    );

    bit_synchronizer u_sync_go_to_retrain_from_rdi_to_ltsm (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_go_to_retrain_from_rdi_to_ltsm),
        .o_data_out(o_go_to_retrain_from_rdi_to_ltsm_sync)
    );

    bit_synchronizer u_sync_exit_from_l1 (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_exit_from_l1),
        .o_data_out(o_exit_from_l1_sync)
    );

    pulse_synchronizer u_sync_exit_from_l2(
        .i_slow_clock   (clk_ltsm),              
        .i_slow_rst_n   (i_rst_n_mb),        
        .i_fast_clock   (lclk),          
        .i_fast_rst_n   (sys_rst),           
        .i_fast_pulse   (i_reser_counter_done),       
        .o_slow_pulse   (o_reset_counter_signal)  
    );

    bit_synchronizer u_sync_clk_gate_en (
        .i_clk(clk_ltsm),
        .i_rst_n(i_rst_n_mb),
        .i_data_in(i_clk_gate_en),
        .o_data_out(o_clk_gate_en_sync)
    );

    bit_synchronizer u_sync_go_to_reset_ltsm (
        .i_clk      (clk_ltsm),
        .i_rst_n    (i_rst_n_mb),
        .i_data_in  (i_rdi_to_ltsm_go_to_reset),
        .o_data_out (o_rdi_to_ltsm_go_to_reset_sync)
    );

endmodule
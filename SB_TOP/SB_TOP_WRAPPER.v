module SB_TOP_WRAPPER (
/**************************************
 * INPUTS
**************************************/
// clocks and resets
    input               i_sb_clk,             // Main clock 100 MHz
    input               i_dig_clk,
    input               i_rst_n_sb,           // Active-low reset
    input               i_rst_n_mb,
     
// Adapter interface
    input               i_lp_cfg_vld,
    input       [31:0]  i_lp_cfg,
    input               i_lp_cfg_crd,

// RDI-specific Inputs
    input               i_adapter_is_waked_up,
    input               i_clk_is_ungated,
    input       [3:0]   i_msg_no_rdi,
    input               i_msg_valid_rdi,
    input               i_pl_inband_pres,

// MB-specific Inputs
    input               i_start_pattern_req,
    input               i_data_valid,
    input               i_msg_valid,
    input       [3:0]   i_state,
    input               i_ltsm_in_reset,
    input       [3:0]   i_sub_state,
    input       [3:0]   i_msg_no,
    input       [2:0]   i_msg_info,
    input       [15:0]  i_data_bus,
    input               i_stop_cnt,
    input               i_tx_point_sweep_test_en,
    input       [1:0]   i_tx_point_sweep_test,

// Deserializer Interface
    input               i_deser_done,
    input       [63:0]  i_deser_data,
/**************************************
 * OUTPUTS
**************************************/    
// Adapter interface
    output              o_pl_nerror,  // added feature
    output              o_pl_cfg_vld,
    output      [31:0]  o_pl_cfg,
    output              o_pl_cfg_crd,

// RDI-specific Outputs
    output              o_wake_adapter,
    output              o_msg_done_rdi,
    output              o_msg_valid_rdi,
    output      [3:0]   o_msg_no_rdi,

// MB-specific Outputs
    output              o_start_pattern_done,
    output              o_time_out,
    output              o_busy,
    output              o_rx_sb_start_pattern,
    output              o_mb_msg_valid,
    output              o_parity_error,
    output              o_adapter_enable,
    output              o_mb_tx_point_sweep_test_en,
    output      [1:0]   o_mb_tx_point_sweep_test,
    output      [3:0]   o_mb_msg_no,
    output      [2:0]   o_mb_msg_info,
    output      [15:0]  o_mb_data,
    output              o_mb_fifo_empty,

// serializer Interface
    output      [63:0]  o_fifo_data,
    output              o_ser_en,
   
// SB CLOCK
    output              o_TXCKSB

);

/****************************************
 * LOCAL PARAMETERS
****************************************/
    localparam RESET 	            = 0;  // 0000
    localparam FINISH_RESET         = 1;  // 0001
    localparam SBINIT 		 		= 2;  // 0010
    localparam MBINIT				= 3;  // 0011
    localparam MBTRAIN              = 4;  // 0100
    localparam LINKINIT             = 5;  // 0101
    localparam ACTIVE               = 6;  // 0110
    localparam TRAINERROR_HS        = 7;  // 0111
    localparam TRAINERROR           = 8;  // 1000
    localparam LINKMGMT_RETRAIN     = 9;  // 1001
    localparam PHYRETRAIN           = 10; // 1010
    localparam L1                   = 11; // 1011
    localparam L2                   = 12; // 1100

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// INTERNAL SIGNALS //////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /****************************************
     * FSM MODELLING/CLOCK CONTROL SIGNALS
    ****************************************/
        wire fsm_ser_done;
        wire fsm_ser_done_sync;

    /****************************************
     * TX FIFO SIGNALS
    ****************************************/
        wire [63:0] mb_tx_fifo_data;
        wire [63:0] rdi_fifo_data;
        reg  [63:0] i_fifo_data;
        reg write_en;
        wire rdi_tx_fifo_write_en;
        wire mb_tx_fifo_write_en;
        wire fifo_empty;
        wire fifo_full;
        wire read_enable;
        wire dont_send_zeros;
        wire delete_data;

    /****************************************
     * DESER SIGNALS
    ****************************************/
        reg deser_done_rdi;
        reg deser_done_mb;

    /****************************************
     * LTSM -> SB SYNCHRONIZER SIGNALS
    ****************************************/
        wire sync_sb_start_pattern_req;
        wire sync_sb_tx_msg_valid;
        wire sync_sb_ltsm_in_reset;

    /****************************************
     * RESET SYNCHRONIZER SIGNALS
    ****************************************/
        wire sync_mb_rst_n;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// ASSIGN/WIRE STATMENTS /////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    assign o_mb_fifo_empty = fifo_empty;
    wire ltsm_in_training = ((i_state == RESET) || i_state == SBINIT || i_state == MBINIT || i_state == MBTRAIN ||  i_state == TRAINERROR_HS || i_state == PHYRETRAIN);
    wire is_rdi_msg = (i_deser_data [21:14] == 8'h01 || i_deser_data [21:14] == 8'h02);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// INSTANTIATIONS ////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /****************************************
    * SB RDI TOP
    ****************************************/
        SB_RDI_WRAPPER u_sb_rdi_wrapper (
            /*------------------------------------------------------------------------------------------------------------
            * Clock and Reset
            ------------------------------------------------------------------------------------------------------------*/
                .i_clk                  (i_sb_clk),
                .i_rst_n                (i_rst_n_sb),
            /*------------------------------------------------------------------------------------------------------------
            * Adapter Interface
            ------------------------------------------------------------------------------------------------------------*/
                .i_lp_cfg_vld           (i_lp_cfg_vld),
                .i_lp_cfg               (i_lp_cfg),
                .i_lp_cfg_crd           (i_lp_cfg_crd),
                .o_pl_cfg_crd           (o_pl_cfg_crd),
                .o_pl_nerror            (o_pl_nerror),
                .o_pl_cfg_vld           (o_pl_cfg_vld),
                .o_pl_cfg               (o_pl_cfg),
            /*------------------------------------------------------------------------------------------------------------
            * RDI FSM Interface
            ------------------------------------------------------------------------------------------------------------*/ 
                .i_msg_no               (i_msg_no_rdi),
                .i_msg_valid            (i_msg_valid_rdi),
                .i_adapter_is_waked_up  (i_adapter_is_waked_up),
                .i_clk_is_ungated       (i_clk_is_ungated),
                .i_pl_inband_pres       (i_pl_inband_pres),
                .o_wake_adapter         (o_wake_adapter),
                .o_msg_done             (o_msg_done_rdi),
                .o_msg_valid            (o_msg_valid_rdi),
                .o_msg_no               (o_msg_no_rdi),
            /*------------------------------------------------------------------------------------------------------------
            * TX FIFO Interface
            ------------------------------------------------------------------------------------------------------------*/ 
                .i_tx_fifo_full         (fifo_full),
                .i_tx_fifo_read_en      (read_enable),
                .i_srcid                (o_fifo_data[30:29]),
                .i_fifo_data_is_zeros   (dont_send_zeros),
                .o_tx_fifo_data         (rdi_fifo_data),
                .o_tx_fifo_write_en     (rdi_tx_fifo_write_en),
                .o_delete_data          (delete_data),
            /*------------------------------------------------------------------------------------------------------------
            * RX Deserializer Interface
            ------------------------------------------------------------------------------------------------------------*/
                .i_deser_done           (deser_done_rdi),
                .i_deser_data           (i_deser_data)   
        );

    /****************************************
    * SB MB TOP
    ****************************************/
        SB_MB_WRAPPER u_sb_mb_wrapper (
            /*------------------------------------------------------------------------------------------------------------
            * Clock and Reset
            ------------------------------------------------------------------------------------------------------------*/
                .i_clk                      (i_sb_clk),
                .i_rst_n                    (i_rst_n_sb),
            /*------------------------------------------------------------------------------------------------------------
            * LTSM Interface
            ------------------------------------------------------------------------------------------------------------*/
                .i_start_pattern_req        (sync_sb_start_pattern_req),
                .i_msg_valid                (sync_sb_tx_msg_valid),
                .i_data_valid               (i_data_valid),
                .i_stop_cnt                 (sync_sb_stop_cnt),
                .i_state                    (i_state),
                .i_sub_state                (i_sub_state),
                .i_ltsm_in_reset            (sync_sb_ltsm_in_reset),
                .i_msg_no                   (i_msg_no),
                .i_msg_info                 (i_msg_info),
                .i_data_bus                 (i_data_bus),
                .i_tx_point_sweep_test_en   (i_tx_point_sweep_test_en),
                .i_tx_point_sweep_test      (i_tx_point_sweep_test),
                .o_start_pattern_done       (o_start_pattern_done),
                .o_time_out                 (o_time_out),
                .o_busy                     (o_busy),
                .o_rx_sb_start_pattern      (o_rx_sb_start_pattern),
                .o_msg_valid                (o_mb_msg_valid),
                .o_parity_error             (o_parity_error),
                .o_adapter_enable           (o_adapter_enable),
                .o_tx_point_sweep_test_en   (o_mb_tx_point_sweep_test_en),
                .o_tx_point_sweep_test      (o_mb_tx_point_sweep_test),
                .o_msg_no                   (o_mb_msg_no),
                .o_msg_info                 (o_mb_msg_info),
                .o_data                     (o_mb_data),
            /*------------------------------------------------------------------------------------------------------------
            * Deserializer Interface
            ------------------------------------------------------------------------------------------------------------*/
                .i_de_ser_done              (deser_done_mb),
                .i_deser_data               (i_deser_data),
            /*------------------------------------------------------------------------------------------------------------
            * CLOCK CONTROLLER Interface
            ------------------------------------------------------------------------------------------------------------*/
                .i_ser_done                 (fsm_ser_done),
            /*------------------------------------------------------------------------------------------------------------
            * TX FIFO Interface
            ------------------------------------------------------------------------------------------------------------*/
                .i_fifo_full                (fifo_full),
                .o_tx_data_out              (mb_tx_fifo_data),
                .o_write_enable             (mb_tx_fifo_write_en)
        );

    /****************************************
    * FSM_Modelling
    ****************************************/
        SB_TX_FSM_Modelling fsm_model (
            .i_clk                  (i_sb_clk),
            .i_rst_n                (i_rst_n_sb),
            .i_empty                (fifo_empty),
            .o_read_enable          (read_enable),
            .i_dont_send_zeros      (dont_send_zeros & ~ltsm_in_training),
            .o_clk_en               (o_ser_en),
            .o_ser_done             (fsm_ser_done)
        );

    /****************************************
    * TX_FIFO
    ****************************************/
        SB_TX_FIFO tx_fifo_dut (
            .i_clk              (i_sb_clk),
            .i_rst_n            (i_rst_n_sb),
            .i_data_in          (i_fifo_data), 
            .i_write_enable     (write_en), 
            .i_read_enable      (read_enable), 
            .i_delete_data      (delete_data),
            .o_data_out         (o_fifo_data), 
            .o_empty            (fifo_empty), 
            .o_dont_send_zeros  (dont_send_zeros),
            .o_full             (fifo_full) 
        );

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////// SYNCHRONIZERS ///////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /******************************************
    * LTSM --> SB SYNCHRONIZERS (FAST -> SLOW)
    ******************************************/
        pulse_synchronizer SBINIT_start_pattern_req_sync_inst (
            .i_slow_clock       (i_sb_clk),
            .i_fast_clock       (i_dig_clk),
            .i_slow_rst_n       (i_rst_n_sb),
            .i_fast_rst_n       (i_rst_n_mb),
            .i_fast_pulse       (i_start_pattern_req),
            .o_slow_pulse       (sync_sb_start_pattern_req)
        );
        bit_synchronizer sb_tx_msg_valid_sync_inst (
            .i_clk      (i_sb_clk),
            .i_rst_n    (i_rst_n_sb),
            .i_data_in  (i_msg_valid),
            .o_data_out (sync_sb_tx_msg_valid)
        );
        
        pulse_synchronizer sb_ltsm_in_reset_inst (
            .i_slow_clock       (i_sb_clk),
            .i_fast_clock       (i_dig_clk),
            .i_slow_rst_n       (i_rst_n_sb),
            .i_fast_rst_n       (i_rst_n_mb),
            .i_fast_pulse       (i_ltsm_in_reset),
            .o_slow_pulse       (sync_sb_ltsm_in_reset)
        );

        pulse_synchronizer stop_timeout_count_sync_inst (
            .i_slow_clock       (i_sb_clk),
            .i_fast_clock       (i_dig_clk),
            .i_slow_rst_n       (i_rst_n_sb),
            .i_fast_rst_n       (i_rst_n_mb),
            .i_fast_pulse       (i_stop_cnt),
            .o_slow_pulse       (sync_sb_stop_cnt)
        );
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// MUXING ////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /****************************************
    * MUXING TX FIFO DATA IN
    ****************************************/
    always @ (*) begin
        // case (ltsm_in_training)
        //     1'b1: i_fifo_data = mb_tx_fifo_data;
        //     1'b0: i_fifo_data = rdi_fifo_data;
        //     default: i_fifo_data = rdi_fifo_data;
        // endcase
        i_fifo_data = rdi_fifo_data | mb_tx_fifo_data;
    end
    /****************************************
    * MUXING TX FIFO WRITE EN
    ****************************************/
    always @ (*) begin
        // case (ltsm_in_training)
        //     1'b1: write_en = mb_tx_fifo_write_en;
        //     1'b0: write_en = rdi_tx_fifo_write_en;
        //     default: write_en = rdi_tx_fifo_write_en;
        // endcase
        write_en = mb_tx_fifo_write_en | rdi_tx_fifo_write_en;
    end
    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// DEMUXING //////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/****************************************
* DEMUXING DESER DONE
****************************************/
always @ (*) begin
    deser_done_mb  = 0;
    deser_done_rdi = 0;
    case (ltsm_in_training & ~is_rdi_msg)
        1'b1: deser_done_mb  = i_deser_done;
        1'b0: deser_done_rdi = i_deser_done;
        default: begin
            deser_done_mb  = 0;
            deser_done_rdi = 0;        
        end
    endcase
end


endmodule

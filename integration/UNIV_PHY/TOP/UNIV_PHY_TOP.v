`timescale 1ps/1ps
module UNIV_PHY_TOP #(parameter SER_WIDTH = 32, parameter N_BYTES = 64) (
/*************************************************************************
* INPUTS
*************************************************************************/
/*-------------------------
 * DIGITAL
-------------------------*/
    // Adapter RDI Interface
    input                       i_lp_irdy,
    input                       i_lp_valid,
    input     [(8*N_BYTES)-1:0] i_lp_data, // 64 bytes  lesa hat2kd mn el width               
    input     [3:0]             i_lp_state_req,
    input                       i_lp_linkerror,
    input                       i_lp_stallack,
    input                       i_lp_clk_ack,
    input                       i_lp_wake_req,
    input     [31:0]            i_lp_cfg,
    input                       i_lp_cfg_vld,
    input                       i_lp_cfg_crd,
    /*---------------------------------------------------------------*/
    input                       i_lp_retimer_crd, // NOT USED, IGNORE
    /*---------------------------------------------------------------*/
    input                       i_rst_n,
/*-------------------------
 * HARD MACRO
-------------------------*/
    // input signals from other DIE clock transmitters to our die clock receivers
    input                           i_CKP,
    input                           i_CKN,
    input                           i_TRACK,

    // input signals from the other DIE MAINBAND serializers to our MAINBAND deserializers
    // data lanes
    input                           i_rx_lane_0,
    input                           i_rx_lane_1,
    input                           i_rx_lane_2,
    input                           i_rx_lane_3,
    input                           i_rx_lane_4,
    input                           i_rx_lane_5,
    input                           i_rx_lane_6,
    input                           i_rx_lane_7,
    input                           i_rx_lane_8,
    input                           i_rx_lane_9,
    input                           i_rx_lane_10,
    input                           i_rx_lane_11,
    input                           i_rx_lane_12,
    input                           i_rx_lane_13,
    input                           i_rx_lane_14,
    input                           i_rx_lane_15,
    // valid lane
    input                           i_RVLD_P,

    // input signals from the other DIE SIDEBAND serializer to our SIDEBAND deserializer
    input                           i_SB_RXDATA,
    input                           i_SB_RXCLK,

/*************************************************************************
* OUTPUTS
*************************************************************************/
/*-------------------------
 * DIGITAL
-------------------------*/
    // Adapter RDI Interface
        output                      o_pl_trdy, 
        output                      o_pl_valid,
        output     [511:0]          o_pl_data, // 64B lesa hat2kd mn el WIDTH
        output     [3:0]            o_pl_state_sts,
        output                      o_pl_inband_pres,
        output                      o_pl_error,
        output                      o_pl_nferror,
        output                      o_pl_trainerror,
        output                      o_pl_stallreq,
        output     [2:0]            o_pl_speedmode,
        output     [2:0]            o_pl_lnk_cfg,
        output                      o_pl_clk_req,
        output                      o_pl_wake_ack,
        output     [31:0]           o_pl_cfg,
        output                      o_pl_cfg_vld,
        output                      o_pl_cfg_crd,
        /*------------------------------------------------------------------*/
        output                      o_pl_retimer_crd,    // NOT USED, IGNORE
        output                      o_pl_cerror,         // NOT USED, IGNORE
        output                      o_pl_phyinrecenter,  // NOT USED, IGNORE
        /*------------------------------------------------------------------*/
/*-------------------------
 * HARD MACRO
-------------------------*/
    // output signals from our MAINBAND serializers to the other DIE deserializers
        // data lanes
        output                           o_tx_lane_0,
        output                           o_tx_lane_1,
        output                           o_tx_lane_2,
        output                           o_tx_lane_3,
        output                           o_tx_lane_4,
        output                           o_tx_lane_5,
        output                           o_tx_lane_6,
        output                           o_tx_lane_7,
        output                           o_tx_lane_8,
        output                           o_tx_lane_9,
        output                           o_tx_lane_10,
        output                           o_tx_lane_11,
        output                           o_tx_lane_12,
        output                           o_tx_lane_13,
        output                           o_tx_lane_14,
        output                           o_tx_lane_15,
        // valid lane
        output                           o_TVLD_P,

    // output signals from our clock transimitters to the other DIE clock receivers
        output                           o_TCKP,
        output                           o_TCKN,
        output                           o_TTRACK,

    // output signals from our SIDEBAND serializer to the other DIE SIDEBAND deserializer
        output                           o_SB_TXDATA,
        output                           o_SB_TXCLK

);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// INTERNAL SIGNALS //////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /* -------------------------------------------------------------------------- */
    /*                                 data lanes                                 */
    /* -------------------------------------------------------------------------- */
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_0;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_1;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_2;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_3;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_4;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_5;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_6;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_7;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_8;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_9;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_10;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_11;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_12;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_13;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_14;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_15;
        wire    [SER_WIDTH-1:0]  lfsr_tx_lane_16;   

        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_0;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_1;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_2;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_3;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_4;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_5;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_6;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_7;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_8;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_9;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_10;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_11;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_12;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_13;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_14;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_15;
        wire    [SER_WIDTH-1:0]  lfsr_rx_lane_16;   

        wire deser_valid_data;  
        wire serliazer_data_en;

    /* -------------------------------------------------------------------------- */
    /*                                 valid lane                                 */
    /* -------------------------------------------------------------------------- */
        wire    [SER_WIDTH-1:0] TVLD_L;
        wire    [SER_WIDTH-1:0] RVLD_L;
        wire serliazer_valid_en;
        wire deser_valid_val;

    /* -------------------------------------------------------------------------- */
    /*                                 clock lane                                 */
    /* -------------------------------------------------------------------------- */
        wire ckp_gate_en;
        wire RCKP;
        wire RCKN;
        wire RTRACK;

    /* -------------------------------------------------------------------------- */
    /*                                  sideband                                  */
    /* -------------------------------------------------------------------------- */
        wire [63:0] sb_fifo_data;
        wire [63:0] SB_RXDATA;
        wire sb_deser_done_sampled;
        wire sb_packet_finished;
        wire sb_ser_en;
        wire sb_TXCKSB;
        wire SB_deser_done;

    /* -------------------------------------------------------------------------- */
    /*                             hard macro signals                             */
    /* -------------------------------------------------------------------------- */
        wire [2:0] operating_speed;
        wire [3:0] pi_step;
        wire [3:0] reciever_ref_volatge;
        wire mb_pll_en;
        wire diff_or_quad_clk;
        wire mb_clk; // 125MHz (4GHz/32), 250MHz (8GHz/32), 375MHZ (12GHz/32), 500MHz (16GHz/32) 
        wire sb_clk; // 100MHz

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// INSTANTIATIONS ////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*********************************************
     * UNIV_PHY_DIG
    *********************************************/
        UNIV_PHY_DIG #(
            .SER_WIDTH                  (SER_WIDTH), 
            .N_BYTES                    (N_BYTES) 
        ) UNIV_PHY_DIG_inst (
            .i_mb_clk                   (mb_clk), 
            .i_sb_clk                   (sb_clk),
            .i_rst_n                    (i_rst_n),  
        /* -------------------------------------------------------------------------- */
        /*                       Clock lanes  (connected to HM)                       */
        /* -------------------------------------------------------------------------- */
            .i_RCKP                     (RCKP),      
            .i_RCKN                     (RCKN),      
            .i_RTRACK                   (RTRACK),  
            .o_ckp_gate_en              (ckp_gate_en),  
        /* -------------------------------------------------------------------------- */
        /*                        valid lane (connected to HM)                        */
        /* -------------------------------------------------------------------------- */
            .i_RVLD_L                   (RVLD_L), 
            .o_TVLD_L                   (TVLD_L),
        /* -------------------------------------------------------------------------- */
        /*                   Main band data lanes  (connected to HM)                  */
        /* -------------------------------------------------------------------------- */
            .i_lfsr_rx_lane_0           (lfsr_rx_lane_0),
            .i_lfsr_rx_lane_1           (lfsr_rx_lane_1),
            .i_lfsr_rx_lane_2           (lfsr_rx_lane_2),
            .i_lfsr_rx_lane_3           (lfsr_rx_lane_3),
            .i_lfsr_rx_lane_4           (lfsr_rx_lane_4),
            .i_lfsr_rx_lane_5           (lfsr_rx_lane_5),
            .i_lfsr_rx_lane_6           (lfsr_rx_lane_6),
            .i_lfsr_rx_lane_7           (lfsr_rx_lane_7),
            .i_lfsr_rx_lane_8           (lfsr_rx_lane_8),
            .i_lfsr_rx_lane_9           (lfsr_rx_lane_9),
            .i_lfsr_rx_lane_10          (lfsr_rx_lane_10),
            .i_lfsr_rx_lane_11          (lfsr_rx_lane_11),
            .i_lfsr_rx_lane_12          (lfsr_rx_lane_12),
            .i_lfsr_rx_lane_13          (lfsr_rx_lane_13),
            .i_lfsr_rx_lane_14          (lfsr_rx_lane_14),
            .i_lfsr_rx_lane_15          (lfsr_rx_lane_15),
            
            .o_lfsr_tx_lane_0           (lfsr_tx_lane_0),
            .o_lfsr_tx_lane_1           (lfsr_tx_lane_1),
            .o_lfsr_tx_lane_2           (lfsr_tx_lane_2),
            .o_lfsr_tx_lane_3           (lfsr_tx_lane_3),
            .o_lfsr_tx_lane_4           (lfsr_tx_lane_4),
            .o_lfsr_tx_lane_5           (lfsr_tx_lane_5),
            .o_lfsr_tx_lane_6           (lfsr_tx_lane_6),
            .o_lfsr_tx_lane_7           (lfsr_tx_lane_7),
            .o_lfsr_tx_lane_8           (lfsr_tx_lane_8),
            .o_lfsr_tx_lane_9           (lfsr_tx_lane_9),
            .o_lfsr_tx_lane_10          (lfsr_tx_lane_10),
            .o_lfsr_tx_lane_11          (lfsr_tx_lane_11),
            .o_lfsr_tx_lane_12          (lfsr_tx_lane_12),
            .o_lfsr_tx_lane_13          (lfsr_tx_lane_13),
            .o_lfsr_tx_lane_14          (lfsr_tx_lane_14),
            .o_lfsr_tx_lane_15          (lfsr_tx_lane_15),
        /* -------------------------------------------------------------------------- */
        /*                       Hard-Macro related signals (MB)                      */
        /* -------------------------------------------------------------------------- */
            .i_deser_valid_data         (deser_valid_data), 
            .i_deser_valid_val          (deser_valid_val),  
            .o_serliazer_valid_en       (serliazer_valid_en), 
            .o_serliazer_data_en        (serliazer_data_en),  
            .o_diff_or_quad_clk         (diff_or_quad_clk),
            .o_mb_pll_en                (mb_pll_en),
            .o_reciever_ref_volatge     (reciever_ref_volatge),
            .o_pi_step                  (pi_step),
            .o_curret_operating_speed   (operating_speed),
        /* -------------------------------------------------------------------------- */
        /*                       Hard-Macro related signals (SB)                      */
        /* -------------------------------------------------------------------------- */
            .i_sb_deser_done            (SB_deser_done),
            .i_sb_deser_data            (SB_RXDATA),
            .o_sb_fifo_data             (sb_fifo_data),
            .o_sb_ser_en                (sb_ser_en),
        /* -------------------------------------------------------------------------- */
        /*                            Adapter RDI Interface                           */
        /* -------------------------------------------------------------------------- */
            .i_lp_irdy                  (i_lp_irdy),
            .i_lp_valid                 (i_lp_valid),
            .i_lp_data                  (i_lp_data),             
            .i_lp_state_req             (i_lp_state_req),
            .i_lp_linkerror             (i_lp_linkerror),
            .i_lp_stallack              (i_lp_stallack),
            .i_lp_clk_ack               (i_lp_clk_ack),
            .i_lp_wake_req              (i_lp_wake_req),
            .i_lp_cfg                   (i_lp_cfg),
            .i_lp_cfg_vld               (i_lp_cfg_vld),
            .i_lp_cfg_crd               (i_lp_cfg_crd),
            .o_pl_trdy                  (o_pl_trdy), 
            .o_pl_valid                 (o_pl_valid),
            .o_pl_data                  (o_pl_data), 
            .o_pl_state_sts             (o_pl_state_sts),
            .o_pl_inband_pres           (o_pl_inband_pres),
            .o_pl_error                 (o_pl_error),
            .o_pl_nferror               (o_pl_nferror),
            .o_pl_trainerror            (o_pl_trainerror),
            .o_pl_stallreq              (o_pl_stallreq),
            .o_pl_speedmode             (o_pl_speedmode),
            .o_pl_lnk_cfg               (o_pl_lnk_cfg),
            .o_pl_clk_req               (o_pl_clk_req),
            .o_pl_wake_ack              (o_pl_wake_ack),
            .o_pl_cfg                   (o_pl_cfg),
            .o_pl_cfg_vld               (o_pl_cfg_vld),
            .o_pl_cfg_crd               (o_pl_cfg_crd),
        /*-----------------------------------------------------------------------*/
            .i_lp_retimer_crd           (i_lp_retimer_crd),   // NOT USED, IGNORE
            .o_pl_retimer_crd           (o_pl_retimer_crd),   // NOT USED, IGNORE
            .o_pl_cerror                (o_pl_cerror),        // NOT USED, IGNORE
            .o_pl_phyinrecenter         (o_pl_phyinrecenter)  // NOT USED, IGNORE
        /*-----------------------------------------------------------------------*/
        );

    /*********************************************
     * UNIV_PHY_HM
    *********************************************/
        UNIV_PHY_HM #(
            .MB_SER_WIDTH   (SER_WIDTH)
        ) UNIV_PHY_HM_inst (
        /* -------------------------------------------------------------------------- */
        /*                                 data lanes                                 */
        /* -------------------------------------------------------------------------- */
        // connected to digital mainband
            .i_serliazer_data_en        (serliazer_data_en), 
            .i_lfsr_tx_lane_0           (lfsr_tx_lane_0),
            .i_lfsr_tx_lane_1           (lfsr_tx_lane_1),
            .i_lfsr_tx_lane_2           (lfsr_tx_lane_2),
            .i_lfsr_tx_lane_3           (lfsr_tx_lane_3),
            .i_lfsr_tx_lane_4           (lfsr_tx_lane_4),
            .i_lfsr_tx_lane_5           (lfsr_tx_lane_5),
            .i_lfsr_tx_lane_6           (lfsr_tx_lane_6),
            .i_lfsr_tx_lane_7           (lfsr_tx_lane_7),
            .i_lfsr_tx_lane_8           (lfsr_tx_lane_8),
            .i_lfsr_tx_lane_9           (lfsr_tx_lane_9),
            .i_lfsr_tx_lane_10          (lfsr_tx_lane_10),
            .i_lfsr_tx_lane_11          (lfsr_tx_lane_11),
            .i_lfsr_tx_lane_12          (lfsr_tx_lane_12),
            .i_lfsr_tx_lane_13          (lfsr_tx_lane_13),
            .i_lfsr_tx_lane_14          (lfsr_tx_lane_14),
            .i_lfsr_tx_lane_15          (lfsr_tx_lane_15),

            .o_deser_valid_data         (deser_valid_data), 
            .o_lfsr_rx_lane_0           (lfsr_rx_lane_0),
            .o_lfsr_rx_lane_1           (lfsr_rx_lane_1),
            .o_lfsr_rx_lane_2           (lfsr_rx_lane_2),
            .o_lfsr_rx_lane_3           (lfsr_rx_lane_3),
            .o_lfsr_rx_lane_4           (lfsr_rx_lane_4),
            .o_lfsr_rx_lane_5           (lfsr_rx_lane_5),
            .o_lfsr_rx_lane_6           (lfsr_rx_lane_6),
            .o_lfsr_rx_lane_7           (lfsr_rx_lane_7),
            .o_lfsr_rx_lane_8           (lfsr_rx_lane_8),
            .o_lfsr_rx_lane_9           (lfsr_rx_lane_9),
            .o_lfsr_rx_lane_10          (lfsr_rx_lane_10),
            .o_lfsr_rx_lane_11          (lfsr_rx_lane_11),
            .o_lfsr_rx_lane_12          (lfsr_rx_lane_12),
            .o_lfsr_rx_lane_13          (lfsr_rx_lane_13),
            .o_lfsr_rx_lane_14          (lfsr_rx_lane_14),
            .o_lfsr_rx_lane_15          (lfsr_rx_lane_15),
        // connected to ser/deser
            .i_rx_lane_0                (i_rx_lane_0),
            .i_rx_lane_1                (i_rx_lane_1),
            .i_rx_lane_2                (i_rx_lane_2),
            .i_rx_lane_3                (i_rx_lane_3),
            .i_rx_lane_4                (i_rx_lane_4),
            .i_rx_lane_5                (i_rx_lane_5),
            .i_rx_lane_6                (i_rx_lane_6),
            .i_rx_lane_7                (i_rx_lane_7),
            .i_rx_lane_8                (i_rx_lane_8),
            .i_rx_lane_9                (i_rx_lane_9),
            .i_rx_lane_10               (i_rx_lane_10),
            .i_rx_lane_11               (i_rx_lane_11),
            .i_rx_lane_12               (i_rx_lane_12),
            .i_rx_lane_13               (i_rx_lane_13),
            .i_rx_lane_14               (i_rx_lane_14),
            .i_rx_lane_15               (i_rx_lane_15),

            .o_tx_lane_0                (o_tx_lane_0),
            .o_tx_lane_1                (o_tx_lane_1),
            .o_tx_lane_2                (o_tx_lane_2),
            .o_tx_lane_3                (o_tx_lane_3),
            .o_tx_lane_4                (o_tx_lane_4),
            .o_tx_lane_5                (o_tx_lane_5),
            .o_tx_lane_6                (o_tx_lane_6),
            .o_tx_lane_7                (o_tx_lane_7),
            .o_tx_lane_8                (o_tx_lane_8),
            .o_tx_lane_9                (o_tx_lane_9),
            .o_tx_lane_10               (o_tx_lane_10),
            .o_tx_lane_11               (o_tx_lane_11),
            .o_tx_lane_12               (o_tx_lane_12),
            .o_tx_lane_13               (o_tx_lane_13),
            .o_tx_lane_14               (o_tx_lane_14),
            .o_tx_lane_15               (o_tx_lane_15),
        /* -------------------------------------------------------------------------- */
        /*                                 valid lane                                 */
        /* -------------------------------------------------------------------------- */
        // connected to digital mainband
            .i_serliazer_valid_en       (serliazer_valid_en), 
            .i_TVLD_L                   (TVLD_L),
            .o_deser_valid_val          (deser_valid_val), 
            .o_RVLD_L                   (RVLD_L),
        // connected to ser/deser
            .i_RVLD_P                   (i_RVLD_P),
            .o_TVLD_P                   (o_TVLD_P),
        /* -------------------------------------------------------------------------- */
        /*                                 clock lane                                 */
        /* -------------------------------------------------------------------------- */
        // connected to digital mainband
            .i_ckp_gate_en              (ckp_gate_en),
            .o_RCKP                     (RCKP),
            .o_RCKN                     (RCKN),
            .o_RTRACK                   (RTRACK),
        // connected to ser/deser
            .i_CKP                      (i_CKP),
            .i_CKN                      (i_CKN),
            .i_TRACK                    (i_TRACK),
            .o_TCKP                     (o_TCKP),
            .o_TCKN                     (o_TCKN),
            .o_TTRACK                   (o_TTRACK),
        /* -------------------------------------------------------------------------- */
        /*                                  sideband                                  */
        /* -------------------------------------------------------------------------- */
        // connected to digital sideband
            .i_sb_fifo_data             (sb_fifo_data),
            .i_sb_ser_en                (sb_ser_en),
            .o_SB_RXDATA                (SB_RXDATA),
            .o_SB_deser_done            (SB_deser_done),
        // connected to ser/deser
            .i_SB_RXDATA                (i_SB_RXDATA),
            .i_SB_RXCLK                 (i_SB_RXCLK),
            .o_SB_TXDATA                (o_SB_TXDATA),
            .o_SB_TXCLK                 (o_SB_TXCLK),
        /* -------------------------------------------------------------------------- */
        /*                                   others                                   */
        /* -------------------------------------------------------------------------- */
            .i_mb_pll_en                (mb_pll_en),
            .i_curret_operating_speed   (operating_speed),
            .i_pi_step                  (pi_step),
            .i_rst_n                    (i_rst_n),   
        /* -------------------------------------------------------------------------- */
            .i_reciever_ref_volatge     (reciever_ref_volatge),  // NOT USED, IGNORE
            .i_diff_or_quad_clk         (diff_or_quad_clk),     // NOT USED, IGNORE
        /* -------------------------------------------------------------------------- */
            .o_mb_clk                   (mb_clk),
            .o_sb_clk                   (sb_clk)
        );


endmodule
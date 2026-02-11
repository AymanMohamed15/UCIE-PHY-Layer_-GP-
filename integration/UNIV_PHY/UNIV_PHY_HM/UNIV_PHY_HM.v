`timescale 1ps/1ps
module UNIV_PHY_HM #(
    parameter MB_SER_WIDTH = 32
) (
/*********************************************
 * INPUTS
*********************************************/
// input signals for MAINBAND to MAINBAND serializer
    // data lanes
    input                           i_serliazer_data_en,  // data  lane serializer enable
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_0,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_1,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_2,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_3,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_4,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_5,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_6,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_7,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_8,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_9,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_10,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_11,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_12,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_13,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_14,
    input     [MB_SER_WIDTH-1:0]    i_lfsr_tx_lane_15,
    // valid lane
    input                           i_serliazer_valid_en, // valid lane serializer enable
    input     [MB_SER_WIDTH-1:0]    i_TVLD_L,

// input signals from the other DIE to MAINBAND deserializer
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

// input signals for clocks from MAINBAND 
    input                           i_ckp_gate_en,

// input signals for clocks from the other DIE
    input                           i_CKP,
    input                           i_CKN,
    input                           i_TRACK,

// input signals for pll
    input                           i_mb_pll_en,
    input     [2:0]                 i_curret_operating_speed,

// input signals for PI
    input     [3:0]                 i_pi_step,

// input signals from SIDEBAND to SIDEBAND ser/deser
    input     [63:0]                i_sb_fifo_data,
    input                           i_sb_ser_en,

// input signals from the other DIE to SIDEBAND deserializer
    input                           i_SB_RXDATA,
    input                           i_SB_RXCLK,

// others
    input                           i_rst_n,   
    /* -------------------------------------------------------------------------- */
    input     [3:0]                 i_reciever_ref_volatge,  // NOT USED, IGNORE
    input                           i_diff_or_quad_clk,      // NOT USED, IGNORE
    /* -------------------------------------------------------------------------- */

/*********************************************
 * OUTPUTS
*********************************************/
// output signals from MAINBAND Deserializer to MAINBAND
    // data lanes
    output                                 o_deser_valid_data, // a valid signal from data  lane deserializer
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_0,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_1,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_2,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_3,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_4,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_5,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_6,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_7,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_8,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_9,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_10,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_11,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_12,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_13,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_14,
    output       [MB_SER_WIDTH-1:0]        o_lfsr_rx_lane_15,
    // valid lane
    output                              o_deser_valid_val, // valid lane serializer enable
    output       [MB_SER_WIDTH-1:0]     o_RVLD_L,

// output signals from MAINBAND serializers to the other DIE
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

// output signals for clocks to the MAIBAND after receiving the clock from the other DIE
    output                           o_RCKP,
    output                           o_RCKN,
    output                           o_RTRACK,

// output signals for clocks to the other DIE (just by-passed)
    output                           o_TCKP,
    output                           o_TCKN,
    output                           o_TTRACK,

// output signals from SIDEBAND serializer to the other die
    output                           o_SB_TXDATA,
    output                           o_SB_TXCLK,

// output signals from SIDEBAND deserializer to the SIDEBAND
    output     [63:0]                o_SB_RXDATA,
    output                           o_SB_deser_done,

// system clocks
    output                           o_mb_clk,
    output                           o_sb_clk
);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// INTERNAL SIGNALS //////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*-------------------------------
     * PLL/PI related
    -------------------------------*/
        real pll_mb_clk_period;
        wire pll_mb_clk;
        reg  pll_sb_clk;
        wire pi_mb_clk;
        reg  ckp;
        wire ckn = ~ckp;
        reg TCKN_comb;

    /*-------------------------------
     * mb serializer related
    -------------------------------*/
        wire [MB_SER_WIDTH-1:0] tx_to_rx_lane [0:15];
        wire TXDATA [0:15];

    /*-------------------------------
     * mb deserializer related
    -------------------------------*/
        wire [MB_SER_WIDTH-1:0] rx_to_tx_lane [0:15]; 
        wire [0:15] de_ser_done_array;
        wire RXDATA [0:15];

    /*-------------------------------
     * valid deserializer related
    -------------------------------*/
        wire valid_frame_is_captured;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// ASSIGN STATMENTS //////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /* -------------------------------------------------------------------------- */
    /*                       from mainband to the other die                       */
    /* -------------------------------------------------------------------------- */
        assign o_TCKP   =  i_ckp_gate_en & ckp;
        always @ (*) begin
            if (i_ckp_gate_en) TCKN_comb = ckn;
            else begin
            // to avoid glitshing in waveform (just modelling)
                @(negedge ckn);
                TCKN_comb = 0;
            end
        end
        assign o_TCKN   =  TCKN_comb;
        assign o_TTRACK =  o_TCKP;

    /* -------------------------------------------------------------------------- */
    /*                               for serializers                              */
    /* -------------------------------------------------------------------------- */
        // inputs to serializer
        assign tx_to_rx_lane [0]  = i_lfsr_tx_lane_0;
        assign tx_to_rx_lane [1]  = i_lfsr_tx_lane_1;
        assign tx_to_rx_lane [2]  = i_lfsr_tx_lane_2;
        assign tx_to_rx_lane [3]  = i_lfsr_tx_lane_3;
        assign tx_to_rx_lane [4]  = i_lfsr_tx_lane_4;
        assign tx_to_rx_lane [5]  = i_lfsr_tx_lane_5;
        assign tx_to_rx_lane [6]  = i_lfsr_tx_lane_6;
        assign tx_to_rx_lane [7]  = i_lfsr_tx_lane_7;
        assign tx_to_rx_lane [8]  = i_lfsr_tx_lane_8;
        assign tx_to_rx_lane [9]  = i_lfsr_tx_lane_9;
        assign tx_to_rx_lane [10] = i_lfsr_tx_lane_10;
        assign tx_to_rx_lane [11] = i_lfsr_tx_lane_11;
        assign tx_to_rx_lane [12] = i_lfsr_tx_lane_12;
        assign tx_to_rx_lane [13] = i_lfsr_tx_lane_13;
        assign tx_to_rx_lane [14] = i_lfsr_tx_lane_14;
        assign tx_to_rx_lane [15] = i_lfsr_tx_lane_15;
        // outputs from serializer
        assign o_tx_lane_0  = TXDATA [0];
        assign o_tx_lane_1  = TXDATA [1];
        assign o_tx_lane_2  = TXDATA [2];
        assign o_tx_lane_3  = TXDATA [3];
        assign o_tx_lane_4  = TXDATA [4];
        assign o_tx_lane_5  = TXDATA [5];
        assign o_tx_lane_6  = TXDATA [6];
        assign o_tx_lane_7  = TXDATA [7];
        assign o_tx_lane_8  = TXDATA [8];
        assign o_tx_lane_9  = TXDATA [9];
        assign o_tx_lane_10 = TXDATA [10];
        assign o_tx_lane_11 = TXDATA [11];
        assign o_tx_lane_12 = TXDATA [12];
        assign o_tx_lane_13 = TXDATA [13];
        assign o_tx_lane_14 = TXDATA [14];
        assign o_tx_lane_15 = TXDATA [15];

    /* -------------------------------------------------------------------------- */
    /*                              for deserializers                             */
    /* -------------------------------------------------------------------------- */
        assign o_deser_valid_data = & de_ser_done_array;
        // inputs to deserializer 
        assign RXDATA [0] = i_rx_lane_0;
        assign RXDATA [1] = i_rx_lane_1;
        assign RXDATA [2] = i_rx_lane_2;
        assign RXDATA [3] = i_rx_lane_3;
        assign RXDATA [4] = i_rx_lane_4;
        assign RXDATA [5] = i_rx_lane_5;
        assign RXDATA [6] = i_rx_lane_6;
        assign RXDATA [7] = i_rx_lane_7;
        assign RXDATA [8] = i_rx_lane_8;
        assign RXDATA [9] = i_rx_lane_9;
        assign RXDATA [10] = i_rx_lane_10;
        assign RXDATA [11] = i_rx_lane_11;
        assign RXDATA [12] = i_rx_lane_12;
        assign RXDATA [13] = i_rx_lane_13;
        assign RXDATA [14] = i_rx_lane_14;
        assign RXDATA [15] = i_rx_lane_15;
        // outputs from deserializer
        assign o_lfsr_rx_lane_0  = rx_to_tx_lane [0];
        assign o_lfsr_rx_lane_1  = rx_to_tx_lane [1];
        assign o_lfsr_rx_lane_2  = rx_to_tx_lane [2];
        assign o_lfsr_rx_lane_3  = rx_to_tx_lane [3];
        assign o_lfsr_rx_lane_4  = rx_to_tx_lane [4];
        assign o_lfsr_rx_lane_5  = rx_to_tx_lane [5];
        assign o_lfsr_rx_lane_6  = rx_to_tx_lane [6];
        assign o_lfsr_rx_lane_7  = rx_to_tx_lane [7];
        assign o_lfsr_rx_lane_8  = rx_to_tx_lane [8];
        assign o_lfsr_rx_lane_9  = rx_to_tx_lane [9];
        assign o_lfsr_rx_lane_10 = rx_to_tx_lane [10];
        assign o_lfsr_rx_lane_11 = rx_to_tx_lane [11];
        assign o_lfsr_rx_lane_12 = rx_to_tx_lane [12];
        assign o_lfsr_rx_lane_13 = rx_to_tx_lane [13];
        assign o_lfsr_rx_lane_14 = rx_to_tx_lane [14];
        assign o_lfsr_rx_lane_15 = rx_to_tx_lane [15];

    /* -------------------------------------------------------------------------- */
    /*                              for clock divider                             */
    /* -------------------------------------------------------------------------- */
        wire dig_clk;
        wire sb_clk;
        assign o_mb_clk = dig_clk;
        assign o_sb_clk = sb_clk;
   
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// INSTANTIATIONS ////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*********************************************
     * MB PLL
    *********************************************/
        PLL pll_mb (
            .en         (i_mb_pll_en),
            .speed_sel  (i_curret_operating_speed[1:0]),
            .clk        (pll_mb_clk),
            .period     (pll_mb_clk_period)
        );

    /*********************************************
     * SB PLL
    *********************************************/
        initial begin
            pll_sb_clk = 0;
            forever begin
                #625 pll_sb_clk = ~ pll_sb_clk; // 800 MHz clock
            end
        end

    /*********************************************
     * PI
    *********************************************/
        PI pi_mb (
            .period     (pll_mb_clk_period),
            .clk        (pll_mb_clk),
            .step_sel   (i_pi_step),
            .o_clk      (pi_mb_clk)
        );

    /*********************************************
     * DIVIDING CKP/CKN/TRACK for MB
    *********************************************/
        clock_div_32 #(.STAGES(8)) clk_div_16_ckp ( // clock divider by 16 not 32
            .i_clk      (i_CKP),      
            .i_rst_n    (i_rst_n),
            .o_div_clk  (o_RCKP)
        );
        clock_div_32 #(.STAGES(8)) clk_div_16_ckn ( // clock divider by 16 not 32
            .i_clk      (i_CKN),      
            .i_rst_n    (i_rst_n),
            .o_div_clk  (o_RCKN)
        );
        clock_div_32 #(.STAGES(8)) clk_div_16_trk ( // clock divider by 16 not 32
            .i_clk      (i_TRACK),      
            .i_rst_n    (i_rst_n),
            .o_div_clk  (o_RTRACK)
        );

    /*********************************************
     * MB SERIALIZERS
    *********************************************/
        generate
            genvar i;
            for (i = 0; i < 16; i = i + 1) begin : serializer_gen
                SERIALIZER ser (
                    .i_rst_n  			(i_rst_n),
                    .i_pll_clk 			(pll_mb_clk), // clock from the pll not pi
                    .i_mb_clk           (dig_clk),
                    .i_data_in  		(tx_to_rx_lane[i]),
                    .i_enable 			(i_serliazer_data_en),
                    .TXDATA				(TXDATA[i])
                );
            end
        endgenerate

    /*********************************************
     * MB DESERIALIZERS
    *********************************************/
        generate
            genvar  j;
            for (j = 0; j < 16; j = j + 1) begin : deserializer_gen
                DESER deser (
                    .i_rst_n              (i_rst_n),
                    .MB_clk               (dig_clk),
                    .pll_clk              (pll_mb_clk),
                    .i_ckp                (i_CKP),
                    .i_ckn      		  (i_CKN),
                    .ser_data_in          (RXDATA[j]),
                    .par_data_out         (rx_to_tx_lane[j]),
                    .de_ser_done          (de_ser_done_array[j]),
                    .ser_valid            (valid_frame_is_captured)
                );
            end
        endgenerate

    /*********************************************
     * VALID SERIALIZER
    *********************************************/
        SERIALIZER valid_ser (
            .i_rst_n 				(i_rst_n),
            .i_pll_clk 				(pll_mb_clk),
            .i_mb_clk               (dig_clk),
            .i_data_in 				(i_TVLD_L),
            .i_enable 				(i_serliazer_valid_en),
            .TXDATA 				(o_TVLD_P)
        );

    /*********************************************
     * VALID DESERIALIZER
    *********************************************/
        valid_deserializer valid_deser (
            .MB_clk             (dig_clk),
            .pll_clk            (pll_mb_clk),
            .ckp                (i_CKP),
            .ckn                (i_CKN),
            .rst_n              (i_rst_n),
            .serial_in          (i_RVLD_P),
            .data_out           (o_RVLD_L),
            .data_valid         (o_deser_valid_val),
            .data_deser_done    (valid_frame_is_captured)
        );

    /*********************************************
     * CKP CLOCK DIVIDER 
    *********************************************/
        always @ (posedge pi_mb_clk or negedge i_rst_n) begin
            if (~i_rst_n) begin
                ckp <= 0;
            end else begin
                ckp <= ~ckp;
            end
        end

    /*********************************************
     * MB DIGITAL DOMAIN CLOCK 
    *********************************************/
        clock_div_32 #(.STAGES(16)) clk_div_32 ( 
            .i_clk      (pll_mb_clk),      
            .i_rst_n    (i_rst_n),
            .o_div_clk  (dig_clk)
        );

    /*********************************************
     * SB DIGITAL DOMAIN CLOCK 
    *********************************************/
        clock_div_32 #(.STAGES(4)) clk_div_8( // divide by 8 not 32
            .i_clk      (pll_sb_clk),      
            .i_rst_n    (i_rst_n),
            .o_div_clk  (sb_clk)
        );

    /*********************************************
     * SB SERIALIZER
    *********************************************/
        SB_TX_SERIALIZER sb_data_serializer (
            .i_pll_clk          (pll_sb_clk),
            .i_sb_clk           (sb_clk),
            .i_rst_n            (i_rst_n),
            .i_data_in          (i_sb_fifo_data),                
            .i_enable           (i_sb_ser_en),
            .TXDATASB           (o_SB_TXDATA)                   
        );

        // modelling SB clock generation
        reg ser_en_int;
        initial ser_en_int = 0;
        always @(posedge sb_data_serializer.i_enable_reg) begin
            @(posedge pll_sb_clk);
            ser_en_int = 1;
        end
        always @(negedge i_sb_ser_en) begin
            repeat (2) @(negedge pll_sb_clk);
            ser_en_int = 0;
        end
        assign o_SB_TXCLK = pll_sb_clk & ser_en_int;

    /*********************************************
     * SB DESERIALIZER
    *********************************************/
        SB_RX_DESERIALIZER sb_deserializer (
            .i_clk                  (i_SB_RXCLK),
            .i_clk_pll              (pll_sb_clk),
            .i_sb_clk               (sb_clk),
            .i_rst_n                (i_rst_n),
            .ser_data_in            (i_SB_RXDATA),
            .par_data_out           (o_SB_RXDATA),
            .de_ser_done            (o_SB_deser_done)
        );

endmodule
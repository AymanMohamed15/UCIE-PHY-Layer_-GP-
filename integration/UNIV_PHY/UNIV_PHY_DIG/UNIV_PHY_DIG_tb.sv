`timescale 1ns/1ps

module UNIV_PHY_DIG_tb;

// Parameters
    parameter SER_WIDTH = 32;

// Clock and reset
    bit i_pll_mb_clk, i_pll_sb_clk, i_rst_n;

// 4GHz Clock Generator (period = 0.25ns)
    initial begin
        i_pll_mb_clk = 0;
        forever #0.125 i_pll_mb_clk = ~i_pll_mb_clk;
    end
// 800MHz Clock Generator (period = 1.25ns)
    initial begin
        i_pll_sb_clk = 0;
        forever #0.625 i_pll_sb_clk = ~i_pll_sb_clk;
    end
    initial begin
        i_rst_n = 0;
        #100;
        i_rst_n = 1;
    end

    wire lclk = phy0.RDI_TOP_inst.lclk;

// Mainband RX/TX signals for both PHYs
    bit [SER_WIDTH-1:0] phy0_tx_lane [0:15], phy1_tx_lane [0:15];
    bit [SER_WIDTH-1:0] phy0_rx_lane [0:15], phy1_rx_lane [0:15];
    bit [SER_WIDTH-1:0] phy0_tvld_l, phy1_tvld_l;
    bit [SER_WIDTH-1:0] phy0_rvld_l, phy1_rvld_l;

// Clock lanes
    bit phy0_o_CKP, phy0_o_CKN, phy0_o_TRACK;
    bit phy1_o_CKP, phy1_o_CKN, phy1_o_TRACK;

// Hard-Macro related signals (MB)
    bit deser_valid_data_0, deser_valid_data_1;
    bit deser_valid_val_0, deser_valid_val_1;
    
// Hard-Macro related signals (SB)
    bit        sb_deser_done_0, sb_deser_done_1;
    bit [63:0] sb_deser_data_0, sb_deser_data_1;
    
// Adapter RDI Interface signals
    bit lp_irdy_0, lp_irdy_1;
    bit lp_valid_0, lp_valid_1;
    bit [511:0] lp_data_0, lp_data_1;
    bit [3:0] lp_state_req_0, lp_state_req_1;
    bit lp_linkerror_0, lp_linkerror_1;
    bit lp_stallack_0, lp_stallack_1;
    bit lp_clk_ack_0, lp_clk_ack_1;
    bit lp_wake_req_0, lp_wake_req_1;
    bit [31:0] lp_cfg_0, lp_cfg_1;
    bit lp_cfg_vld_0, lp_cfg_vld_1;
    bit lp_cfg_crd_0, lp_cfg_crd_1;
    bit lp_retimer_crd_0, lp_retimer_crd_1;

// Hard-Macro related signals (MB) - outputs
    // PHY 0 outputs
    bit o_serliazer_valid_en_0, o_serliazer_data_en_0;
    bit o_diff_or_quad_clk_0;
    bit [3:0] o_reciever_ref_volatge_0;
    bit [3:0] o_pi_step_0;
    bit [2:0] o_curret_operating_speed_0;
    
    // PHY 1 outputs
    bit o_serliazer_valid_en_1, o_serliazer_data_en_1;
    bit o_diff_or_quad_clk_1;
    bit [3:0] o_reciever_ref_volatge_1;
    bit [3:0] o_pi_step_1;
    bit [2:0] o_curret_operating_speed_1;

// Hard-Macro related signals (SB) - outputs
    // PHY 0 outputs
    bit o_sb_ser_done_sampled_0;
    bit o_sb_deser_done_sampled_0;
    bit [63:0] o_sb_fifo_data_0;
    bit o_sb_packet_finished_0;
    bit o_sb_ser_en_0;
    bit o_sb_TXCKSB_0;
    
    // PHY 1 outputs
    bit o_sb_ser_done_sampled_1;
    bit o_sb_deser_done_sampled_1;
    bit [63:0] o_sb_fifo_data_1;
    bit o_sb_packet_finished_1;
    bit o_sb_ser_en_1;
    bit o_sb_TXCKSB_1;

// Adapter RDI Interface - outputs
    // PHY 0 outputs
    bit o_pl_trdy_0;
    bit o_pl_valid_0;
    bit [511:0] o_pl_data_0;
    bit [3:0] o_pl_state_sts_0;
    bit o_pl_inband_pres_0;
    bit o_pl_error_0;
    bit o_pl_nferror_0;
    bit o_pl_trainerror_0;
    bit o_pl_stallreq_0;
    bit [2:0] o_pl_speedmode_0;
    bit [2:0] o_pl_lnk_cfg_0;
    bit o_pl_clk_req_0;
    bit o_pl_wake_ack_0;
    bit [31:0] o_pl_cfg_0;
    bit o_pl_cfg_vld_0;
    bit o_pl_cfg_crd_0;
    bit o_pl_retimer_crd_0;
    bit o_pl_cerror_0;
    bit o_pl_phyinrecenter_0;
    
    // PHY 1 outputs
    bit o_pl_trdy_1;
    bit o_pl_valid_1;
    bit [511:0] o_pl_data_1;
    bit [3:0] o_pl_state_sts_1;
    bit o_pl_inband_pres_1;
    bit o_pl_error_1;
    bit o_pl_nferror_1;
    bit o_pl_trainerror_1;
    bit o_pl_stallreq_1;
    bit [2:0] o_pl_speedmode_1;
    bit [2:0] o_pl_lnk_cfg_1;
    bit o_pl_clk_req_1;
    bit o_pl_wake_ack_1;
    bit [31:0] o_pl_cfg_1;
    bit o_pl_cfg_vld_1;
    bit o_pl_cfg_crd_1;
    bit o_pl_retimer_crd_1;
    bit o_pl_cerror_1;
    bit o_pl_phyinrecenter_1;

// others
    string encoded_rdi_message_0, decoded_rdi_message_0;
    string encoded_rdi_message_1, decoded_rdi_message_1;
    bit SB_SER_DATA_0, SB_SER_DATA_1; // Serialized data outputs for the Hard-Macro

// Connect TX of one PHY to RX of the other
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin
            assign phy0_rx_lane[i] = phy1_tx_lane[i];
            assign phy1_rx_lane[i] = phy0_tx_lane[i];
        end
    endgenerate
    // TAKE NOTE THAT YOU HERE DO THAT FOR THE VALID LANES BUT FOR THE CLK I CONNECT THEM DIRECTLY
    assign phy0_rvld_l = phy1_tvld_l;
    assign phy1_rvld_l = phy0_tvld_l;

// Internal signals for debugging
string sub_state_1, sub_state_2;
string i_rx_msg_no_string_1, i_rx_msg_no_string_2;
string o_tx_msg_no_string_1, o_tx_msg_no_string_2;

// Instantiate PHY 0
    UNIV_PHY_DIG #(.SER_WIDTH(SER_WIDTH), .N_BYTES(64)) phy0 (
        // Clocks and resets
        .i_pll_mb_clk(i_pll_mb_clk),
        .i_pll_sb_clk(i_pll_sb_clk),
        .i_rst_n(i_rst_n),

        // Clock lanes input
        .i_RCKP(phy1_o_CKP),
        .i_RCKN(phy1_o_CKN),
        .i_RTRACK(phy1_o_TRACK),

        // Valid lane (connected to HM de-serializer)
        .i_RVLD_L(phy0_rvld_l),

        // Main band data lanes (connected to HM de-serializers)
        .i_lfsr_rx_lane_0(phy0_rx_lane[0]),
        .i_lfsr_rx_lane_1(phy0_rx_lane[1]),
        .i_lfsr_rx_lane_2(phy0_rx_lane[2]),
        .i_lfsr_rx_lane_3(phy0_rx_lane[3]),
        .i_lfsr_rx_lane_4(phy0_rx_lane[4]),
        .i_lfsr_rx_lane_5(phy0_rx_lane[5]),
        .i_lfsr_rx_lane_6(phy0_rx_lane[6]),
        .i_lfsr_rx_lane_7(phy0_rx_lane[7]),
        .i_lfsr_rx_lane_8(phy0_rx_lane[8]),
        .i_lfsr_rx_lane_9(phy0_rx_lane[9]),
        .i_lfsr_rx_lane_10(phy0_rx_lane[10]),
        .i_lfsr_rx_lane_11(phy0_rx_lane[11]),
        .i_lfsr_rx_lane_12(phy0_rx_lane[12]),
        .i_lfsr_rx_lane_13(phy0_rx_lane[13]),
        .i_lfsr_rx_lane_14(phy0_rx_lane[14]),
        .i_lfsr_rx_lane_15(phy0_rx_lane[15]),

        // Hard-Macro related signals (MB)
        .i_deser_valid_data(deser_valid_data_0),
        .i_deser_valid_val(deser_valid_val_0), 

        // Hard-Macro related signals (SB)
        .i_sb_deser_done(sb_deser_done_0),   
        .i_sb_deser_data(sb_deser_data_0),   

        // Adapter RDI Interface
        .i_lp_irdy(lp_irdy_0),
        .i_lp_valid(lp_valid_0),
        .i_lp_data(lp_data_0),
        .i_lp_state_req(lp_state_req_0),
        .i_lp_linkerror(lp_linkerror_0),
        .i_lp_stallack(lp_stallack_0),
        .i_lp_clk_ack(lp_clk_ack_0),
        .i_lp_wake_req(lp_wake_req_0),
        .i_lp_cfg(lp_cfg_0),
        .i_lp_cfg_vld(lp_cfg_vld_0),
        .i_lp_cfg_crd(lp_cfg_crd_0),
        .i_lp_retimer_crd(lp_retimer_crd_0),

        // Outputs
        .o_CKP(phy0_o_CKP),
        .o_CKN(phy0_o_CKN),
        .o_TRACK(phy0_o_TRACK),
        .o_TVLD_L(phy0_tvld_l),
        .o_lfsr_tx_lane_0(phy0_tx_lane[0]),
        .o_lfsr_tx_lane_1(phy0_tx_lane[1]),
        .o_lfsr_tx_lane_2(phy0_tx_lane[2]),
        .o_lfsr_tx_lane_3(phy0_tx_lane[3]),
        .o_lfsr_tx_lane_4(phy0_tx_lane[4]),
        .o_lfsr_tx_lane_5(phy0_tx_lane[5]),
        .o_lfsr_tx_lane_6(phy0_tx_lane[6]),
        .o_lfsr_tx_lane_7(phy0_tx_lane[7]),
        .o_lfsr_tx_lane_8(phy0_tx_lane[8]),
        .o_lfsr_tx_lane_9(phy0_tx_lane[9]),
        .o_lfsr_tx_lane_10(phy0_tx_lane[10]),
        .o_lfsr_tx_lane_11(phy0_tx_lane[11]),
        .o_lfsr_tx_lane_12(phy0_tx_lane[12]),
        .o_lfsr_tx_lane_13(phy0_tx_lane[13]),
        .o_lfsr_tx_lane_14(phy0_tx_lane[14]),
        .o_lfsr_tx_lane_15(phy0_tx_lane[15]),

        // Hard-Macro related signals (MB)
        .o_serliazer_valid_en(o_serliazer_valid_en_0), 
        .o_serliazer_data_en(o_serliazer_data_en_0),  
        .o_diff_or_quad_clk(o_diff_or_quad_clk_0),
        .o_reciever_ref_volatge(o_reciever_ref_volatge_0),
        .o_pi_step(o_pi_step_0),
        .o_curret_operating_speed(o_curret_operating_speed_0),

        // Hard-Macro related signals (SB)
        .o_sb_deser_done_sampled(o_sb_deser_done_sampled_0),
        .o_sb_fifo_data(o_sb_fifo_data_0),
        .o_sb_packet_finished(o_sb_packet_finished_0),
        .o_sb_ser_en(o_sb_ser_en_0),
        .o_sb_TXCKSB(o_sb_TXCKSB_0),

        // Adapter RDI Interface
        .o_pl_trdy(o_pl_trdy_0),
        .o_pl_valid(o_pl_valid_0),
        .o_pl_data(o_pl_data_0),
        .o_pl_state_sts(o_pl_state_sts_0),
        .o_pl_inband_pres(o_pl_inband_pres_0),
        .o_pl_error(o_pl_error_0),
        .o_pl_nferror(o_pl_nferror_0),
        .o_pl_trainerror(o_pl_trainerror_0),
        .o_pl_stallreq(o_pl_stallreq_0),
        .o_pl_speedmode(o_pl_speedmode_0),
        .o_pl_lnk_cfg(o_pl_lnk_cfg_0),
        .o_pl_clk_req(o_pl_clk_req_0),
        .o_pl_wake_ack(o_pl_wake_ack_0),
        .o_pl_cfg(o_pl_cfg_0),
        .o_pl_cfg_vld(o_pl_cfg_vld_0),
        .o_pl_cfg_crd(o_pl_cfg_crd_0),
        .o_pl_retimer_crd(o_pl_retimer_crd_0),
        .o_pl_cerror(o_pl_cerror_0),
        .o_pl_phyinrecenter(o_pl_phyinrecenter_0)
    );

// Instantiate PHY 1
        UNIV_PHY_DIG #(.SER_WIDTH(SER_WIDTH), .N_BYTES(64)) phy1 (
            // Clocks and resets
            .i_pll_mb_clk(i_pll_mb_clk),
            .i_pll_sb_clk(i_pll_sb_clk),
            .i_rst_n(i_rst_n),

            // Clock lanes input
            .i_RCKP(phy0_o_CKP),
            .i_RCKN(phy0_o_CKN),
            .i_RTRACK(phy0_o_TRACK),

            // Valid lane (connected to HM de-serializer)
            .i_RVLD_L(phy1_rvld_l),

            // Main band data lanes (connected to HM de-serializers)
            .i_lfsr_rx_lane_0(phy1_rx_lane[0]),
            .i_lfsr_rx_lane_1(phy1_rx_lane[1]),
            .i_lfsr_rx_lane_2(phy1_rx_lane[2]),
            .i_lfsr_rx_lane_3(phy1_rx_lane[3]),
            .i_lfsr_rx_lane_4(phy1_rx_lane[4]),
            .i_lfsr_rx_lane_5(phy1_rx_lane[5]),
            .i_lfsr_rx_lane_6(phy1_rx_lane[6]),
            .i_lfsr_rx_lane_7(phy1_rx_lane[7]),
            .i_lfsr_rx_lane_8(phy1_rx_lane[8]),
            .i_lfsr_rx_lane_9(phy1_rx_lane[9]),
            .i_lfsr_rx_lane_10(phy1_rx_lane[10]),
            .i_lfsr_rx_lane_11(phy1_rx_lane[11]),
            .i_lfsr_rx_lane_12(phy1_rx_lane[12]),
            .i_lfsr_rx_lane_13(phy1_rx_lane[13]),
            .i_lfsr_rx_lane_14(phy1_rx_lane[14]),
            .i_lfsr_rx_lane_15(phy1_rx_lane[15]),

            // Hard-Macro related signals (MB)
            .i_deser_valid_data(deser_valid_data_1),
            .i_deser_valid_val(deser_valid_val_1), 

            // Hard-Macro related signals (SB)
            .i_sb_deser_done(sb_deser_done_1),   
            .i_sb_deser_data(sb_deser_data_1),   

            // Adapter RDI Interface
            .i_lp_irdy(lp_irdy_1),
            .i_lp_valid(lp_valid_1),
            .i_lp_data(lp_data_1),
            .i_lp_state_req(lp_state_req_1),
            .i_lp_linkerror(lp_linkerror_1),
            .i_lp_stallack(lp_stallack_1),
            .i_lp_clk_ack(lp_clk_ack_1),
            .i_lp_wake_req(lp_wake_req_1),
            .i_lp_cfg(lp_cfg_1),
            .i_lp_cfg_vld(lp_cfg_vld_1),
            .i_lp_cfg_crd(lp_cfg_crd_1),
            .i_lp_retimer_crd(lp_retimer_crd_1),

            // Outputs
            .o_CKP(phy1_o_CKP),
            .o_CKN(phy1_o_CKN),
            .o_TRACK(phy1_o_TRACK),
            .o_TVLD_L(phy1_tvld_l),
            .o_lfsr_tx_lane_0(phy1_tx_lane[0]),
            .o_lfsr_tx_lane_1(phy1_tx_lane[1]),
            .o_lfsr_tx_lane_2(phy1_tx_lane[2]),
            .o_lfsr_tx_lane_3(phy1_tx_lane[3]),
            .o_lfsr_tx_lane_4(phy1_tx_lane[4]),
            .o_lfsr_tx_lane_5(phy1_tx_lane[5]),
            .o_lfsr_tx_lane_6(phy1_tx_lane[6]),
            .o_lfsr_tx_lane_7(phy1_tx_lane[7]),
            .o_lfsr_tx_lane_8(phy1_tx_lane[8]),
            .o_lfsr_tx_lane_9(phy1_tx_lane[9]),
            .o_lfsr_tx_lane_10(phy1_tx_lane[10]),
            .o_lfsr_tx_lane_11(phy1_tx_lane[11]),
            .o_lfsr_tx_lane_12(phy1_tx_lane[12]),
            .o_lfsr_tx_lane_13(phy1_tx_lane[13]),
            .o_lfsr_tx_lane_14(phy1_tx_lane[14]),
            .o_lfsr_tx_lane_15(phy1_tx_lane[15]),

            // Hard-Macro related signals (MB)
            .o_serliazer_valid_en(o_serliazer_valid_en_1), 
            .o_serliazer_data_en(o_serliazer_data_en_1),  
            .o_diff_or_quad_clk(o_diff_or_quad_clk_1),
            .o_reciever_ref_volatge(o_reciever_ref_volatge_1),
            .o_pi_step(o_pi_step_1),
            .o_curret_operating_speed(o_curret_operating_speed_1),

            // Hard-Macro related signals (SB)
            .o_sb_deser_done_sampled(o_sb_deser_done_sampled_1),
            .o_sb_fifo_data(o_sb_fifo_data_1),
            .o_sb_packet_finished(o_sb_packet_finished_1),
            .o_sb_ser_en(o_sb_ser_en_1),
            .o_sb_TXCKSB(o_sb_TXCKSB_1),

            // Adapter RDI Interface
            .o_pl_trdy(o_pl_trdy_1),
            .o_pl_valid(o_pl_valid_1),
            .o_pl_data(o_pl_data_1),
            .o_pl_state_sts(o_pl_state_sts_1),
            .o_pl_inband_pres(o_pl_inband_pres_1),
            .o_pl_error(o_pl_error_1),
            .o_pl_nferror(o_pl_nferror_1),
            .o_pl_trainerror(o_pl_trainerror_1),
            .o_pl_stallreq(o_pl_stallreq_1),
            .o_pl_speedmode(o_pl_speedmode_1),
            .o_pl_lnk_cfg(o_pl_lnk_cfg_1),
            .o_pl_clk_req(o_pl_clk_req_1),
            .o_pl_wake_ack(o_pl_wake_ack_1),
            .o_pl_cfg(o_pl_cfg_1),
            .o_pl_cfg_vld(o_pl_cfg_vld_1),
            .o_pl_cfg_crd(o_pl_cfg_crd_1),
            .o_pl_retimer_crd(o_pl_retimer_crd_1),
            .o_pl_cerror(o_pl_cerror_1),
            .o_pl_phyinrecenter(o_pl_phyinrecenter_1)
        );

// Instantiate SB_TX_SERIALIZER for PHY 0
    SB_TX_SERIALIZER sb_tx_serializer_0 (
        .i_pll_clk(i_pll_sb_clk),
        .i_rst_n(i_rst_n),
        .i_data_in(o_sb_fifo_data_0),                
        .i_enable(o_sb_ser_en_0),
        .i_pack_finished(o_sb_packet_finished_0),
        .TXDATASB(SB_SER_DATA_0)                   
    );

// Instantiate SB_TX_SERIALIZER for PHY 1
    SB_TX_SERIALIZER sb_tx_serializer_1 (
        .i_pll_clk(i_pll_sb_clk),
        .i_rst_n(i_rst_n),
        .i_data_in(o_sb_fifo_data_1),                
        .i_enable(o_sb_ser_en_1),
        .i_pack_finished(o_sb_packet_finished_1),
        .TXDATASB(SB_SER_DATA_1)                   // Connect serialized output to sb_deser_data_1
    );

// Instantiate SB_RX_DESERIALIZER for PHY 0
    SB_RX_DESERIALIZER sb_rx_deserializer_0 (
        .i_clk(o_sb_TXCKSB_1),                     // Received clock to sample data (800 MHz)
        .i_clk_pll(i_pll_sb_clk),                 // Local PLL clock (800 MHz)
        .i_rst_n(i_rst_n),                         // Active-low reset
        .ser_data_in(SB_SER_DATA_1),              // Serial input data from serializer
        .i_de_ser_done_sampled(o_sb_deser_done_sampled_0), // Signal to indicate that de-serialization is done
        .par_data_out(sb_deser_data_0),           // Parallel output data
        .de_ser_done(sb_deser_done_0)              // Signal to indicate de-serialization is done
    );

// Instantiate SB_RX_DESERIALIZER for PHY 1
    SB_RX_DESERIALIZER sb_rx_deserializer_1 (
        .i_clk(o_sb_TXCKSB_0),                     // Received clock to sample data (800 MHz)
        .i_clk_pll(i_pll_sb_clk),                 // Local PLL clock (800 MHz)
        .i_rst_n(i_rst_n),                         // Active-low reset
        .ser_data_in(SB_SER_DATA_0),              // Serial input data from serializer
        .i_de_ser_done_sampled(o_sb_deser_done_sampled_1), // Signal to indicate that de-serialization is done
        .par_data_out(sb_deser_data_1),           // Parallel output data
        .de_ser_done(sb_deser_done_1)              // Signal to indicate de-serialization is done
    );

// Connect Hard-Macro signals between PHYs
    assign deser_valid_data_0 = o_serliazer_data_en_1;
    assign deser_valid_data_1 = o_serliazer_data_en_0;
    assign deser_valid_val_0  = o_serliazer_valid_en_1;
    assign deser_valid_val_1  = o_serliazer_valid_en_0;

/*************************************************************************************
 * TASKS
*************************************************************************************/    
    // Task to reset the system
        task reset_system();
            begin
                lp_state_req_0 = 0;
                lp_state_req_1 = 0;
                i_rst_n = 0;
                #20 i_rst_n = 1;
            end
        endtask
    // Task for wake handshake
        task wake_handshake (input logic die_selection);
            if (die_selection == 0) begin
                @(posedge lclk);
                lp_wake_req_0 = 1;
                wait (o_pl_wake_ack_0);
                @(posedge lclk);
                lp_wake_req_0 = 0;
                @(posedge lclk);
            end else begin
                @(posedge lclk);
                lp_wake_req_1 = 1;
                wait (o_pl_wake_ack_1);
                @(posedge lclk);
                lp_wake_req_1 = 0;
                @(posedge lclk);                
            end
        endtask
    // Task for state req
        task state_req (input string statereq, input logic die_selection);
            if (die_selection == 0) begin
                case (statereq)
                    "Active" : begin
                        lp_state_req_0 = 4'b0001; // Active
                        @(posedge lclk);
                        lp_state_req_0 = 4'b0000;
                    end
                    "L1" : begin
                        lp_state_req_0 = 4'b0100;                   
                    end 
                    "L2" : begin
                        lp_state_req_0 = 4'b1000; 
                        wait (o_pl_state_sts_0 == 4'b1000);
                        @(posedge lclk);
                        lp_state_req_0 = 4'b0000;                         
                    end
                    "LinkReset" : begin
                        lp_state_req_0 = 4'b1001; 
                        wait (o_pl_state_sts_0 == 4'b1001);
                        @(posedge lclk);
                        lp_state_req_0 = 4'b0000;                         
                    end
                    "Retrain" : begin
                        lp_state_req_0 = 4'b1011; 
                        wait (o_pl_state_sts_0 == 4'b1011);
                        @(posedge lclk);
                        lp_state_req_0 = 4'b0000;                         
                    end
                    "Disabled" : begin
                        lp_state_req_0 = 4'b1100; 
                        wait (o_pl_state_sts_0 == 4'b1100);
                        @(posedge lclk);
                        lp_state_req_0 = 4'b0000;                         
                    end
                endcase
            end else begin
                case (statereq)
                    "Active" : begin
                        lp_state_req_1 = 4'b0001; // Active
                        @(posedge lclk);
                        lp_state_req_1 = 4'b0000;
                    end
                    "L1" : begin
                        lp_state_req_1 = 4'b0100; 
                        wait (o_pl_state_sts_1 == 4'b0100);
                        @(posedge lclk);
                        lp_state_req_1 = 4'b0000;                    
                    end 
                    "L2" : begin
                        lp_state_req_1 = 4'b1000; 
                        wait (o_pl_state_sts_1 == 4'b1000);
                        @(posedge lclk);
                        lp_state_req_1 = 4'b0000;                         
                    end
                    "LinkReset" : begin
                        lp_state_req_1 = 4'b1001; 
                        wait (o_pl_state_sts_1 == 4'b1001);
                        @(posedge lclk);
                        lp_state_req_1 = 4'b0000;                         
                    end
                    "Retrain" : begin
                        lp_state_req_1 = 4'b1011; 
                        wait (o_pl_state_sts_1 == 4'b1011);
                        @(posedge lclk);
                        lp_state_req_1 = 4'b0000;                         
                    end
                    "Disabled" : begin
                        lp_state_req_1 = 4'b1100; 
                        wait (o_pl_state_sts_1 == 4'b1100);
                        @(posedge lclk);
                        lp_state_req_1 = 4'b0000;                         
                    end
                endcase           
            end
        endtask       

// start the running
    initial begin
        reset_system ();
        # 20;
        /*-------------------------------------------
         * WAKE handshake
        -------------------------------------------*/
        wake_handshake(0);
        /*-------------------------------------------
         * ACTIVE REQ from DIE 0
        -------------------------------------------*/        
        // lp_state_req_0 = 4'b0001; // Active
        // @(posedge lclk);
        // lp_state_req_0 = 4'b0000;
        state_req("Active", 0); // req Active state, Die 0
        /*-------------------------------------------
         * LINKERROR assertion
        -------------------------------------------*/ 
        wait (o_pl_state_sts_0 == 1);
        repeat(200) @(posedge lclk);
        wake_handshake(0);
        @(posedge lclk);
        lp_linkerror_0 = 1;
        //wait (lp_linkerror_1);
        repeat(10) @(posedge lclk);
        lp_linkerror_0 = 0;
        // lp_linkerror_1 = 0;
        repeat(10000/2) @(posedge lclk);
        /*-------------------------------------------
         * ACTIVE REQ from DIE 1
        -------------------------------------------*/ 
        $display("*********************************************************\n");
        $display(" * ACTIVE REQ from DIE 1 test starts at (%0t)\n",$time);
        $display("*********************************************************\n");
        wake_handshake(1);
        state_req("Active", 1);
        repeat(10000) @(posedge lclk);
        /*-------------------------------------------
         * L1 REQ from DIE 0
        -------------------------------------------*/
        $display("*********************************************************\n");
        $display(" * L1 REQ from DIE 0 test starts at (%0t)\n",$time);
        $display("*********************************************************\n");
        state_req("L1", 0);
        repeat(100) @(posedge lclk);

        #60000;
        $stop;
    end

/*************************************************************************************
 * Adapter modelling
*************************************************************************************/
    /*-------------------------------------------------------------------
    * PHY 0
    -------------------------------------------------------------------*/
        // Active req modelling
        always @ (posedge phy0.RDI_TOP_inst.o_pl_inband_pres) begin
            @(posedge lclk);
            lp_state_req_0 = 4'b0001;
        end
        // Clock handshake ack modelling
        always @ (posedge phy0.RDI_TOP_inst.o_pl_clk_req) begin
            @(posedge lclk);
            lp_clk_ack_0 = 1;
            wait (~ o_pl_clk_req_0);
            @(posedge lclk);
            lp_clk_ack_0 = 0;
        end
        // de-asserting lp_state_req to NOP upon observing pl_state_sts = linkerror
        always @ (o_pl_state_sts_0) begin
            if (o_pl_state_sts_0 == 0) begin
                @(posedge lclk);
                lp_state_req_0 = 4'b0000;
            end
        end
        always @ (o_pl_state_sts_0) begin
            if (o_pl_state_sts_0 == 4'b0100) begin
                @(posedge lclk);
                lp_state_req_0 = 4'b0000;
            end  
        end
        // asserting stall_ack
        always @ (o_pl_stallreq_0) begin
            if (o_pl_stallreq_0) begin
                @(posedge lclk);
                lp_stallack_0 = 1;
            end else begin
                @(posedge lclk);
                lp_stallack_0 = 0;
            end
        end
    /*-------------------------------------------------------------------
    * PHY 1
    -------------------------------------------------------------------*/
        // Active req modelling
        always @ (posedge phy1.RDI_TOP_inst.o_pl_inband_pres) begin
            @(posedge lclk);
            lp_state_req_1 = 4'b0001;
        end
        // Clock handshake ack modelling
        always @ (posedge phy1.RDI_TOP_inst.o_pl_clk_req) begin
            @(posedge lclk);
            lp_clk_ack_1 = 1;
            wait (~ o_pl_clk_req_1);
            @(posedge lclk);
            lp_clk_ack_1 = 0;
        end
        // de-asserting lp_state_req to NOP upon observing pl_state_sts = linkerror
        always @ (o_pl_state_sts_1) begin
            if (o_pl_state_sts_1 == 0) begin
                @(posedge lclk);
                lp_state_req_1 = 4'b0000;
                // repeat (50) @(posedge lclk);
                // lp_linkerror_1 = 1;
            end
        end
        always @ (o_pl_stallreq_1) begin
            if (o_pl_stallreq_1) begin
                @(posedge lclk);
                lp_stallack_1 = 1;
            end else begin
                @(posedge lclk);
                lp_stallack_1 = 0;
            end
        end

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// FOR DEBUGGING ONLY ////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*----------------------------------------------------------------------
     * MAINBAND
    ----------------------------------------------------------------------*/
        ///////////////////////////////////
        //////////// FSM STATES ///////////
        ///////////////////////////////////
        /*---------------------------------
        * FSM main States
        ---------------------------------*/
        typedef enum {  
            RESET 	             = 0,  // 0000
            FINISH_RESET         = 1,  // 0001
            SBINIT 		 		 = 2,  // 0010
            MBINIT				 = 3,  // 0011
            MBTRAIN              = 4,  // 0100
            LINKINIT             = 5,  // 0101
            ACTIVE               = 6,  // 0110
            TRAINERROR_HS        = 7,  // 0111
            TRAINERROR           = 8,  // 1000
            LINKMGMT_RETRAIN     = 9,  // 1001
            PHYRETRAIN           = 10, // 1010
            L1                   = 11, // 1011
            L2                   = 12  // 1100
        } states_tx;

        /*---------------------------------
        * FSM sub States
        ---------------------------------*/
        localparam PARAM                = 0;
        localparam CAL                  = 1;
        localparam REPAIRCLK            = 2;
        localparam REPAIRVAL            = 3;
        localparam REVERSALMB           = 4;
        localparam REPAIRMB             = 5;

        localparam VALVREF              = 0;
        localparam DATAVREF             = 1;
        localparam SPEEDIDLE            = 2;
        localparam TXSELFCAL            = 3;
        localparam RXCLKCAL             = 4;
        localparam VALTRAINCENTER       = 5;
        localparam VALTRAINVREF         = 6;
        localparam DATATRAINCENTER1     = 7;
        localparam DATATRAINVREF        = 8;
        localparam RXDESKEW             = 9;
        localparam DATATRAINCENTER2     = 10;
        localparam LINKSPEED            = 11;
        localparam REPAIR               = 12;


        states_tx CS_top_1, NS_top_1, CS_top_2, NS_top_2;

        always @ (*) begin
        CS_top_1 = states_tx'(phy0.LTSM_MB_inst.LTSM_TOP_inst.CS);
        NS_top_1 = states_tx'(phy0.LTSM_MB_inst.LTSM_TOP_inst.NS);
        CS_top_2 = states_tx'(phy1.LTSM_MB_inst.LTSM_TOP_inst.CS);
        NS_top_2 = states_tx'(phy1.LTSM_MB_inst.LTSM_TOP_inst.NS);
        end
        // module 
        always @ (*) begin
        sub_state_1 = "UNKNOWN";
        case (CS_top_1) 
            MBINIT: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    0: sub_state_1 = "PARAM";
                    1: sub_state_1 = "CAL";
                    2: sub_state_1 = "REPAIRCLK";
                    3: sub_state_1 = "REPAIRVAL";
                    4: sub_state_1 = "REVERSALMB";
                    5: sub_state_1 = "REPAIRMB";
                    default: sub_state_1 = "UNKNOWN";
                endcase
            end
            MBTRAIN: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    0: sub_state_1 = "VALVREF";
                    1: sub_state_1 = "DATAVREF";
                    2: sub_state_1 = "SPEEDIDLE";
                    3: sub_state_1 = "TXSELFCAL";
                    4: sub_state_1 = "RXCLKCAL";
                    5: sub_state_1 = "VALTRAINCENTER";
                    6: sub_state_1 = "VALTRAINVREF";
                    7: sub_state_1 = "DATATRAINCENTER1";
                    8: sub_state_1 = "DATATRAINVREF";
                    9: sub_state_1 = "RXDESKEW";
                    10: sub_state_1 = "DATATRAINCENTER2";
                    11: sub_state_1 = "LINKSPEED";
                    12: sub_state_1 = "REPAIR";
                    default : sub_state_1 = "UNKNOWN";
                endcase
            end
        endcase
        end

        //partner
        always @ (*) begin
        sub_state_2 = "UNKNOWN";
        case (CS_top_2) 
            MBINIT: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    0: sub_state_2 = "PARAM";
                    1: sub_state_2 = "CAL";
                    2: sub_state_2 = "REPAIRCLK";
                    3: sub_state_2 = "REPAIRVAL";
                    4: sub_state_2 = "REVERSALMB";
                    5: sub_state_2 = "REPAIRMB";
                    default: sub_state_2 = "UNKNOWN";
                endcase
            end
            MBTRAIN: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    0: sub_state_2 = "VALVREF";
                    1: sub_state_2 = "DATAVREF";
                    2: sub_state_2 = "SPEEDIDLE";
                    3: sub_state_2 = "TXSELFCAL";
                    4: sub_state_2 = "RXCLKCAL";
                    5: sub_state_2 = "VALTRAINCENTER";
                    6: sub_state_2 = "VALTRAINVREF";
                    7: sub_state_2 = "DATATRAINCENTER1";
                    8: sub_state_2 = "DATATRAINVREF";
                    9: sub_state_2 = "RXDESKEW";
                    10: sub_state_2 = "DATATRAINCENTER2";
                    11: sub_state_2 = "LINKSPEED";
                    12: sub_state_2 = "REPAIR";
                    default : sub_state_2 = "UNKOWN";
                endcase
            end
        endcase
        end

        // module 
        always @ (*) begin
        if (!phy0.LTSM_MB_inst.tx_d2c_pt_en && !phy0.LTSM_MB_inst.rx_d2c_pt_en) begin
        i_rx_msg_no_string_1 = "UNKNOWN"; // Default case
        case (CS_top_1)
            SBINIT: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                    3: i_rx_msg_no_string_1 = "SBINIT_OUT_OF_RESET_MSG";
                    1: i_rx_msg_no_string_1 = "SBINIT_DONE_REQ_MSG";
                    2: i_rx_msg_no_string_1 = "SBINIT_DONE_RESP_MSG";
                endcase
            end
            MBINIT: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    PARAM: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "PARAM_CONFIG_REQ";
                            2: i_rx_msg_no_string_1 = "PARAM_CONFIG_RESP";
                            3: i_rx_msg_no_string_1 = "PARAM_SBFE_REQ";
                            4: i_rx_msg_no_string_1 = "PARAM_SBFE_RESP";
                        endcase
                    end
                    CAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "CAL_DONE_REQ";
                            2: i_rx_msg_no_string_1 = "CAL_DONE_RESP";
                        endcase
                    end
                    REPAIRCLK: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "REPAIRCLK_INIT_REQ";
                            2: i_rx_msg_no_string_1 = "REPAIRCLK_INIT_RESP";
                            3: i_rx_msg_no_string_1 = "REPAIRCLK_RESULT_REQ";
                            4: i_rx_msg_no_string_1 = "REPAIRCLK_RESULT_RESP";
                            5: i_rx_msg_no_string_1 = "REPAIRCLK_DONE_REQ";
                            6: i_rx_msg_no_string_1 = "REPAIRCLK_DONE_RESP";
                        endcase
                    end
                    REPAIRVAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "REPAIRVAL_INIT_REQ";
                            2: i_rx_msg_no_string_1 = "REPAIRVAL_INIT_RESP";
                            3: i_rx_msg_no_string_1 = "REPAIRVAL_RESULT_REQ";
                            4: i_rx_msg_no_string_1 = "REPAIRVAL_RESULT_RESP";
                            5: i_rx_msg_no_string_1 = "REPAIRVAL_DONE_REQ";
                            6: i_rx_msg_no_string_1 = "REPAIRVAL_DONE_RESP"; 
                        endcase
                    end
                    REVERSALMB: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "REVERSALMB_INIT_REQ";
                            2: i_rx_msg_no_string_1 = "REVERSALMB_INIT_RESP";
                            3: i_rx_msg_no_string_1 = "REVERSALMB_CLEAR_ERROR_REQ";
                            4: i_rx_msg_no_string_1 = "REVERSALMB_CLEAR_ERROR_RESP";
                            5: i_rx_msg_no_string_1 = "REVERSALMB_RESULT_REQ";
                            6: i_rx_msg_no_string_1 = "REVERSALMB_RESULT_RESP";
                            7: i_rx_msg_no_string_1 = "REVERSALMB_DONE_REQ";
                            8: i_rx_msg_no_string_1 = "REVERSALMB_DONE_RESP";
                        endcase
                    end
                    REPAIRMB: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "REPAIRMB_START_REQ";
                            2: i_rx_msg_no_string_1 = "REPAIRMB_START_RESP";
                            3: i_rx_msg_no_string_1 = "REPAIRMB_END_REQ";
                            4: i_rx_msg_no_string_1 = "REPAIRMB_END_RESP";
                            5: i_rx_msg_no_string_1 = "REPAIRMB_APPLY_DEGRADE_REQ";
                            6: i_rx_msg_no_string_1 = "REPAIRMB_APPLY_DEGRADE_RESP";
                        endcase
                    end
                endcase
            end
            MBTRAIN: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    VALVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "VALVREF_START_REQ";
                            2: i_rx_msg_no_string_1 = "VALVREF_START_RESP";
                            3: i_rx_msg_no_string_1 = "VALVREF_END_REQ";
                            4: i_rx_msg_no_string_1 = "VALVREF_END_RESP";
                        endcase
                    end
                    DATAVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "DATAVREF_START_REQ";
                            2: i_rx_msg_no_string_1 = "DATAVREF_START_RESP";
                            3: i_rx_msg_no_string_1 = "DATAVREF_END_REQ";
                            4: i_rx_msg_no_string_1 = "DATAVREF_END_RESP";
                        endcase
                    end
                    SPEEDIDLE: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "SPEEDIDLE_DONE_REQ";
                            2: i_rx_msg_no_string_1 = "SPEEDIDLE_DONE_RESP";
                        endcase
                    end
                    TXSELFCAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "TXSELFCAL_DONE_REQ";
                            2: i_rx_msg_no_string_1 = "TXSELFCAL_DONE_RESP";
                        endcase
                    end
                    RXCLKCAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "RXCLKCAL_START_REQ";
                            2: i_rx_msg_no_string_1 = "RXCLKCAL_START_RESP";
                            3: i_rx_msg_no_string_1 = "RXCLKCAL_DONE_REQ";
                            4: i_rx_msg_no_string_1 = "RXCLKCAL_DONE_RESP";
                        endcase
                    end
                    VALTRAINCENTER: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "VALTRAINCENTER_START_REQ";
                            2: i_rx_msg_no_string_1 = "VALTRAINCENTER_START_RESP";
                            3: i_rx_msg_no_string_1 = "VALTRAINCENTER_DONE_REQ";
                            4: i_rx_msg_no_string_1 = "VALTRAINCENTER_DONE_RESP";
                        endcase
                    end
                    VALTRAINVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "VALTRAINVREF_START_REQ";
                            2: i_rx_msg_no_string_1 = "VALTRAINVREF_START_RESP";
                            3: i_rx_msg_no_string_1 = "VALTRAINVREF_DONE_REQ";
                            4: i_rx_msg_no_string_1 = "VALTRAINVREF_DONE_RESP";
                        endcase
                    end
                    DATATRAINCENTER1: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "DATATRAINCENTER1_START_REQ";
                            2: i_rx_msg_no_string_1 = "DATATRAINCENTER1_START_RESP";
                            3: i_rx_msg_no_string_1 = "DATATRAINCENTER1_END_REQ";
                            4: i_rx_msg_no_string_1 = "DATATRAINCENTER1_END_RESP";
                        endcase
                    end
                    DATATRAINVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "DATATRAINVREF_START_REQ";
                            2: i_rx_msg_no_string_1 = "DATATRAINVREF_START_RESP";
                            3: i_rx_msg_no_string_1 = "DATATRAINVREF_END_REQ";
                            4: i_rx_msg_no_string_1 = "DATATRAINVREF_END_RESP";
                        endcase
                    end
                    RXDESKEW: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "RXDESKEW_START_REQ";
                            2: i_rx_msg_no_string_1 = "RXDESKEW_START_RESP";
                            3: i_rx_msg_no_string_1 = "RXDESKEW_END_REQ";
                            4: i_rx_msg_no_string_1 = "RXDESKEW_END_RESP";
                        endcase
                    end
                    DATATRAINCENTER2: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "DATATRAINCENTER2_START_REQ";
                            2: i_rx_msg_no_string_1 = "DATATRAINCENTER2_START_RESP";
                            3: i_rx_msg_no_string_1 = "DATATRAINCENTER2_END_REQ";
                            4: i_rx_msg_no_string_1 = "DATATRAINCENTER2_END_RESP";
                        endcase
                    end
                    LINKSPEED: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "LINKSPEED_START_REQ";
                            2: i_rx_msg_no_string_1 = "LINKSPEED_START_RESP";
                            3: i_rx_msg_no_string_1 = "LINKSPEED_ERROR_REQ";
                            4: i_rx_msg_no_string_1 = "LINKSPEED_ERROR_RESP";
                            5: i_rx_msg_no_string_1 = "LINKSPEED_EXIT_TO_REPAIR_REQ";
                            6: i_rx_msg_no_string_1 = "LINKSPEED_EXIT_TO_REPAIR_RESP";
                            7: i_rx_msg_no_string_1 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_REQ";
                            8: i_rx_msg_no_string_1 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_RESP";
                            9: i_rx_msg_no_string_1 = "LINKSPEED_DONE_REQ";
                            10: i_rx_msg_no_string_1 = "LINKSPEED_DONE_RESP";
                            11: i_rx_msg_no_string_1 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_REQ";
                            12: i_rx_msg_no_string_1 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_RESP";
                        endcase
                    end
                    REPAIR: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_1 = "REPAIR_INIT_REQ";
                            2: i_rx_msg_no_string_1 = "REPAIR_INIT_RESP";
                            3: i_rx_msg_no_string_1 = "REPAIR_APPLY_REPAIR_REQ";
                            4: i_rx_msg_no_string_1 = "REPAIR_APPLY_REPAIR_RESP";
                            5: i_rx_msg_no_string_1 = "REPAIR_END_REQ";
                            6: i_rx_msg_no_string_1 = "REPAIR_END_RESP";
                            7: i_rx_msg_no_string_1 = "REPAIR_APPLY_DEGRADE_REQ";
                            8: i_rx_msg_no_string_1 = "REPAIR_APPLY_DEGRADE_RESP";
                        endcase
                    end
                endcase
            end
            TRAINERROR_HS: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                    15: i_rx_msg_no_string_1 = "TRAINERROR_REQ";
                    14: i_rx_msg_no_string_1 = "TRAINERROR_RESP";
                endcase
            end
            PHYRETRAIN: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                    1: i_rx_msg_no_string_1 = "PHYRETRAIN_START_REQ";
                    2: i_rx_msg_no_string_1 = "PHYRETRAIN_START_RESP";
                endcase
            end
        endcase
        end
        end

        always @ (*) begin
        if (!phy0.LTSM_MB_inst.tx_d2c_pt_en && !phy0.LTSM_MB_inst.rx_d2c_pt_en) begin
        o_tx_msg_no_string_1 = "UNKNOWN"; // Default case
        case (CS_top_1)
            SBINIT: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                    3: o_tx_msg_no_string_1 = "SBINIT_OUT_OF_RESET_MSG";
                    1: o_tx_msg_no_string_1 = "SBINIT_DONE_REQ_MSG";
                    2: o_tx_msg_no_string_1 = "SBINIT_DONE_RESP_MSG";
                endcase
            end
            MBINIT: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    PARAM: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "PARAM_CONFIG_REQ";
                            2: o_tx_msg_no_string_1 = "PARAM_CONFIG_RESP";
                            3: o_tx_msg_no_string_1 = "PARAM_SBFE_REQ";
                            4: o_tx_msg_no_string_1 = "PARAM_SBFE_RESP";
                        endcase
                    end
                    CAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "CAL_DONE_REQ";
                            2: o_tx_msg_no_string_1 = "CAL_DONE_RESP";
                        endcase
                    end
                    REPAIRCLK: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "REPAIRCLK_INIT_REQ";
                            2: o_tx_msg_no_string_1 = "REPAIRCLK_INIT_RESP";
                            3: o_tx_msg_no_string_1 = "REPAIRCLK_RESULT_REQ";
                            4: o_tx_msg_no_string_1 = "REPAIRCLK_RESULT_RESP";
                            5: o_tx_msg_no_string_1 = "REPAIRCLK_DONE_REQ";
                            6: o_tx_msg_no_string_1 = "REPAIRCLK_DONE_RESP";
                        endcase
                    end
                    REPAIRVAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "REPAIRVAL_INIT_REQ";
                            2: o_tx_msg_no_string_1 = "REPAIRVAL_INIT_RESP";
                            3: o_tx_msg_no_string_1 = "REPAIRVAL_RESULT_REQ";
                            4: o_tx_msg_no_string_1 = "REPAIRVAL_RESULT_RESP";
                            5: o_tx_msg_no_string_1 = "REPAIRVAL_DONE_REQ";
                            6: o_tx_msg_no_string_1 = "REPAIRVAL_DONE_RESP"; 
                        endcase
                    end
                    REVERSALMB: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "REVERSALMB_INIT_REQ";
                            2: o_tx_msg_no_string_1 = "REVERSALMB_INIT_RESP";
                            3: o_tx_msg_no_string_1 = "REVERSALMB_CLEAR_ERROR_REQ";
                            4: o_tx_msg_no_string_1 = "REVERSALMB_CLEAR_ERROR_RESP";
                            5: o_tx_msg_no_string_1 = "REVERSALMB_RESULT_REQ";
                            6: o_tx_msg_no_string_1 = "REVERSALMB_RESULT_RESP";
                            7: o_tx_msg_no_string_1 = "REVERSALMB_DONE_REQ";
                            8: o_tx_msg_no_string_1 = "REVERSALMB_DONE_RESP";
                        endcase
                    end
                    REPAIRMB: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "REPAIRMB_START_REQ";
                            2: o_tx_msg_no_string_1 = "REPAIRMB_START_RESP";
                            3: o_tx_msg_no_string_1 = "REPAIRMB_END_REQ";
                            4: o_tx_msg_no_string_1 = "REPAIRMB_END_RESP";
                            5: o_tx_msg_no_string_1 = "REPAIRMB_APPLY_DEGRADE_REQ";
                            6: o_tx_msg_no_string_1 = "REPAIRMB_APPLY_DEGRADE_RESP";
                        endcase
                    end
                endcase
            end
            MBTRAIN: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    VALVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "VALVREF_START_REQ";
                            2: o_tx_msg_no_string_1 = "VALVREF_START_RESP";
                            3: o_tx_msg_no_string_1 = "VALVREF_END_REQ";
                            4: o_tx_msg_no_string_1 = "VALVREF_END_RESP";
                        endcase
                    end
                    DATAVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "DATAVREF_START_REQ";
                            2: o_tx_msg_no_string_1 = "DATAVREF_START_RESP";
                            3: o_tx_msg_no_string_1 = "DATAVREF_END_REQ";
                            4: o_tx_msg_no_string_1 = "DATAVREF_END_RESP";
                        endcase
                    end
                    SPEEDIDLE: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "SPEEDIDLE_DONE_REQ";
                            2: o_tx_msg_no_string_1 = "SPEEDIDLE_DONE_RESP";
                        endcase
                    end
                    TXSELFCAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "TXSELFCAL_DONE_REQ";
                            2: o_tx_msg_no_string_1 = "TXSELFCAL_DONE_RESP";
                        endcase
                    end
                    RXCLKCAL: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "RXCLKCAL_START_REQ";
                            2: o_tx_msg_no_string_1 = "RXCLKCAL_START_RESP";
                            3: o_tx_msg_no_string_1 = "RXCLKCAL_DONE_REQ";
                            4: o_tx_msg_no_string_1 = "RXCLKCAL_DONE_RESP";
                        endcase
                    end
                    VALTRAINCENTER: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "VALTRAINCENTER_START_REQ";
                            2: o_tx_msg_no_string_1 = "VALTRAINCENTER_START_RESP";
                            3: o_tx_msg_no_string_1 = "VALTRAINCENTER_DONE_REQ";
                            4: o_tx_msg_no_string_1 = "VALTRAINCENTER_DONE_RESP";
                        endcase
                    end
                    VALTRAINVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "VALTRAINVREF_START_REQ";
                            2: o_tx_msg_no_string_1 = "VALTRAINVREF_START_RESP";
                            3: o_tx_msg_no_string_1 = "VALTRAINVREF_DONE_REQ";
                            4: o_tx_msg_no_string_1 = "VALTRAINVREF_DONE_RESP";
                        endcase
                    end
                    DATATRAINCENTER1: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "DATATRAINCENTER1_START_REQ";
                            2: o_tx_msg_no_string_1 = "DATATRAINCENTER1_START_RESP";
                            3: o_tx_msg_no_string_1 = "DATATRAINCENTER1_END_REQ";
                            4: o_tx_msg_no_string_1 = "DATATRAINCENTER1_END_RESP";
                        endcase
                    end
                    DATATRAINVREF: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "DATATRAINVREF_START_REQ";
                            2: o_tx_msg_no_string_1 = "DATATRAINVREF_START_RESP";
                            3: o_tx_msg_no_string_1 = "DATATRAINVREF_END_REQ";
                            4: o_tx_msg_no_string_1 = "DATATRAINVREF_END_RESP";
                        endcase
                    end
                    RXDESKEW: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "RXDESKEW_START_REQ";
                            2: o_tx_msg_no_string_1 = "RXDESKEW_START_RESP";
                            3: o_tx_msg_no_string_1 = "RXDESKEW_END_REQ";
                            4: o_tx_msg_no_string_1 = "RXDESKEW_END_RESP";
                        endcase
                    end
                    DATATRAINCENTER2: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "DATATRAINCENTER2_START_REQ";
                            2: o_tx_msg_no_string_1 = "DATATRAINCENTER2_START_RESP";
                            3: o_tx_msg_no_string_1 = "DATATRAINCENTER2_END_REQ";
                            4: o_tx_msg_no_string_1 = "DATATRAINCENTER2_END_RESP";
                        endcase
                    end
                    LINKSPEED: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "LINKSPEED_START_REQ";
                            2: o_tx_msg_no_string_1 = "LINKSPEED_START_RESP";
                            3: o_tx_msg_no_string_1 = "LINKSPEED_ERROR_REQ";
                            4: o_tx_msg_no_string_1 = "LINKSPEED_ERROR_RESP";
                            5: o_tx_msg_no_string_1 = "LINKSPEED_EXIT_TO_REPAIR_REQ";
                            6: o_tx_msg_no_string_1 = "LINKSPEED_EXIT_TO_REPAIR_RESP";
                            7: o_tx_msg_no_string_1 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_REQ";
                            8: o_tx_msg_no_string_1 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_RESP";
                            9: o_tx_msg_no_string_1 = "LINKSPEED_DONE_REQ";
                            10: o_tx_msg_no_string_1 = "LINKSPEED_DONE_RESP";
                            11: o_tx_msg_no_string_1 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_REQ";
                            12: o_tx_msg_no_string_1 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_RESP";
                        endcase
                    end
                    REPAIR: begin
                        case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                            1: o_tx_msg_no_string_1 = "REPAIR_INIT_REQ";
                            2: o_tx_msg_no_string_1 = "REPAIR_INIT_RESP";
                            3: o_tx_msg_no_string_1 = "REPAIR_APPLY_REPAIR_REQ";
                            4: o_tx_msg_no_string_1 = "REPAIR_APPLY_REPAIR_RESP";
                            5: o_tx_msg_no_string_1 = "REPAIR_END_REQ";
                            6: o_tx_msg_no_string_1 = "REPAIR_END_RESP";
                            7: o_tx_msg_no_string_1 = "REPAIR_APPLY_DEGRADE_REQ";
                            8: o_tx_msg_no_string_1 = "REPAIR_APPLY_DEGRADE_RESP";
                        endcase
                    end
                endcase
            end
            TRAINERROR_HS: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                    15: o_tx_msg_no_string_1 = "TRAINERROR_REQ";
                    14: o_tx_msg_no_string_1 = "TRAINERROR_RESP";
                endcase
            end
            PHYRETRAIN: begin
                case (phy0.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                    1: o_tx_msg_no_string_1 = "PHYRETRAIN_START_REQ";
                    2: o_tx_msg_no_string_1 = "PHYRETRAIN_START_RESP";
                endcase
            end
        endcase
        end
        end

        // partner
        always @ (*) begin
        if (!phy1.LTSM_MB_inst.tx_d2c_pt_en && !phy1.LTSM_MB_inst.rx_d2c_pt_en) begin
        i_rx_msg_no_string_2 = "UNKNOWN"; // Default case
        case (CS_top_2)
            SBINIT: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                    3: i_rx_msg_no_string_2 = "SBINIT_OUT_OF_RESET_MSG";
                    1: i_rx_msg_no_string_2 = "SBINIT_DONE_REQ_MSG";
                    2: i_rx_msg_no_string_2 = "SBINIT_DONE_RESP_MSG";
                endcase
            end
            MBINIT: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    PARAM: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "PARAM_CONFIG_REQ";
                            2: i_rx_msg_no_string_2 = "PARAM_CONFIG_RESP";
                            3: i_rx_msg_no_string_2 = "PARAM_SBFE_REQ";
                            4: i_rx_msg_no_string_2 = "PARAM_SBFE_RESP";
                        endcase
                    end
                    CAL: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "CAL_DONE_REQ";
                            2: i_rx_msg_no_string_2 = "CAL_DONE_RESP";
                        endcase
                    end
                    REPAIRCLK: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "REPAIRCLK_INIT_REQ";
                            2: i_rx_msg_no_string_2 = "REPAIRCLK_INIT_RESP";
                            3: i_rx_msg_no_string_2 = "REPAIRCLK_RESULT_REQ";
                            4: i_rx_msg_no_string_2 = "REPAIRCLK_RESULT_RESP";
                            5: i_rx_msg_no_string_2 = "REPAIRCLK_DONE_REQ";
                            6: i_rx_msg_no_string_2 = "REPAIRCLK_DONE_RESP";
                        endcase
                    end
                    REPAIRVAL: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "REPAIRVAL_INIT_REQ";
                            2: i_rx_msg_no_string_2 = "REPAIRVAL_INIT_RESP";
                            3: i_rx_msg_no_string_2 = "REPAIRVAL_RESULT_REQ";
                            4: i_rx_msg_no_string_2 = "REPAIRVAL_RESULT_RESP";
                            5: i_rx_msg_no_string_2 = "REPAIRVAL_DONE_REQ";
                            6: i_rx_msg_no_string_2 = "REPAIRVAL_DONE_RESP"; 
                        endcase
                    end
                    REVERSALMB: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "REVERSALMB_INIT_REQ";
                            2: i_rx_msg_no_string_2 = "REVERSALMB_INIT_RESP";
                            3: i_rx_msg_no_string_2 = "REVERSALMB_CLEAR_ERROR_REQ";
                            4: i_rx_msg_no_string_2 = "REVERSALMB_CLEAR_ERROR_RESP";
                            5: i_rx_msg_no_string_2 = "REVERSALMB_RESULT_REQ";
                            6: i_rx_msg_no_string_2 = "REVERSALMB_RESULT_RESP";
                            7: i_rx_msg_no_string_2 = "REVERSALMB_DONE_REQ";
                            8: i_rx_msg_no_string_2 = "REVERSALMB_DONE_RESP";
                        endcase
                    end
                    REPAIRMB: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "REPAIRMB_START_REQ";
                            2: i_rx_msg_no_string_2 = "REPAIRMB_START_RESP";
                            3: i_rx_msg_no_string_2 = "REPAIRMB_END_REQ";
                            4: i_rx_msg_no_string_2 = "REPAIRMB_END_RESP";
                            5: i_rx_msg_no_string_2 = "REPAIRMB_APPLY_DEGRADE_REQ";
                            6: i_rx_msg_no_string_2 = "REPAIRMB_APPLY_DEGRADE_RESP";
                        endcase
                    end
                endcase
            end
            MBTRAIN: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                    VALVREF: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "VALVREF_START_REQ";
                            2: i_rx_msg_no_string_2 = "VALVREF_START_RESP";
                            3: i_rx_msg_no_string_2 = "VALVREF_END_REQ";
                            4: i_rx_msg_no_string_2 = "VALVREF_END_RESP";
                        endcase
                    end
                    DATAVREF: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "DATAVREF_START_REQ";
                            2: i_rx_msg_no_string_2 = "DATAVREF_START_RESP";
                            3: i_rx_msg_no_string_2 = "DATAVREF_END_REQ";
                            4: i_rx_msg_no_string_2 = "DATAVREF_END_RESP";
                        endcase
                    end
                    SPEEDIDLE: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "SPEEDIDLE_DONE_REQ";
                            2: i_rx_msg_no_string_2 = "SPEEDIDLE_DONE_RESP";
                        endcase
                    end
                    TXSELFCAL: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "TXSELFCAL_DONE_REQ";
                            2: i_rx_msg_no_string_2 = "TXSELFCAL_DONE_RESP";
                        endcase
                    end
                    RXCLKCAL: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "RXCLKCAL_START_REQ";
                            2: i_rx_msg_no_string_2 = "RXCLKCAL_START_RESP";
                            3: i_rx_msg_no_string_2 = "RXCLKCAL_DONE_REQ";
                            4: i_rx_msg_no_string_2 = "RXCLKCAL_DONE_RESP";
                        endcase
                    end
                    VALTRAINCENTER: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "VALTRAINCENTER_START_REQ";
                            2: i_rx_msg_no_string_2 = "VALTRAINCENTER_START_RESP";
                            3: i_rx_msg_no_string_2 = "VALTRAINCENTER_DONE_REQ";
                            4: i_rx_msg_no_string_2 = "VALTRAINCENTER_DONE_RESP";
                        endcase
                    end
                    VALTRAINVREF: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "VALTRAINVREF_START_REQ";
                            2: i_rx_msg_no_string_2 = "VALTRAINVREF_START_RESP";
                            3: i_rx_msg_no_string_2 = "VALTRAINVREF_DONE_REQ";
                            4: i_rx_msg_no_string_2 = "VALTRAINVREF_DONE_RESP";
                        endcase
                    end
                    DATATRAINCENTER1: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "DATATRAINCENTER1_START_REQ";
                            2: i_rx_msg_no_string_2 = "DATATRAINCENTER1_START_RESP";
                            3: i_rx_msg_no_string_2 = "DATATRAINCENTER1_END_REQ";
                            4: i_rx_msg_no_string_2 = "DATATRAINCENTER1_END_RESP";
                        endcase
                    end
                    DATATRAINVREF: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "DATATRAINVREF_START_REQ";
                            2: i_rx_msg_no_string_2 = "DATATRAINVREF_START_RESP";
                            3: i_rx_msg_no_string_2 = "DATATRAINVREF_END_REQ";
                            4: i_rx_msg_no_string_2 = "DATATRAINVREF_END_RESP";
                        endcase
                    end
                    RXDESKEW: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "RXDESKEW_START_REQ";
                            2: i_rx_msg_no_string_2 = "RXDESKEW_START_RESP";
                            3: i_rx_msg_no_string_2 = "RXDESKEW_END_REQ";
                            4: i_rx_msg_no_string_2 = "RXDESKEW_END_RESP";
                        endcase
                    end
                    DATATRAINCENTER2: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "DATATRAINCENTER2_START_REQ";
                            2: i_rx_msg_no_string_2 = "DATATRAINCENTER2_START_RESP";
                            3: i_rx_msg_no_string_2 = "DATATRAINCENTER2_END_REQ";
                            4: i_rx_msg_no_string_2 = "DATATRAINCENTER2_END_RESP";
                        endcase
                    end
                    LINKSPEED: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "LINKSPEED_START_REQ";
                            2: i_rx_msg_no_string_2 = "LINKSPEED_START_RESP";
                            3: i_rx_msg_no_string_2 = "LINKSPEED_ERROR_REQ";
                            4: i_rx_msg_no_string_2 = "LINKSPEED_ERROR_RESP";
                            5: i_rx_msg_no_string_2 = "LINKSPEED_EXIT_TO_REPAIR_REQ";
                            6: i_rx_msg_no_string_2 = "LINKSPEED_EXIT_TO_REPAIR_RESP";
                            7: i_rx_msg_no_string_2 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_REQ";
                            8: i_rx_msg_no_string_2 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_RESP";
                            9: i_rx_msg_no_string_2 = "LINKSPEED_DONE_REQ";
                            10: i_rx_msg_no_string_2 = "LINKSPEED_DONE_RESP";
                            11: i_rx_msg_no_string_2 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_REQ";
                            12: i_rx_msg_no_string_2 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_RESP";
                        endcase
                    end
                    REPAIR: begin
                        case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                            1: i_rx_msg_no_string_2 = "REPAIR_INIT_REQ";
                            2: i_rx_msg_no_string_2 = "REPAIR_INIT_RESP";
                            3: i_rx_msg_no_string_2 = "REPAIR_APPLY_REPAIR_REQ";
                            4: i_rx_msg_no_string_2 = "REPAIR_APPLY_REPAIR_RESP";
                            5: i_rx_msg_no_string_2 = "REPAIR_END_REQ";
                            6: i_rx_msg_no_string_2 = "REPAIR_END_RESP";
                            7: i_rx_msg_no_string_2 = "REPAIR_APPLY_DEGRADE_REQ";
                            8: i_rx_msg_no_string_2 = "REPAIR_APPLY_DEGRADE_RESP";
                        endcase
                    end
                endcase
            end
            TRAINERROR_HS: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                    15: i_rx_msg_no_string_2 = "TRAINERROR_REQ";
                    14: i_rx_msg_no_string_2 = "TRAINERROR_RESP";
                endcase
            end
            PHYRETRAIN: begin
                case (phy1.LTSM_MB_inst.LTSM_TOP_inst.i_decoded_SB_msg)
                    1: i_rx_msg_no_string_2 = "PHYRETRAIN_START_REQ";
                    2: i_rx_msg_no_string_2 = "PHYRETRAIN_START_RESP";
                endcase
            end
        endcase
        end
        end

        always @ (*) begin
        if (!phy1.LTSM_MB_inst.tx_d2c_pt_en && !phy1.LTSM_MB_inst.rx_d2c_pt_en) begin
        o_tx_msg_no_string_2 = "UNKNOWN"; // Default case
            case (CS_top_2)
                SBINIT: begin
                    case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                        3: o_tx_msg_no_string_2 = "SBINIT_OUT_OF_RESET_MSG";
                        1: o_tx_msg_no_string_2 = "SBINIT_DONE_REQ_MSG";
                        2: o_tx_msg_no_string_2 = "SBINIT_DONE_RESP_MSG";
                    endcase
                end
                MBINIT: begin
                    case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                        PARAM: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "PARAM_CONFIG_REQ";
                                2: o_tx_msg_no_string_2 = "PARAM_CONFIG_RESP";
                                3: o_tx_msg_no_string_2 = "PARAM_SBFE_REQ";
                                4: o_tx_msg_no_string_2 = "PARAM_SBFE_RESP";
                            endcase
                        end
                        CAL: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "CAL_DONE_REQ";
                                2: o_tx_msg_no_string_2 = "CAL_DONE_RESP";
                            endcase
                        end
                        REPAIRCLK: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "REPAIRCLK_INIT_REQ";
                                2: o_tx_msg_no_string_2 = "REPAIRCLK_INIT_RESP";
                                3: o_tx_msg_no_string_2 = "REPAIRCLK_RESULT_REQ";
                                4: o_tx_msg_no_string_2 = "REPAIRCLK_RESULT_RESP";
                                5: o_tx_msg_no_string_2 = "REPAIRCLK_DONE_REQ";
                                6: o_tx_msg_no_string_2 = "REPAIRCLK_DONE_RESP";
                            endcase
                        end
                        REPAIRVAL: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "REPAIRVAL_INIT_REQ";
                                2: o_tx_msg_no_string_2 = "REPAIRVAL_INIT_RESP";
                                3: o_tx_msg_no_string_2 = "REPAIRVAL_RESULT_REQ";
                                4: o_tx_msg_no_string_2 = "REPAIRVAL_RESULT_RESP";
                                5: o_tx_msg_no_string_2 = "REPAIRVAL_DONE_REQ";
                                6: o_tx_msg_no_string_2 = "REPAIRVAL_DONE_RESP"; 
                            endcase
                        end
                        REVERSALMB: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "REVERSALMB_INIT_REQ";
                                2: o_tx_msg_no_string_2 = "REVERSALMB_INIT_RESP";
                                3: o_tx_msg_no_string_2 = "REVERSALMB_CLEAR_ERROR_REQ";
                                4: o_tx_msg_no_string_2 = "REVERSALMB_CLEAR_ERROR_RESP";
                                5: o_tx_msg_no_string_2 = "REVERSALMB_RESULT_REQ";
                                6: o_tx_msg_no_string_2 = "REVERSALMB_RESULT_RESP";
                                7: o_tx_msg_no_string_2 = "REVERSALMB_DONE_REQ";
                                8: o_tx_msg_no_string_2 = "REVERSALMB_DONE_RESP";
                            endcase
                        end
                        REPAIRMB: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "REPAIRMB_START_REQ";
                                2: o_tx_msg_no_string_2 = "REPAIRMB_START_RESP";
                                3: o_tx_msg_no_string_2 = "REPAIRMB_END_REQ";
                                4: o_tx_msg_no_string_2 = "REPAIRMB_END_RESP";
                                5: o_tx_msg_no_string_2 = "REPAIRMB_APPLY_DEGRADE_REQ";
                                6: o_tx_msg_no_string_2 = "REPAIRMB_APPLY_DEGRADE_RESP";
                            endcase
                        end
                    endcase
                end
                MBTRAIN: begin
                    case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_tx_sub_state)
                        VALVREF: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "VALVREF_START_REQ";
                                2: o_tx_msg_no_string_2 = "VALVREF_START_RESP";
                                3: o_tx_msg_no_string_2 = "VALVREF_END_REQ";
                                4: o_tx_msg_no_string_2 = "VALVREF_END_RESP";
                            endcase
                        end
                        DATAVREF: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "DATAVREF_START_REQ";
                                2: o_tx_msg_no_string_2 = "DATAVREF_START_RESP";
                                3: o_tx_msg_no_string_2 = "DATAVREF_END_REQ";
                                4: o_tx_msg_no_string_2 = "DATAVREF_END_RESP";
                            endcase
                        end
                        SPEEDIDLE: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "SPEEDIDLE_DONE_REQ";
                                2: o_tx_msg_no_string_2 = "SPEEDIDLE_DONE_RESP";
                            endcase
                        end
                        TXSELFCAL: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "TXSELFCAL_DONE_REQ";
                                2: o_tx_msg_no_string_2 = "TXSELFCAL_DONE_RESP";
                            endcase
                        end
                        RXCLKCAL: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "RXCLKCAL_START_REQ";
                                2: o_tx_msg_no_string_2 = "RXCLKCAL_START_RESP";
                                3: o_tx_msg_no_string_2 = "RXCLKCAL_DONE_REQ";
                                4: o_tx_msg_no_string_2 = "RXCLKCAL_DONE_RESP";
                            endcase
                        end
                        VALTRAINCENTER: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "VALTRAINCENTER_START_REQ";
                                2: o_tx_msg_no_string_2 = "VALTRAINCENTER_START_RESP";
                                3: o_tx_msg_no_string_2 = "VALTRAINCENTER_DONE_REQ";
                                4: o_tx_msg_no_string_2 = "VALTRAINCENTER_DONE_RESP";
                            endcase
                        end
                        VALTRAINVREF: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "VALTRAINVREF_START_REQ";
                                2: o_tx_msg_no_string_2 = "VALTRAINVREF_START_RESP";
                                3: o_tx_msg_no_string_2 = "VALTRAINVREF_DONE_REQ";
                                4: o_tx_msg_no_string_2 = "VALTRAINVREF_DONE_RESP";
                            endcase
                        end
                        DATATRAINCENTER1: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "DATATRAINCENTER1_START_REQ";
                                2: o_tx_msg_no_string_2 = "DATATRAINCENTER1_START_RESP";
                                3: o_tx_msg_no_string_2 = "DATATRAINCENTER1_END_REQ";
                                4: o_tx_msg_no_string_2 = "DATATRAINCENTER1_END_RESP";
                            endcase
                        end
                        DATATRAINVREF: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "DATATRAINVREF_START_REQ";
                                2: o_tx_msg_no_string_2 = "DATATRAINVREF_START_RESP";
                                3: o_tx_msg_no_string_2 = "DATATRAINVREF_END_REQ";
                                4: o_tx_msg_no_string_2 = "DATATRAINVREF_END_RESP";
                            endcase
                        end
                        RXDESKEW: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "RXDESKEW_START_REQ";
                                2: o_tx_msg_no_string_2 = "RXDESKEW_START_RESP";
                                3: o_tx_msg_no_string_2 = "RXDESKEW_END_REQ";
                                4: o_tx_msg_no_string_2 = "RXDESKEW_END_RESP";
                            endcase
                        end
                        DATATRAINCENTER2: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "DATATRAINCENTER2_START_REQ";
                                2: o_tx_msg_no_string_2 = "DATATRAINCENTER2_START_RESP";
                                3: o_tx_msg_no_string_2 = "DATATRAINCENTER2_END_REQ";
                                4: o_tx_msg_no_string_2 = "DATATRAINCENTER2_END_RESP";
                            endcase
                        end
                        LINKSPEED: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "LINKSPEED_START_REQ";
                                2: o_tx_msg_no_string_2 = "LINKSPEED_START_RESP";
                                3: o_tx_msg_no_string_2 = "LINKSPEED_ERROR_REQ";
                                4: o_tx_msg_no_string_2 = "LINKSPEED_ERROR_RESP";
                                5: o_tx_msg_no_string_2 = "LINKSPEED_EXIT_TO_REPAIR_REQ";
                                6: o_tx_msg_no_string_2 = "LINKSPEED_EXIT_TO_REPAIR_RESP";
                                7: o_tx_msg_no_string_2 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_REQ";
                                8: o_tx_msg_no_string_2 = "LINKSPEED_EXIT_TO_SPEED_DEGRADE_RESP";
                                9: o_tx_msg_no_string_2 = "LINKSPEED_DONE_REQ";
                                10: o_tx_msg_no_string_2 = "LINKSPEED_DONE_RESP";
                                11: o_tx_msg_no_string_2 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_REQ";
                                12: o_tx_msg_no_string_2 = "LINKSPEED_EXIT_TO_PHY_RETRAIN_RESP";
                            endcase
                        end
                        REPAIR: begin
                            case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                                1: o_tx_msg_no_string_2 = "REPAIR_INIT_REQ";
                                2: o_tx_msg_no_string_2 = "REPAIR_INIT_RESP";
                                3: o_tx_msg_no_string_2 = "REPAIR_APPLY_REPAIR_REQ";
                                4: o_tx_msg_no_string_2 = "REPAIR_APPLY_REPAIR_RESP";
                                5: o_tx_msg_no_string_2 = "REPAIR_END_REQ";
                                6: o_tx_msg_no_string_2 = "REPAIR_END_RESP";
                                7: o_tx_msg_no_string_2 = "REPAIR_APPLY_DEGRADE_REQ";
                                8: o_tx_msg_no_string_2 = "REPAIR_APPLY_DEGRADE_RESP";
                            endcase
                        end
                    endcase
                end
                TRAINERROR_HS: begin
                    case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                        15: o_tx_msg_no_string_2 = "TRAINERROR_REQ";
                        14: o_tx_msg_no_string_2 = "TRAINERROR_RESP";
                    endcase
                end
                PHYRETRAIN: begin
                    case (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_encoded_SB_msg)
                        1: o_tx_msg_no_string_2 = "PHYRETRAIN_START_REQ";
                        2: o_tx_msg_no_string_2 = "PHYRETRAIN_START_RESP";
                    endcase
                end
            endcase
        end
        end

        always @ (*) begin
            if (phy0.LTSM_MB_inst.tx_d2c_pt_en) begin
                case (phy0.sb_rx_msg_no)
                    1: i_rx_msg_no_string_1 = "TX_D2C_PT_START_REQ";
                    2: i_rx_msg_no_string_1 = "TX_D2C_PT_START_RESP";
                    3: i_rx_msg_no_string_1 = "LFSR_CLEAR_ERROR_REQ";
                    4: i_rx_msg_no_string_1 = "LFSR_CLEAR_ERROR_RESP";
                    5: i_rx_msg_no_string_1 = "TX_D2C_PT_RESULT_REQ";
                    6: i_rx_msg_no_string_1 = "TX_D2C_PT_RESULT_RESP";
                    7: i_rx_msg_no_string_1 = "TX_D2C_PT_END_REQ";
                    8: i_rx_msg_no_string_1 = "TX_D2C_PT_END_RESP";
                    default: i_rx_msg_no_string_1 = "TX_D2C_PT_UNKOWN";
                endcase

                case (phy0.mb_tx_msg_no)
                    1: o_tx_msg_no_string_1 = "TX_D2C_PT_START_REQ";
                    2: o_tx_msg_no_string_1 = "TX_D2C_PT_START_RESP";
                    3: o_tx_msg_no_string_1 = "LFSR_CLEAR_ERROR_REQ";
                    4: o_tx_msg_no_string_1 = "LFSR_CLEAR_ERROR_RESP";
                    5: o_tx_msg_no_string_1 = "TX_D2C_PT_RESULT_REQ";
                    6: o_tx_msg_no_string_1 = "TX_D2C_PT_RESULT_RESP";
                    7: o_tx_msg_no_string_1 = "TX_D2C_PT_END_REQ";
                    8: o_tx_msg_no_string_1 = "TX_D2C_PT_END_RESP";
                    default: o_tx_msg_no_string_1 = "TX_D2C_PT_UNKOWN";
                endcase
            end

            if (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_Transmitter_initiated_Data_to_CLK_en) begin
                case (phy1.sb_rx_msg_no)
                    1: i_rx_msg_no_string_2 = "TX_D2C_PT_START_REQ";
                    2: i_rx_msg_no_string_2 = "TX_D2C_PT_START_RESP";
                    3: i_rx_msg_no_string_2 = "LFSR_CLEAR_ERROR_REQ";
                    4: i_rx_msg_no_string_2 = "LFSR_CLEAR_ERROR_RESP";
                    5: i_rx_msg_no_string_2 = "TX_D2C_PT_RESULT_REQ";
                    6: i_rx_msg_no_string_2 = "TX_D2C_PT_RESULT_RESP";
                    7: i_rx_msg_no_string_2 = "TX_D2C_PT_END_REQ";
                    8: i_rx_msg_no_string_2 = "TX_D2C_PT_END_RESP";
                    default: i_rx_msg_no_string_2 = "TX_D2C_PT_UNKOWN";
                endcase

                case (phy1.mb_tx_msg_no)
                    1: o_tx_msg_no_string_2 = "TX_D2C_PT_START_REQ";
                    2: o_tx_msg_no_string_2 = "TX_D2C_PT_START_RESP";
                    3: o_tx_msg_no_string_2 = "LFSR_CLEAR_ERROR_REQ";
                    4: o_tx_msg_no_string_2 = "LFSR_CLEAR_ERROR_RESP";
                    5: o_tx_msg_no_string_2 = "TX_D2C_PT_RESULT_REQ";
                    6: o_tx_msg_no_string_2 = "TX_D2C_PT_RESULT_RESP";
                    7: o_tx_msg_no_string_2 = "TX_D2C_PT_END_REQ";
                    8: o_tx_msg_no_string_2 = "TX_D2C_PT_END_RESP";
                    default: o_tx_msg_no_string_2 = "TX_D2C_PT_UNKOWN";
                endcase
            end
        end

        always @ (*) begin
            if (phy0.LTSM_MB_inst.rx_d2c_pt_en) begin
                case (phy0.sb_rx_msg_no)
                    1: i_rx_msg_no_string_1 = "RX_D2C_PT_START_REQ";
                    2: i_rx_msg_no_string_1 = "RX_D2C_PT_START_RESP";
                    3: i_rx_msg_no_string_1 = "LFSR_CLEAR_ERROR_REQ";
                    4: i_rx_msg_no_string_1 = "LFSR_CLEAR_ERROR_RESP";
                    5: i_rx_msg_no_string_1 = "COUNT_DONE_REQ";
                    6: i_rx_msg_no_string_1 = "COUNT_DONE_RESP";
                    7: i_rx_msg_no_string_1 = "RX_D2C_PT_END_REQ";
                    8: i_rx_msg_no_string_1 = "RX_D2C_PT_END_RESP";
                    default: i_rx_msg_no_string_1 = "RX_D2C_PT_UNKOWN";
                endcase

                case (phy0.mb_tx_msg_no)
                    1: o_tx_msg_no_string_1 = "RX_D2C_PT_START_REQ";
                    2: o_tx_msg_no_string_1 = "RX_D2C_PT_START_RESP";
                    3: o_tx_msg_no_string_1 = "LFSR_CLEAR_ERROR_REQ";
                    4: o_tx_msg_no_string_1 = "LFSR_CLEAR_ERROR_RESP";
                    5: o_tx_msg_no_string_1 = "COUNT_DONE_REQ";
                    6: o_tx_msg_no_string_1 = "COUNT_DONE_RESP";
                    7: o_tx_msg_no_string_1 = "RX_D2C_PT_END_REQ";
                    8: o_tx_msg_no_string_1 = "RX_D2C_PT_END_RESP";
                    default: o_tx_msg_no_string_1 = "RX_D2C_PT_UNKOWN";
                endcase
            end

            if (phy1.LTSM_MB_inst.LTSM_TOP_inst.o_MBTRAIN_Receiver_initiated_Data_to_CLK_en) begin
                case (phy1.sb_rx_msg_no)
                    1: i_rx_msg_no_string_2 = "RX_D2C_PT_START_REQ";
                    2: i_rx_msg_no_string_2 = "RX_D2C_PT_START_RESP";
                    3: i_rx_msg_no_string_2 = "LFSR_CLEAR_ERROR_REQ";
                    4: i_rx_msg_no_string_2 = "LFSR_CLEAR_ERROR_RESP";
                    5: i_rx_msg_no_string_2 = "COUNT_DONE_REQ";
                    6: i_rx_msg_no_string_2 = "COUNT_DONE_RESP";
                    7: i_rx_msg_no_string_2 = "RX_D2C_PT_END_REQ";
                    8: i_rx_msg_no_string_2 = "RX_D2C_PT_END_RESP";
                    default: i_rx_msg_no_string_2 = "RX_D2C_PT_UNKOWN";
                endcase

                case (phy1.mb_tx_msg_no)
                    1: o_tx_msg_no_string_2 = "RX_D2C_PT_START_REQ";
                    2: o_tx_msg_no_string_2 = "RX_D2C_PT_START_RESP";
                    3: o_tx_msg_no_string_2 = "LFSR_CLEAR_ERROR_REQ";
                    4: o_tx_msg_no_string_2 = "LFSR_CLEAR_ERROR_RESP";
                    5: o_tx_msg_no_string_2 = "COUNT_DONE_REQ";
                    6: o_tx_msg_no_string_2 = "COUNT_DONE_RESP";
                    7: o_tx_msg_no_string_2 = "RX_D2C_PT_END_REQ";
                    8: o_tx_msg_no_string_2 = "RX_D2C_PT_END_RESP";
                    default: o_tx_msg_no_string_2 = "RX_D2C_PT_UNKOWN";
                endcase
            end
        end
    /*----------------------------------------------------------------------
     * RDI
    ----------------------------------------------------------------------*/
        /* ---------------------------------- PHY 0 --------------------------------- */
        logic [7:0] msgcode_0,msgsubcode_0;
        wire [63:0] o_fifo_data_encoder_0 = phy0.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_ENCODER_inst.o_fifo_data;
        wire fifo_write_en_0    = phy0.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_ENCODER_inst.o_fifo_write_en;
        wire o_msg_valid_0      = phy0.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_DECODER_inst.o_msg_valid;
        wire [3:0] o_msg_no_0   = phy0.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_DECODER_inst.o_msg_no;
        always @ (*) begin
            msgcode_0 = o_fifo_data_encoder_0[21:14];    // phase_0[21:14]
            msgsubcode_0 = o_fifo_data_encoder_0[39:32]; // phase_1[7:0]
            if (fifo_write_en_0) begin
                if (msgcode_0 == 8'h01 && ~lp_cfg_vld_0) begin // Requests
                    case (msgsubcode_0)
                        8'h01: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.Active";
                        8'h04: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.L1";
                        8'h08: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.L2";
                        8'h09: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.LinkReset";
                        8'h0A: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.LinkError";
                        8'h0B: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.Retrain";
                        8'h0C: encoded_rdi_message_0 = "LinkMgmt.RDI.Req.Disable";
                        default: encoded_rdi_message_0 = "Unknown Request";
                    endcase
                end
                else if (msgcode_0 == 8'h02 && ~lp_cfg_vld_0) begin // Responses
                    case (msgsubcode_0)
                        8'h01: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.Active";
                        8'h02: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.PMNAK";
                        8'h04: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.L1";
                        8'h08: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.L2";
                        8'h09: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.LinkReset";
                        8'h0A: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.LinkError";
                        8'h0B: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.Retrain";
                        8'h0C: encoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.Disable";
                        default: encoded_rdi_message_0 = "Unknown Response";
                    endcase
                end
                else if ( lp_cfg_vld_0 && o_fifo_data_encoder_0[4:0] == 5'b10010) begin
                    encoded_rdi_message_0 = "Adapter.Packet.with.no.data";
                end
                else if ( lp_cfg_vld_0 && o_fifo_data_encoder_0[4:0] == 5'b11011) begin
                    encoded_rdi_message_0 = "Adapter.Packet.with.data";
                end else begin
                    encoded_rdi_message_0 = "FALSE!!.Adapter.Packet";
                end
            end 
        end


        always @(*) begin
            if (o_msg_valid_0) begin
                case (o_msg_no_0)
                    4'd1:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.Active";                          
                    4'd2:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.L1";                           
                    4'd3:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.L2";                            
                    4'd4:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.LinkReset";                            
                    4'd5:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.LinkError";                          
                    4'd6:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.Retrain";                            
                    4'd7:    decoded_rdi_message_0 = "LinkMgmt.RDI.Req.Disable";                            
                    4'd8:    decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.Active";                            
                    4'd9:    decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.PMNAK";                           
                    4'd10:   decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.L1";             
                    4'd11:   decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.L2";             
                    4'd12:   decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.LinkReset";              
                    4'd13:   decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.LinkError";             
                    4'd14:   decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.Retrain";             
                    4'd15:   decoded_rdi_message_0 = "LinkMgmt.RDI.Rsp.Disable";             
                    default: decoded_rdi_message_0 = "Unknown Message Number";
                endcase
            end else if (o_pl_cfg_vld_0) begin
                decoded_rdi_message_0 = "Adapter Configuration";
            end
            else begin
                decoded_rdi_message_0 = "No Valid Message";
            end
        end
        /* ---------------------------------- PHY 1 --------------------------------- */
        logic [7:0] msgcode_1,msgsubcode_1;
        wire [63:0] o_fifo_data_encoder_1 = phy1.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_ENCODER_inst.o_fifo_data;
        wire fifo_write_en_1    = phy1.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_ENCODER_inst.o_fifo_write_en;
        wire o_msg_valid_1      = phy1.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_DECODER_inst.o_msg_valid;
        wire [3:0] o_msg_no_1   = phy1.SB_TOP_WRAPPER_inst.u_sb_rdi_wrapper.SB_RDI_DECODER_inst.o_msg_no;
        always @ (*) begin
            msgcode_1 = o_fifo_data_encoder_1[21:14];    // phase_0[21:14]
            msgsubcode_1 = o_fifo_data_encoder_1[39:32]; // phase_1[7:0]
            if (fifo_write_en_1) begin
                if (msgcode_1 == 8'h01 && ~lp_cfg_vld_1) begin // Requests
                    case (msgsubcode_1)
                        8'h01: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.Active";
                        8'h04: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.L1";
                        8'h08: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.L2";
                        8'h09: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.LinkReset";
                        8'h0A: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.LinkError";
                        8'h0B: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.Retrain";
                        8'h0C: encoded_rdi_message_1 = "LinkMgmt.RDI.Req.Disable";
                        default: encoded_rdi_message_1 = "Unknown Request";
                    endcase
                end
                else if (msgcode_1 == 8'h02 && ~lp_cfg_vld_1) begin // Responses
                    case (msgsubcode_1)
                        8'h01: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.Active";
                        8'h02: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.PMNAK";
                        8'h04: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.L1";
                        8'h08: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.L2";
                        8'h09: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.LinkReset";
                        8'h0A: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.LinkError";
                        8'h0B: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.Retrain";
                        8'h0C: encoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.Disable";
                        default: encoded_rdi_message_1 = "Unknown Response";
                    endcase
                end
                else if ( lp_cfg_vld_1 && o_fifo_data_encoder_1[4:0] == 5'b10010) begin
                    encoded_rdi_message_1 = "Adapter.Packet.with.no.data";
                end
                else if ( lp_cfg_vld_1 && o_fifo_data_encoder_1[4:0] == 5'b11011) begin
                    encoded_rdi_message_1 = "Adapter.Packet.with.data";
                end else begin
                    encoded_rdi_message_1 = "FALSE!!.Adapter.Packet";
                end
            end 
        end


        always @(*) begin
            if (o_msg_valid_1) begin
                case (o_msg_no_1)
                    4'd1:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.Active";                          
                    4'd2:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.L1";                           
                    4'd3:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.L2";                            
                    4'd4:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.LinkReset";                            
                    4'd5:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.LinkError";                          
                    4'd6:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.Retrain";                            
                    4'd7:    decoded_rdi_message_1 = "LinkMgmt.RDI.Req.Disable";                            
                    4'd8:    decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.Active";                            
                    4'd9:    decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.PMNAK";                           
                    4'd10:   decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.L1";             
                    4'd11:   decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.L2";             
                    4'd12:   decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.LinkReset";              
                    4'd13:   decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.LinkError";             
                    4'd14:   decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.Retrain";             
                    4'd15:   decoded_rdi_message_1 = "LinkMgmt.RDI.Rsp.Disable";             
                    default: decoded_rdi_message_1 = "Unknown Message Number";
                endcase
            end else if (o_pl_cfg_vld_1) begin
                decoded_rdi_message_1 = "Adapter Configuration";
            end
            else begin
                decoded_rdi_message_1 = "No Valid Message";
            end
        end
endmodule
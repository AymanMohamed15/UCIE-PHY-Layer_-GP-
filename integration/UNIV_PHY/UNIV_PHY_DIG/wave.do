onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/phy0/i_mb_clk
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/phy0/LTSM_MB_inst/i_rx_data_bus
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/i_rx_msg_valid
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/i_rx_msg_no_string_1
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/i_busy
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/o_tx_msg_valid
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/o_tx_msg_no_string_1
add wave -noupdate -expand -group MODULE -expand -group LTSM -color {Medium Violet Red} /top/phy0/LTSM_MB_inst/o_tx_data_bus
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/sub_state_1
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/CS_top_1
add wave -noupdate -expand -group MODULE -expand -group LTSM /top/NS_top_1
add wave -noupdate -group interface /top/sb_intf/clk
add wave -noupdate -group interface -color {Dark Orchid} /top/i_rx_msg_no_string_1
add wave -noupdate -group interface -color {Cornflower Blue} /top/sb_intf/deser_data
add wave -noupdate -group interface -color Magenta /top/sb_intf/de_ser_done
add wave -noupdate -group interface -color {Dark Orchid} /top/o_tx_msg_no_string_1
add wave -noupdate -group interface -color {Cornflower Blue} /top/sb_intf/fifo_data_out
add wave -noupdate -group interface /top/sb_intf/clk_ser_en
add wave -noupdate -group {RDI intf} /top/RDI_intf/i_clk
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_irdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_state_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_linkerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_stallack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_wake_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_state_sts
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_inband_pres
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_error
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_nferror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trainerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_phyinrecenter
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_speedmode
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_stallreq
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_wake_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_lnk_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/i_clk
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_irdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_state_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_linkerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_stallack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_clk_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_wake_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_state_sts
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_inband_pres
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_error
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_nferror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trainerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_phyinrecenter
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_speedmode
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_stallreq
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_clk_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_wake_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_lnk_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/i_clk
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_irdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_state_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_linkerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_stallack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_clk_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_wake_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_state_sts
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_inband_pres
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_error
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_nferror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trainerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_phyinrecenter
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_speedmode
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_stallreq
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_clk_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_wake_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_lnk_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/i_clk
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_irdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_state_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_linkerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_stallack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_clk_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_wake_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/lp_cfg_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trdy
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_valid
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_data
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_retimer_crd
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_state_sts
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_inband_pres
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_error
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_nferror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_trainerror
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_phyinrecenter
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_speedmode
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_stallreq
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_clk_req
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_wake_ack
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_lnk_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_vld
add wave -noupdate -group {RDI intf} /top/RDI_intf/pl_cfg_crd
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/WIDTH
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/IDLE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/Clear_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_rst_n
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_scrambeling_pattern
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_functional_tx_lanes
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_reversal
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_Lfsr_tx_done
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_per_lane
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/current_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_reg
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_changed
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_enable_frame
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/lane_reversal_enabled
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_20
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_22
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/WIDTH
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/IDLE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/Clear_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_rst_n
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_scrambeling_pattern
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_functional_tx_lanes
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_reversal
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_Lfsr_tx_done
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_per_lane
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/current_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_reg
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_changed
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_enable_frame
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/lane_reversal_enabled
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_20
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_22
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/WIDTH
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/IDLE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/Clear_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_rst_n
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_scrambeling_pattern
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_functional_tx_lanes
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_reversal
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_Lfsr_tx_done
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_per_lane
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/current_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_reg
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_changed
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_enable_frame
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/lane_reversal_enabled
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_20
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_22
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/WIDTH
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/IDLE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/Clear_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/LANE_ID_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_rst_n
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_scrambeling_pattern
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_functional_tx_lanes
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_enable_reversal
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_8
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_9
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_10
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_11
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_12
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_13
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_14
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_Lfsr_tx_done
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_lfsr
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/counter_per_lane
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/current_state
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_reg
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/i_state_changed
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_enable_frame
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/tx_lfsr_lane_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_0_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_1_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_2_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_3_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_4_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_5_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_6_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/o_lane_7_23
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/lane_reversal_enabled
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_0
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_2
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_3
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_5
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_6
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/seed_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_1
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_4
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_7
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_15
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_20
add wave -noupdate -group {LFSR TX} /top/phy0/LTSM_MB_inst/LFSR_TX_inst/x_22
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/WIDTH
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/IDLE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/CLEAR_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_clk
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_rst_n
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_state
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_functional_rx_lanes
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_Descrambeling_pattern
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_buffer
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/enable_pattern_comparitor
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_0_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_1_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_2_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_3_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_4_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_5_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_6_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_7_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/delay_counter
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/cont
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/WIDTH
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/IDLE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/CLEAR_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_clk
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_rst_n
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_state
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_functional_rx_lanes
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_Descrambeling_pattern
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_buffer
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/enable_pattern_comparitor
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_0_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_1_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_2_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_3_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_4_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_5_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_6_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_7_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/delay_counter
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/cont
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/WIDTH
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/IDLE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/CLEAR_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_clk
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_rst_n
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_state
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_functional_rx_lanes
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_Descrambeling_pattern
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_buffer
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/enable_pattern_comparitor
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_0_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_1_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_2_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_3_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_4_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_5_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_6_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_7_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/delay_counter
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/cont
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/WIDTH
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/IDLE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/CLEAR_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PATTERN_LFSR
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/PER_LANE_IDE
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_8_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/DEGRADE_LANES_0_TO_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/LANE_ID_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_clk
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_rst_n
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_state
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_functional_rx_lanes
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_Descrambeling_pattern
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_enable_buffer
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/i_data_in_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/enable_pattern_comparitor
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_0_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_1_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_2_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_3_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_4_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_5_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_6_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/o_lane_7_23
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/delay_counter
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/cont
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/rx_lfsr_lane_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_7
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_8
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_9
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_10
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_11
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_12
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_13
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_14
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/temp_Data_by_15
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_0
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_1
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_2
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_3
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_4
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_5
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_6
add wave -noupdate -group {LFSR RX} /top/phy0/LTSM_MB_inst/LFSR_RX_inst/seed_7
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_8BIT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN_CODE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/MAX_COUNT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/IDLE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_FRAMING
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_clk
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_rst_n
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/Valid_pattern_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/valid_frame_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_done
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/enable_detector
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/counter
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/current_state
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_8BIT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN_CODE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/MAX_COUNT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/IDLE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_FRAMING
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_clk
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_rst_n
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/Valid_pattern_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/valid_frame_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_done
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/enable_detector
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/counter
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/current_state
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_8BIT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN_CODE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/MAX_COUNT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/IDLE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_FRAMING
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_clk
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_rst_n
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/Valid_pattern_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/valid_frame_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_done
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/enable_detector
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/counter
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/current_state
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_8BIT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN_CODE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/MAX_COUNT
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/IDLE
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_FRAMING
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_clk
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_rst_n
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/Valid_pattern_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/valid_frame_enable
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_done
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/enable_detector
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/TVLD_L
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/counter
add wave -noupdate -group {Valid CTRL} /top/phy0/LTSM_MB_inst/VALTRAIN_CTRL_inst/current_state
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_8BIT
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_PATTERN
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MIN_CONSECUTIVE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MAX_ITERATIONS
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ERROR_MAX
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ITER_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/CONSEC_16
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/IDLE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_clk
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_rst_n
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/RVLD_L
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_threshold
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_cons
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_detector
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/detection_result
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/o_valid_frame_detect
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/consec_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mismatch_count
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mode_select
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_8BIT
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_PATTERN
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MIN_CONSECUTIVE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MAX_ITERATIONS
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ERROR_MAX
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ITER_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/CONSEC_16
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/IDLE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_clk
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_rst_n
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/RVLD_L
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_threshold
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_cons
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_detector
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/detection_result
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/o_valid_frame_detect
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/consec_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mismatch_count
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mode_select
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_8BIT
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_PATTERN
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MIN_CONSECUTIVE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MAX_ITERATIONS
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ERROR_MAX
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ITER_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/CONSEC_16
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/IDLE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_clk
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_rst_n
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/RVLD_L
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_threshold
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_cons
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_detector
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/detection_result
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/o_valid_frame_detect
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/consec_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mismatch_count
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mode_select
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_8BIT
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_PATTERN
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MIN_CONSECUTIVE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/MAX_ITERATIONS
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ERROR_MAX
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/ITER_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/CONSEC_16
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/IDLE
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_clk
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_rst_n
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/RVLD_L
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_threshold
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_cons
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_128
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_detector
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/detection_result
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/o_valid_frame_detect
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/consec_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_counter
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mismatch_count
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/mode_select
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match0
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match1
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match2
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/match3
add wave -noupdate -group {Valid DETECT} /top/phy0/LTSM_MB_inst/PATTERN_VALID_DET_inst/i
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/WIDTH
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/IDLE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/CLEAR_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PATTERN_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PER_LANE_IDE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_clk
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_rst_n
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Type_comp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_state
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/enable_pattern_comparitor
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_14
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_15
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_15
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_0
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_0
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_14
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_per_lane
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_aggregate
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_done
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/DONE_PATTERN
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_counter
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_success_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/j
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_temp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/mismatch_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_or
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/comb_bit_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/negedge_enable_buffer_detected
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/cond_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/WIDTH
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/IDLE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/CLEAR_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PATTERN_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PER_LANE_IDE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_clk
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_rst_n
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Type_comp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_state
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/enable_pattern_comparitor
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_14
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_15
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_15
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_0
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_0
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_14
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_per_lane
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_aggregate
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_done
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/DONE_PATTERN
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_counter
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_success_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/j
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_temp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/mismatch_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_or
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/comb_bit_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/negedge_enable_buffer_detected
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/cond_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/WIDTH
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/IDLE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/CLEAR_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PATTERN_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PER_LANE_IDE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_clk
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_rst_n
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Type_comp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_state
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/enable_pattern_comparitor
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_14
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_15
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_15
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_0
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_0
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_14
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_per_lane
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_aggregate
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_done
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/DONE_PATTERN
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_counter
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_success_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/j
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_temp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/mismatch_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_or
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/comb_bit_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/negedge_enable_buffer_detected
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/cond_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/WIDTH
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/IDLE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/CLEAR_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PATTERN_LFSR
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/PER_LANE_IDE
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_clk
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_rst_n
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Type_comp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_state
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/enable_pattern_comparitor
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_14
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_15
add wave -noupdate -group {Pattern COMP} -color {Cornflower Blue} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_15
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_0
add wave -noupdate -group {Pattern COMP} -color Orange /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_0
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_3
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_4
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_5
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_6
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_7
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_8
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_9
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_10
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_11
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_12
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_13
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_14
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_per_lane
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_aggregate
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_done
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/DONE_PATTERN
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_error_counter
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_success_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/j
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_temp
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/mismatch_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_1
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/lane_mismatch_part_2
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/bit_mismatch_or
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/comb_bit_count
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer_reg
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/negedge_enable_buffer_detected
add wave -noupdate -group {Pattern COMP} /top/phy0/LTSM_MB_inst/PATTERN_COMP_inst/cond_1
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_phy
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_d2d
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_without_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_with_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/IDLE
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/FIFO_READ
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/DECODING
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/RDI_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ADAPTER_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ERROR_REPORT
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITHOUT_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITH_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_rst_n
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk_is_ungated
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_rising_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_nerror
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_wake_adapter
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_no
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/CS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/NS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/decoded_opcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/clk_is_ungated_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase1_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/data_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/deser_done_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/pl_cfg_vld_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_wr_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_rd_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_empty
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_data_out
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgsubcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/falling_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/rising_edge_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_phy
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_d2d
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_without_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_with_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/IDLE
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/FIFO_READ
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/DECODING
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/RDI_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ADAPTER_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ERROR_REPORT
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITHOUT_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITH_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_rst_n
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk_is_ungated
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_rising_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_nerror
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_wake_adapter
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_no
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/CS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/NS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/decoded_opcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/clk_is_ungated_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase1_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/data_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/deser_done_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/pl_cfg_vld_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_wr_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_rd_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_empty
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_data_out
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgsubcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/falling_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/rising_edge_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_phy
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_d2d
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_without_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_with_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/IDLE
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/FIFO_READ
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/DECODING
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/RDI_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ADAPTER_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ERROR_REPORT
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITHOUT_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITH_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_rst_n
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk_is_ungated
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_rising_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_nerror
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_wake_adapter
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_no
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/CS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/NS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/decoded_opcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/clk_is_ungated_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase1_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/data_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/deser_done_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/pl_cfg_vld_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_wr_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_rd_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_empty
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_data_out
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgsubcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/falling_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/rising_edge_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_phy
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid_d2d
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_without_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/opcode_msg_with_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/IDLE
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/FIFO_READ
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/DECODING
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/RDI_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ADAPTER_MSG
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ERROR_REPORT
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITHOUT_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITH_DATA
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_rst_n
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk_is_ungated
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_done
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_data
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_rising_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_nerror
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_wake_adapter
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_no
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/CS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/NS
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/decoded_opcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/clk_is_ungated_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/header_phase1_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/data_phase0_is_sent
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/deser_done_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/pl_cfg_vld_reg
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_wr_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_rd_en
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_empty
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_full
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/fifo_data_out
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/msgsubcode
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/dstid
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/falling_edge_pl_cfg_vld
add wave -noupdate -group {SB RDI DECODE} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/rising_edge_deser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/RESET
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/FINISH_RESET
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/SBINIT
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/MBINIT
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/MBTRAIN
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/LINKINIT
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/ACTIVE
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR_HS
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/LINKMGMT_RETRAIN
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/PHYRETRAIN
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/L1
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/L2
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_dig_clk
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_clk_is_ungated
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_pl_inband_pres
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_sub_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_bus
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_stop_cnt
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_nerror
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_wake_adapter
add wave -noupdate -group {SB Wrapper} -color Magenta -radix unsigned /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no_rdi
add wave -noupdate -group {SB Wrapper} -color Magenta /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_msg_done_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Orchid} /top/phy0/SB_TOP_WRAPPER_inst/o_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Orchid} -radix unsigned /top/phy0/SB_TOP_WRAPPER_inst/o_msg_no_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_start_pattern_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_time_out
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_busy
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_rx_sb_start_pattern
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_parity_error
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_adapter_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_TXCKSB
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done_sync
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_full
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/read_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/dont_send_zeros
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/delete_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/deser_done_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/deser_done_mb
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_tx_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_mb_rst_n
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/ltsm_in_training
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_done_sampled
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_stop_cnt
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/RESET
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/FINISH_RESET
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/SBINIT
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/MBINIT
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/MBTRAIN
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/LINKINIT
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/ACTIVE
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR_HS
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/LINKMGMT_RETRAIN
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/PHYRETRAIN
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/L1
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/L2
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_dig_clk
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_clk_is_ungated
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB Wrapper} -color Blue /top/phy0/SB_TOP_WRAPPER_inst/deser_done_rdi
add wave -noupdate -group {SB Wrapper} -color Blue -itemcolor Blue -label rdi_msg_no_from_dut_to_sb /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no_rdi
add wave -noupdate -group {SB Wrapper} -color Blue -itemcolor Blue -label rdi_msg_valid_from_dut_to_sb /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} -itemcolor Blue -label rdi_msg_done_from_sb_to_dut /top/phy0/SB_TOP_WRAPPER_inst/o_msg_done_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label rdi_msg_valid_from_sb_to_dut /top/phy0/SB_TOP_WRAPPER_inst/o_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label rdi_msg_no_from_sb_to_dut -radix unsigned /top/phy0/SB_TOP_WRAPPER_inst/o_msg_no_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_pl_inband_pres
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_sub_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_bus
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_stop_cnt
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_nerror
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_wake_adapter
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_start_pattern_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_time_out
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_busy
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_rx_sb_start_pattern
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_parity_error
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_adapter_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_TXCKSB
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done_sync
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_full
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/read_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/dont_send_zeros
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/delete_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/deser_done_mb
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_tx_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_mb_rst_n
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/ltsm_in_training
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_done_sampled
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_stop_cnt
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/RESET
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/FINISH_RESET
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/SBINIT
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/MBINIT
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/MBTRAIN
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/LINKINIT
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/ACTIVE
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR_HS
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/LINKMGMT_RETRAIN
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/PHYRETRAIN
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/L1
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/L2
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_dig_clk
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_clk_is_ungated
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_pl_inband_pres
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_sub_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_bus
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_stop_cnt
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_nerror
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_wake_adapter
add wave -noupdate -group {SB Wrapper} -color Magenta -radix unsigned /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no_rdi
add wave -noupdate -group {SB Wrapper} -color Magenta /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_msg_done_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Orchid} /top/phy0/SB_TOP_WRAPPER_inst/o_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Orchid} -radix unsigned /top/phy0/SB_TOP_WRAPPER_inst/o_msg_no_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_start_pattern_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_time_out
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_busy
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_rx_sb_start_pattern
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_parity_error
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_adapter_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_TXCKSB
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done_sync
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_full
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/read_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/dont_send_zeros
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/delete_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/deser_done_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/deser_done_mb
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_tx_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_mb_rst_n
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/ltsm_in_training
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_done_sampled
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_stop_cnt
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/RESET
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/FINISH_RESET
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/SBINIT
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/MBINIT
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/MBTRAIN
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/LINKINIT
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/ACTIVE
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR_HS
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/TRAINERROR
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/LINKMGMT_RETRAIN
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/PHYRETRAIN
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/L1
add wave -noupdate -group {SB Wrapper} -color Yellow /top/phy0/SB_TOP_WRAPPER_inst/L2
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_dig_clk
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_lp_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_clk_is_ungated
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_adapter_is_waked_up
add wave -noupdate -group {SB Wrapper} -color Blue /top/phy0/SB_TOP_WRAPPER_inst/deser_done_rdi
add wave -noupdate -group {SB Wrapper} -color Blue -itemcolor Blue -label rdi_msg_no_from_dut_to_sb /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no_rdi
add wave -noupdate -group {SB Wrapper} -color Blue -itemcolor Blue -label rdi_msg_valid_from_dut_to_sb /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} -itemcolor Blue -label rdi_msg_done_from_sb_to_dut /top/phy0/SB_TOP_WRAPPER_inst/o_msg_done_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label rdi_msg_valid_from_sb_to_dut /top/phy0/SB_TOP_WRAPPER_inst/o_msg_valid_rdi
add wave -noupdate -group {SB Wrapper} -color {Medium Violet Red} -itemcolor {Medium Violet Red} -label rdi_msg_no_from_sb_to_dut -radix unsigned /top/phy0/SB_TOP_WRAPPER_inst/o_msg_no_rdi
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_pl_inband_pres
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_sub_state
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_data_bus
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_stop_cnt
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_deser_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_nerror
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_vld
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_pl_cfg_crd
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_wake_adapter
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_start_pattern_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_time_out
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_busy
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_rx_sb_start_pattern
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_parity_error
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_adapter_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_tx_point_sweep_test
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_no
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_msg_info
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_mb_fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_TXCKSB
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fsm_ser_done_sync
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/i_fifo_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/rdi_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/mb_tx_fifo_write_en
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_empty
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/fifo_full
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/read_enable
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/dont_send_zeros
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/delete_data
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/deser_done_mb
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_start_pattern_req
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_tx_msg_valid
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_mb_rst_n
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/ltsm_in_training
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/o_ser_done_sampled
add wave -noupdate -group {SB Wrapper} /top/phy0/SB_TOP_WRAPPER_inst/sync_sb_stop_cnt
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/IDLE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/PATTERN_GEN
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/LTSM_ENCODE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/FRAMING
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/END_MESSAGE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_clk
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rst_n
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_req
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_msg_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_data_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_d_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_header_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_packet_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rx_sb_rsp_delivered
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_done
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable
add wave -noupdate -expand -group {TX FSM SB} -color {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_busy
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/cs
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/ns
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_pattern_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_start_pattern_done_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/go_to_idle_counter
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/IDLE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/PATTERN_GEN
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/LTSM_ENCODE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/FRAMING
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/END_MESSAGE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_clk
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rst_n
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_req
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_msg_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_data_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_d_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_header_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_packet_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rx_sb_rsp_delivered
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_done
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable
add wave -noupdate -expand -group {TX FSM SB} -color {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_busy
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/cs
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/ns
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_pattern_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_start_pattern_done_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/go_to_idle_counter
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/IDLE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/PATTERN_GEN
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/LTSM_ENCODE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/FRAMING
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/END_MESSAGE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_clk
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rst_n
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_req
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_msg_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_data_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_d_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_header_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_packet_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rx_sb_rsp_delivered
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_done
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable
add wave -noupdate -expand -group {TX FSM SB} -color {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_busy
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/cs
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/ns
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_pattern_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_start_pattern_done_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/go_to_idle_counter
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/IDLE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/PATTERN_GEN
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/LTSM_ENCODE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/FRAMING
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/END_MESSAGE
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_clk
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rst_n
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_req
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_msg_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_data_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_d_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_header_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_packet_valid
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rx_sb_rsp_delivered
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_done
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable
add wave -noupdate -expand -group {TX FSM SB} -color {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_busy
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/cs
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/ns
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_pattern_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_start_pattern_done_next
add wave -noupdate -expand -group {TX FSM SB} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/go_to_idle_counter
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/CLK
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/rst_n
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_MBINIT_Start_en
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_RX_SbMessage
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_falling_edge_busy
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_msg_valid
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_TX_VoltageSwing
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_MaxDataRate
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_RX_ClockMode
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_RX_PhaseClock
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_VoltageSwing
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_MaxDataRate
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_ClockMode
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_PhaseClock
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_MBINIT_PARAM_end
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_ValidOutDatat_Module
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_ValidDataFieldParameters
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_train_error_req
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_SbMessage
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_Final_MaxDataRate
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_Final_ClockMode
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_Final_ClockPhase
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/CLK
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/rst_n
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_MBINIT_Start_en
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_RX_SbMessage
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_falling_edge_busy
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_msg_valid
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_TX_VoltageSwing
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_MaxDataRate
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_RX_ClockMode
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/i_RX_PhaseClock
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_VoltageSwing
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_MaxDataRate
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_ClockMode
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_PhaseClock
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_MBINIT_PARAM_end
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_ValidOutDatat_Module
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_ValidDataFieldParameters
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_train_error_req
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_TX_SbMessage
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_Final_MaxDataRate
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_Final_ClockMode
add wave -noupdate -group param /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/o_Final_ClockPhase
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/lclk
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/sys_rst
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rdi_controller_choosen_bring_up
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_sb_message
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_msg_valid
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_done_send_message
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/i_lp_state_req
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_sb_message
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_msg_valid
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_General_Bring_Up_done
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/General_Bring_Up_done_RX
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/General_Bring_Up_done_TX
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_msg_valid_TX
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_msg_valid_RX
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_sb_message_output_from_RX
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_sb_message_output_from_TX
add wave -noupdate -group {rdi bringup} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_sb_message
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Nop
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Active
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ActivePMNAK
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L1
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L2
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkReset
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkError
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Retrain
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Disable
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_HANDLE_FOR_BRING_UP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Active_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/STALL_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/CLK_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKTRAINING
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkError_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/PM_BRING_UP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkReset_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Retrain_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Disable_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L1_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L2_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKRESET_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKERROR_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/RETRAIN_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/DISABLE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/PM_NAK_MSG
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L1_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L2_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKRESET_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKERROR_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/RETRAIN_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/DISABLE_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_active
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_linkreset
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_linkerror
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_disabled
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_retrain
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/lclk
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/sys_rst
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_rx_sb_message
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_rx_msg_valid
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_reset_only_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_error_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_inband_pres_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_train_error_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_link_speed_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_lp_state_req
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_clk_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_wake_adapter
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_stall_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_bring_up_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_bring_up_pm_entry_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_lp_linkerror
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pmnack_from_pm_entry
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_linkerror_timeout
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_l1_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_l2_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_active_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_training_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_linkerror_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_retrain_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_rdi_controller_choosen_bring_up
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_pm_entry_bring_up
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_pl_state_sts
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_clk_hand
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_stall_hand
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_linkerror_timer
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_exit_from_l1
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_exit_from_l2
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_fsm_cs
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_just_send_responce
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_rdi_to_ltsm_go_to_reset
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LINKERROR_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LINKRESET_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_DISABLE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_RETRAIN_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_ACTIVE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_L1_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_L2_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l1
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l2
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LTSM_trainerror
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/lp_state_req_reg
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_ACTIVE
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_LINKRESET
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_DISABLED
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/CS
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NS
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Nop
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Active
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ActivePMNAK
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L1
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L2
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkReset
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkError
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Retrain
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Disable
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_HANDLE_FOR_BRING_UP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Active_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/STALL_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/CLK_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKTRAINING
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkError_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/PM_BRING_UP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkReset_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Retrain_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/Disable_HAND
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L1_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L2_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKRESET_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKERROR_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/RETRAIN_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/DISABLE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/PM_NAK_MSG
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L1_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/L2_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKRESET_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKERROR_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/RETRAIN_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/DISABLE_RSP
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_active
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_linkreset
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_linkerror
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_disabled
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_retrain
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/lclk
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/sys_rst
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_rx_sb_message
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_rx_msg_valid
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_reset_only_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_error_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_inband_pres_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_train_error_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_link_speed_from_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_lp_state_req
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_clk_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_wake_adapter
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_stall_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_bring_up_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_bring_up_pm_entry_done
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_lp_linkerror
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pmnack_from_pm_entry
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/i_linkerror_timeout
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_l1_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_l2_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_active_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_training_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_linkerror_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_retrain_from_rdi_to_ltsm
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_rdi_controller_choosen_bring_up
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_pm_entry_bring_up
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_pl_state_sts
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_clk_hand
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_stall_hand
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_linkerror_timer
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_exit_from_l1
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_exit_from_l2
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_fsm_cs
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_just_send_responce
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/o_rdi_to_ltsm_go_to_reset
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LINKERROR_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LINKRESET_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_DISABLE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_RETRAIN_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_ACTIVE_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_L1_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_L2_REQ
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l1
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l2
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LTSM_trainerror
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/lp_state_req_reg
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_ACTIVE
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_LINKRESET
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_DISABLED
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/CS
add wave -noupdate -group RDI_CONTROLLER /top/phy0/RDI_TOP_inst/u_rdi_controller/NS
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/clk
add wave -noupdate -group vref_cal -color {Medium Violet Red} /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_en
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/rst_n
add wave -noupdate -group vref_cal -color {Violet Red} /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_decoded_sideband_message
add wave -noupdate -group vref_cal -color {Violet Red} /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_sideband_valid
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_rx_lanes_result
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_mainband_or_valtrain_test
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_busy
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_falling_edge_busy
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/i_test_ack
add wave -noupdate -group vref_cal -color Blue /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_sideband_message
add wave -noupdate -group vref_cal -color Blue /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_valid
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_mainband_or_valtrain_test
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_test_ack
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_pt_en
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_eye_width_sweep_en
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_valid_tx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_sideband_message_tx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_pt_en_tx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_eye_width_sweep_en_tx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_test_ack_tx
add wave -noupdate -group vref_cal -color Cyan /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_valid_rx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_sideband_message_rx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_pt_en_rx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_eye_width_sweep_en_rx
add wave -noupdate -group vref_cal /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/o_test_ack_rx
add wave -noupdate -group LTSM_ENs /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_EN
add wave -noupdate -group LTSM_ENs /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_EN
add wave -noupdate -group LTSM_ENs /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_EN
add wave -noupdate -group LTSM_ENs /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/TRAINERROR_EN
add wave -noupdate -group LTSM_ENs /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/PHYRETRAIN_EN
add wave -noupdate /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l2_due_to_partner
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_active
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_linkreset
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_linkerror
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_disabled
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/choose_bring_up_retrain
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/lclk
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/sys_rst
add wave -noupdate -group {RDI FSM} -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/i_rx_sb_message
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_rx_msg_valid
add wave -noupdate -group {RDI FSM} -color Magenta /top/decoded_rdi_message_0
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_msg_valid
add wave -noupdate -group {RDI FSM} -color Blue /top/encoded_rdi_message_0
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_reset_only_from_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_error_from_ltsm
add wave -noupdate -group {RDI FSM} -color Turquoise /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_inband_pres_from_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_train_error_from_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pl_link_speed_from_ltsm
add wave -noupdate -group {RDI FSM} -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/RDI_intf/lp_clk_ack
add wave -noupdate -group {RDI FSM} -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/RDI_intf/pl_clk_req
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow /top/phy0/RDI_TOP_inst/u_rdi_controller/i_lp_state_req
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow /top/phy0/RDI_TOP_inst/u_rdi_controller/o_pl_state_sts
add wave -noupdate -group {RDI FSM} -color {Sky Blue} -itemcolor {Sky Blue} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_lp_wake_req
add wave -noupdate -group {RDI FSM} -color {Sky Blue} -itemcolor {Sky Blue} /top/phy0/RDI_TOP_inst/u_wake_handshake/o_pl_wake_ack
add wave -noupdate -group {RDI FSM} -color Green -itemcolor Green /top/phy0/RDI_TOP_inst/i_lp_stallack
add wave -noupdate -group {RDI FSM} -color Green -itemcolor Green /top/phy0/RDI_TOP_inst/o_pl_stallreq
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_clk_done
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_wake_adapter
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_stall_done
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_bring_up_done
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_bring_up_pm_entry_done
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_lp_linkerror
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_pmnack_from_pm_entry
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/i_linkerror_timeout
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_l1_from_rdi_to_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_l2_from_rdi_to_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_active_from_rdi_to_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_training_from_rdi_to_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_linkerror_from_rdi_to_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_go_to_retrain_from_rdi_to_ltsm
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_rdi_controller_choosen_bring_up
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_pm_entry_bring_up
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_clk_hand
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_stall_hand
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_start_linkerror_timer
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_exit_from_l1
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_exit_from_l2
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_just_send_responce
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/o_rdi_to_ltsm_go_to_reset
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LINKERROR_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LINKRESET_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_DISABLE_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_RETRAIN_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_ACTIVE_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_L1_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_L2_REQ
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l1
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l1_due_to_partner
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/exit_from_l2
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/registered_LTSM_trainerror
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_ACTIVE
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_LINKRESET
add wave -noupdate -group {RDI FSM} /top/phy0/RDI_TOP_inst/u_rdi_controller/NOP_to_DISABLED
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/CS
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/NS
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Nop
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Active
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/ActivePMNAK
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/L1
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/L2
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkReset
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkError
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Retrain
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Disable
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/ACTIVE_HANDLE_FOR_BRING_UP
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Active_HAND
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/STALL_HAND
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/CLK_HAND
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/LINKTRAINING
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkError_HAND
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/PM_BRING_UP
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/LinkReset_HAND
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Retrain_HAND
add wave -noupdate -group {RDI FSM} -color Yellow -itemcolor Yellow -radix unsigned /top/phy0/RDI_TOP_inst/u_rdi_controller/Disable_HAND
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/COUNTING_4ms_USING_100mhz
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/COUNTING_4ms_USING_200mhz
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/i_clk
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/i_rst_n
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/i_count_en
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/i_clk_div_ratio
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/o_reset_count_done
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/reset_counter
add wave -noupdate -group reset_counter /top/phy0/RDI_TOP_inst/u_reset_counter/continue_counting
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/RESET
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/L1
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/L2
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/LINKRESET
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/DISABLED
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/UNGATING
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/GATING
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_clk
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_rst_n
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_lp_state_req
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_lp_wake_req
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_pl_state_sts
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_pl_inband_pres
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_sb_msg_valid
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_ltsm_is_waked_up
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_ltsm_in_reset
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/i_sb_start_training
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/o_clk_gate_en
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/o_pl_wake_ack
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/CS
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/NS
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/pl_inbabd_pres_reg
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/stop_reset_condition
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/pl_state_sts_reg
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/gating_condition_reg
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/rising_edge_pl_inband_pres
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/falling_edge_pl_inband_pres
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/reset_condition
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/pl_state_sts_changed
add wave -noupdate -group {wake block} /top/phy0/RDI_TOP_inst/u_wake_handshake/gating_condition
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_clk
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_rst_n
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_start_pattern_req
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_data_valid
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_msg_valid
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_state
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_sub_state
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_msg_no
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_msg_info
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_data_bus
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_stop_cnt
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_tx_point_sweep_test_en
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_tx_point_sweep_test
add wave -noupdate -group {MB sideband} -color Cyan /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_de_ser_done
add wave -noupdate -group {MB sideband} -color Cyan /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_deser_data
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_fifo_full
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_ser_done
add wave -noupdate -group {MB sideband} -color {Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_start_pattern_done
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_time_out
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_busy
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_rx_sb_start_pattern
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_msg_valid
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_parity_error
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_adapter_enable
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_tx_point_sweep_test_en
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_tx_point_sweep_test
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_msg_no
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_msg_info
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_data
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_tx_data_out
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_write_enable
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_sb_rsp_delivered
add wave -noupdate -group {MB sideband} /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_sb_pattern_samp_done
add wave -noupdate -group {pm block} -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_tx_inst/LinkMgmt_RDI_Req_L1
add wave -noupdate -group {pm block} -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_tx_inst/LinkMgmt_RDI_Req_L2
add wave -noupdate -group {pm block} -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_tx_inst/LinkMgmt_RDI_Rsp_PMNAK
add wave -noupdate -group {pm block} -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_tx_inst/LinkMgmt_RDI_Rsp_L1
add wave -noupdate -group {pm block} -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_tx_inst/LinkMgmt_RDI_Rsp_L2
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/i_clk
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/i_rst_n
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/i_en
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/i_req_L1_or_L2
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/i_clk_div_ratio
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/i_msg_done
add wave -noupdate -group {pm block} -color Blue /top/phy0/RDI_TOP_inst/u_pm_entry/i_msg_valid
add wave -noupdate -group {pm block} -color Blue -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/i_msg_no
add wave -noupdate -group {pm block} -color {Medium Violet Red} /top/phy0/RDI_TOP_inst/u_pm_entry/o_msg_valid
add wave -noupdate -group {pm block} -color {Medium Violet Red} -radix unsigned /top/phy0/RDI_TOP_inst/u_pm_entry/o_msg_no
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/o_test_done
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/o_pm_nak
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_tx_msg_valid
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_rx_msg_valid
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_tx_test_done
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_rx_test_done
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_tx_force_exit
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_tx_msg_no
add wave -noupdate -group {pm block} /top/phy0/RDI_TOP_inst/u_pm_entry/pm_rx_msg_no
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_clk
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rst_n
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_req
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_msg_valid
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_data_valid
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_d_valid
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_header_valid
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_packet_valid
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rx_sb_rsp_delivered
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_done
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_busy
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/cs
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/ns
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/IDLE
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/PATTERN_GEN
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/LTSM_ENCODE
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/FRAMING
add wave -noupdate -group sb_tx_fsm -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/END_MESSAGE
add wave -noupdate -group sb_tx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/go_to_idle_counter
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/IDLE
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/PATTERN_DETECT
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/GENERAL_DECODE
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/HEADER_DECODE
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/DATA_DECODE
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_clk
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_rst_n
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_de_ser_done
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_header_valid
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_data_valid
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_deser_data
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_start_pattern
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_pattern_samp_done
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_msg_valid
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_header_enable
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_data_enable
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_parity_error
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_rsp_delivered
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_adapter_enable
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/cs
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/ns
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_pattern_samp_done_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_msg_valid_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_header_enable_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_data_enable_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_parity_error_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_rsp_delivered_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_adapter_enable_reg
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/MsgCode
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/MsgCode_part_2
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/dstid
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/opcode
add wave -noupdate -group sb_rx_fsm /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/dp
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/IDLE
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/WAIT_FOR_START_REQ
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/CAL_ALGO
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/WAIT_FOR_END_REQ
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/SEND_END_RESPONSE
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/TEST_FINISHED
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/clk
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/rst_n
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_en
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_decoded_sideband_message
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_sideband_valid
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_busy_negedge_detected
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_valid_tx
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_mainband_or_valtrain_test
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_test_ack
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/i_rx_lanes_result
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/o_sideband_message
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/o_valid_rx
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/o_pt_en
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/o_eye_width_sweep_en
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/o_reciever_ref_voltage
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/o_test_ack
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/cs
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/ns
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/valid_cond
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/valid_negedge_detected
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/valid_should_go_high
add wave -noupdate -group vref_cal_rx /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance/valid_reg
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_clk
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_rst_n
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_start_pattern_req
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_data_valid
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_msg_valid
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_state
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_ltsm_in_reset
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_sub_state
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_msg_no
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_msg_info
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_data_bus
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_stop_cnt
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_tx_point_sweep_test_en
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_tx_point_sweep_test
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_de_ser_done
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_deser_data
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_fifo_full
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/i_ser_done
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_start_pattern_done
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_time_out
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_busy
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_rx_sb_start_pattern
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_msg_valid
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_parity_error
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_adapter_enable
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_tx_point_sweep_test_en
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_tx_point_sweep_test
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_msg_no
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_msg_info
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_data
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_tx_data_out
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/o_write_enable
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_sb_rsp_delivered
add wave -noupdate -group SB_MB_WRAPPER /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_sb_pattern_samp_done
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_clk
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_rst_n
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_delete_data
add wave -noupdate -group SB_FIFO_TX -color Cyan -itemcolor Cyan /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_write_enable
add wave -noupdate -group SB_FIFO_TX -color Cyan -itemcolor Cyan /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_data_in
add wave -noupdate -group SB_FIFO_TX -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_read_enable
add wave -noupdate -group SB_FIFO_TX -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_data_out
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_empty
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_dont_send_zeros
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_full
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/memory
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/write_count
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/read_count
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/loop_counter
add wave -noupdate -group SB_FIFO_TX /top/phy0/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_empty_comb
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/i_clk
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/i_rst_n
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/i_empty
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/i_dont_send_zeros
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/o_read_enable
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/clk_en_int
add wave -noupdate -group SB_FSM_MODELLING -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/o_clk_en
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/o_ser_done
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/start_counting
add wave -noupdate -group SB_FSM_MODELLING /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/ser_counter
add wave -noupdate -group SB_FSM_MODELLING -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/cs
add wave -noupdate -group SB_FSM_MODELLING -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/ns
add wave -noupdate -group SB_FSM_MODELLING -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/IDLE
add wave -noupdate -group SB_FSM_MODELLING -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/SENDING_PACK
add wave -noupdate -group SB_FSM_MODELLING -color Yellow -itemcolor Yellow /top/phy0/SB_TOP_WRAPPER_inst/fsm_model/SLEEPING
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_clk
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_rst_n
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_de_ser_done
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_deser_data
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_header_valid
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_data_valid
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_ltsm_in_reset
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_start_pattern
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_pattern_samp_done
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_msg_valid
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_header_enable
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_data_enable
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_parity_error
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_rsp_delivered
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_adapter_enable
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_pattern_samp_done_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_msg_valid_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_header_enable_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_data_enable_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_parity_error_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_rsp_delivered_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_adapter_enable_reg
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/MsgCode
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/MsgCode_part_2
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/dstid
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/opcode
add wave -noupdate -group SB_MB_RX_FSM /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/dp
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/cs
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/ns
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/IDLE
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/PATTERN_DETECT
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/GENERAL_DECODE
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/HEADER_DECODE
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/DATA_DECODE
add wave -noupdate -group SB_MB_RX_FSM -color Yellow -itemcolor Yellow -radix unsigned -radixshowbase 0 /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/BAD_PACKET
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/IDLE
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/NORMAL_STATE
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/TRAIN_STATE
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/i_dig_clk
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/i_rst_n
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/i_start_clk_training
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/i_ltsm_in_reset
add wave -noupdate -expand -group {CLOCK GENERATION} -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/phy0/LTSM_MB_inst/clock_generator_inst/o_clk_gate_en
add wave -noupdate -expand -group {CLOCK GENERATION} /top/o_TCKP
add wave -noupdate -expand -group {CLOCK GENERATION} /top/o_TCKN
add wave -noupdate -expand -group {CLOCK GENERATION} /top/o_TTRACK
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/o_done
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/shift_reg_posedge_divider
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/posedge_clk_div_3
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/iteration_counter
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/CS
add wave -noupdate -expand -group {CLOCK GENERATION} /top/phy0/LTSM_MB_inst/clock_generator_inst/NS
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/COUNTER_WIDTH
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/i_dig_clk
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/i_rst_n
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -expand -group {from remote partner} /top/MB_intf/i_CKP
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -expand -group {from remote partner} /top/MB_intf/i_CKN
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -expand -group {from remote partner} /top/MB_intf/i_TRACK
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -color {Medium Violet Red} -itemcolor {Medium Violet Red} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/i_RCLK
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/i_current_repairclk
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/i_clear_results
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/o_result
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/start_local_counting
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -radix unsigned -radixshowbase 0 /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/Rcounter
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -radix unsigned -radixshowbase 0 /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/binary_2_gray
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -radix unsigned -radixshowbase 0 /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/sync_gray_out
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -color Cyan -itemcolor Cyan -label {sync_binary_out (7amada blganzbeel 3ady)} -radix unsigned -radixshowbase 0 /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/sync_binary_out
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -color Cyan -itemcolor Cyan -radix unsigned -radixshowbase 0 /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/Lcounter
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -radix unsigned /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/saved_sync_binary_out
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} -color Coral -itemcolor Coral -radix unsigned -radixshowbase 0 /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/iteration_counter
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/CS
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/NS
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/current_state_is_repairclk_reg
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/repairclk_start_reg
add wave -noupdate -expand -group {CLOCK CKP DETECTOR} /top/phy0/LTSM_MB_inst/clock_detector_ckp_inst/repairclk_start
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13744375 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 330
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {13665692 ps} {13880508 ps}

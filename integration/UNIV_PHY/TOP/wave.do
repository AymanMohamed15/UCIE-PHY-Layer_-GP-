onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_irdy_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_valid_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_data_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_linkerror_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_stallack_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_clk_ack_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_wake_req_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_cfg_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_cfg_vld_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_cfg_crd_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_retimer_crd_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_trdy_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_valid_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_state_sts_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_data_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_inband_pres_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_error_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_nferror_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_trainerror_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_stallreq_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_speedmode_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_lnk_cfg_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_clk_req_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_wake_ack_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cfg_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cfg_vld_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cfg_crd_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_retimer_crd_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cerror_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_phyinrecenter_0
add wave -noupdate -expand -group PHY0 -group RDI_INTERFACE -color Magenta /TB_UNIV_PHY_TOP/lp_state_req_0
add wave -noupdate -expand -group PHY0 -expand -group PHY0_pll /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/pll_mb/en
add wave -noupdate -expand -group PHY0 -expand -group PHY0_pll /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/pll_mb/speed_sel
add wave -noupdate -expand -group PHY0 -expand -group PHY0_pll /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/pll_mb/clk
add wave -noupdate -expand -group PHY0 -expand -group PHY0_pll /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/pll_mb/period
add wave -noupdate -expand -group PHY0 -expand -group PHY0_pll /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/pll_mb/local_period
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/clk_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } -color Red /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/lclk
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_clk_gate_en
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } -color Magenta /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_clk_gate_en_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } -color Yellow /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_training_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } -color Yellow /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_training_from_rdi_to_ltsm_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } -color Yellow /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_ltsm_is_waked_up_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_exit_from_l1
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_exit_from_l1_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_exit_from_l2
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_exit_from_l2_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_active_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_active_from_rdi_to_ltsm_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_l1_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_l1_from_rdi_to_ltsm_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_l2_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_l2_from_rdi_to_ltsm_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_linkerror_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_linkerror_from_rdi_to_ltsm_sync
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_retrain_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group {PHY0_(FROM RDI TO LTSM) } /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_go_to_retrain_from_rdi_to_ltsm_sync
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_decoded_SB_msg
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT -color Red /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_SB_Busy
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_SBINIT_en
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT -color Yellow /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/o_start_pattern_req
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT -color Yellow /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/i_start_pattern_done
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT -color Salmon /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/o_encoded_SB_msg
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT -color Salmon /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/o_SBINIT_end
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/SB_MSG_WIDTH
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/wp_rx_encoded_SB_msg
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/wp_rx_SBINIT_end
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/wp_rx_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/wp_tx_encoded_SB_msg
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/wp_tx_SBINIT_end
add wave -noupdate -expand -group PHY0 -group PHY0_SBINIT /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/wp_tx_valid
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/dig_clk
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/dig_clk_gated
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_start_training_RDI
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_start_pattern_done
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_start_training_SB
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_rx_data_bus
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_rx_msg_info
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_busy
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM -color Coral /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/sync_sb_rx_msg_valid
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_decoded_SB_msg
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM -color Coral /TB_UNIV_PHY_TOP/i_rx_msg_no_string_1
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM -color Blue /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM -color Blue /TB_UNIV_PHY_TOP/o_tx_msg_no_string_1
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_msg_no
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_msg_info
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_data_valid
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_data_bus
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/sub_state_1
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/CS_top_1
add wave -noupdate -expand -group PHY0 -expand -group PHY0_LTSM /TB_UNIV_PHY_TOP/NS_top_1
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/WIDTH
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/Clear_lfsr
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/PATTERN_LFSR
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/PER_LANE_IDE
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/DATA_TRANSFER
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_state
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_enable_scrambeling_pattern
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_functional_tx_lanes
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_enable_reversal
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_active_state_entered
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_0
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_1
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_2
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_3
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_4
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_5
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_6
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_7
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_8
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_9
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_10
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_11
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_12
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_13
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_14
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_15
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_0
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_1
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_2
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_3
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_4
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_5
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_6
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_7
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_8
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_9
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_10
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_11
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_12
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_13
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_14
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr -expand -group o/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_15
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_Lfsr_tx_done
add wave -noupdate -expand -group PHY0 -group PHY0_tx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_enable_frame
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/clk
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_en
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_mainband_or_valtrain_test
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_lfsr_or_perlane
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_pattern_finished
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_sideband_message
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_sideband_data
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_busy
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_sideband_message_valid
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_falling_edge_busy
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_msg_info
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_comparison_results
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/i_valid_result
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_sideband_message
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_valid
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_data_valid
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_msg_info
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_sideband_data
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_val_pattern_en
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_mainband_pattern_generator_cw
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_mainband_pattern_compartor_cw
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_comparison_valid_en
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_test_ack
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_valid_result
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_mainband_lanes_result
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_sideband_message_tx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_valid_tx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_data_valid_tx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_test_ack_tx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_sideband_data_tx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_sideband_message_rx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_valid_rx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_data_valid_rx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_test_ack_rx
add wave -noupdate -expand -group PHY0 -group PHY0_tx_d2c /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/tx_d2c_pt_inst/o_sideband_data_rx
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_8BIT
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN_CODE
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/MAX_COUNT
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_FRAMING
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/VALID_PATTERN
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/Valid_pattern_enable
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/valid_frame_enable
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_TVLD_L
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/o_done
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/enable_detector
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/TVLD_L
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/counter
add wave -noupdate -expand -group PHY0 -group PHY0_val_controller /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/VALTRAIN_CTRL_inst/current_state
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_8BIT
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/VALID_PATTERN
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/MIN_CONSECUTIVE
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/MAX_ITERATIONS
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/ERROR_MAX
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/ITER_128
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/CONSEC_16
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/RVLD_L
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_threshold
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_cons
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_128
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/i_enable_detector
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator -color {Medium Violet Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/detection_result
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/o_valid_frame_detect
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/consec_counter
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/error_counter
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/mismatch_count
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/mode_select
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment0
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment1
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment2
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/segment3
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/match0
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/match1
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/match2
add wave -noupdate -expand -group PHY0 -group PHY0_valid_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_VALID_DET_inst/match3
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/WIDTH
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/CLEAR_LFSR
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/PATTERN_LFSR
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/PER_LANE_IDE
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/DATA_TRANSFER
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_state
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_functional_rx_lanes
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_active_state_entered
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_enable_Descrambeling_pattern
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_enable_buffer
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_0
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_1
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_2
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_3
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_4
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_5
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_6
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_7
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_8
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_9
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_10
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_11
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_12
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_13
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_14
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -expand -group i/p /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/i_data_in_15
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_0
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_1
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_2
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_3
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_4
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_5
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_6
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_7
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_8
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_9
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_10
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_11
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_12
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_13
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_14
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_Data_by_15
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_0
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_1
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_2
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_3
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_4
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_5
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_6
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_7
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_8
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_9
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_10
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_11
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_12
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_13
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_14
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr -group {o/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/o_final_gene_15
add wave -noupdate -expand -group PHY0 -group PHY0_rx_lfsr /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_RX_inst/enable_pattern_comparitor
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/WIDTH
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/CLEAR_LFSR
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/PATTERN_LFSR
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/PER_LANE_IDE
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Type_comp
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_state
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/enable_pattern_comparitor
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_0
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_1
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_2
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_3
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_4
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_5
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_6
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_7
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_8
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_9
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_10
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_11
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_12
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_13
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_14
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p local gen} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_15
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_0
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_1
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_2
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_3
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_4
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_5
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_6
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_7
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_8
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_9
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_10
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_11
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_12
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_13
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_14
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator -expand -group {i/p bypass} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_15
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_per_lane
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_aggregate
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/o_error_done
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error_reg
add wave -noupdate -expand -group PHY0 -group PHY0_rx_comparator /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/cond_1
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/REQ
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_lp_clk_ack
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE -color Brown /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_en
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/o_pl_clk_req
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/o_adapter_is_waked_up
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_CLK_HANDSHAKE /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/CS
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Nop
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Active
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/ActivePMNAK
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/L1
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/L2
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkReset
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkError
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Retrain
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Disable
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/ACTIVE_HANDLE_FOR_BRING_UP
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Active_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/STALL_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/CLK_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LINKTRAINING
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkError_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/PM_BRING_UP
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkReset_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Retrain_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Disable_HAND
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/lclk
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/sys_rst
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_rx_sb_message
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_rx_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_reset_only_from_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_error_from_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_inband_pres_from_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_train_error_from_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_link_speed_from_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_lp_state_req
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_clk_done
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_stall_done
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_bring_up_done
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_bring_up_pm_entry_done
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color {Orange Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_lp_linkerror
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pmnack_from_pm_entry
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_linkerror_timeout
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_l1_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_l2_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_active_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_training_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color {Orange Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_linkerror_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_retrain_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_rdi_controller_choosen_bring_up
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_pm_entry_bring_up
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Coral -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_pl_state_sts
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_clk_hand
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_stall_hand
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_linkerror_timer
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_exit_from_l1
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_exit_from_l2
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_LINKERROR_REQ
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Blue -label {encoded_rdi_message_valid_0 (fifo wen)} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_fifo_write_en
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Blue /TB_UNIV_PHY_TOP/encoded_rdi_message_0
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Magenta -label decoded_rdi_message_valid_0 /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Magenta /TB_UNIV_PHY_TOP/decoded_rdi_message_0
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/o_mb_pll_en
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/CS
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/NS
add wave -noupdate -expand -group PHY0 -group PHY0_RDI_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/lclk
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/UNGATING
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/GATING
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_lp_state_req
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block -color Coral /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_lp_wake_req
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_pl_state_sts
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_sb_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_ltsm_is_waked_up
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_sb_start_training
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_ltsm_in_reset
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block -color Coral /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/o_clk_gate_en
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/o_pl_wake_ack
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block -color {Violet Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/CS
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/NS
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/reset_condition
add wave -noupdate -expand -group PHY0 -group PHY0_Wake_block /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/gating_condition
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/STALL_REQ
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/STALL_ACK
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/STALL_DONE
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/lclk
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/sys_rst
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/i_stall_start
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/i_lp_stallack
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/o_pl_stallreq
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/o_stall_done
add wave -noupdate -expand -group PHY0 -group PHY0_STALL_HS /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_stall_handshake/stall_phase
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/REQ
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_lp_clk_ack
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/i_en
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake -color {Medium Violet Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/o_pl_clk_req
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/o_adapter_is_waked_up
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/CS
add wave -noupdate -expand -group PHY0 -group PHY0_clk_handshake /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_clk_handshake/NS
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/lclk
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/sys_rst
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rdi_controller_choosen_bring_up
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_sb_message
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_done_send_message
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_lp_state_req
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_sb_message
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_bring_up /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/o_General_Bring_Up_done
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/DECODING
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/HEADER_PHASE0_CAPTURED
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/HEADER_PHASE1_CAPTURED
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/DATA_PHASE0_CAPTURED
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/DATA_PHASE1_CAPTURED
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/ERROR_REPORT
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/RDI_MSG
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_lp_cfg_vld
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_lp_cfg
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_msg_no
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_adapter_is_waked_up
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_fifo_full
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_pl_nerror
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_msg_done
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_wake_adapter
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_fifo_write_en
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_fifo_data
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_delete_data
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/CS
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/NS
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/FIFO_READ
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/DECODING
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/RDI_MSG
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ADAPTER_MSG
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ERROR_REPORT
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITHOUT_DATA
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITH_DATA
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_full
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk_is_ungated
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_waked_up
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_done
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_data
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_rising_edge_pl_cfg_vld
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_deser_done_sampled
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg_vld
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_nerror
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_wake_adapter
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_no
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/CS
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/NS
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/PATTERN_DETECT
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/GENERAL_DECODE
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/RDI_DECODE
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/HEADER_DECODE
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/DATA_DECODE
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/ADAPTER
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/RESET
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_de_ser_done
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_header_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_data_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_deser_data
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/i_state
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_start_pattern
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_sb_pattern_samp_done
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_header_enable
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rdi_enable
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_data_enable
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_parity_error
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_rx_rsp_delivered
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_adapter_enable
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/o_de_ser_done_sampled
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/cs
add wave -noupdate -expand -group PHY0 -group PHY0_SB_RX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut/ns
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/i_start_EN
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/i_header
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/o_tx_point_sweep_test_en
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/o_tx_point_sweep_test
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/o_msg_no
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/o_msg_info
add wave -noupdate -expand -group PHY0 -group PHY0_SB_HEADER_DECODER /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_header_decoder_dut/o_dec_header_valid
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/PATTERN_GEN
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/LTSM_ENCODE
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/FRAMING
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/END_MESSAGE
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/dig_clk_gated
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_req
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_msg_valid
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_data_valid
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_d_valid
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_header_valid
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_packet_valid
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_rx_sb_rsp_delivered
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/i_start_pattern_done
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_encoder_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_encoder_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_header_frame_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_data_frame_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/o_busy
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/cs
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut/ns
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/IDLE
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/SENDING_PACK
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/SLEEPING
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_ser_done
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_empty
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_packet_finished
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_read_enable_sampled
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_dont_send_zeros
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/o_read_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/o_clk_en
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/cs
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FSM_modeling /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/ns
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/i_start_pattern_req
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/i_rx_sb_pattern_samp_done
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/i_ser_done
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/o_start_pattern_done
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/o_pattern_time_out
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/o_pattern
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/o_pattern_valid
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/more_four_ittr_cntr
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/more_four_ittr_cntr_en
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/one_ms_counter
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/one_ms_counter_en
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/send_pattern
add wave -noupdate -expand -group PHY0 -group PHY0_PATT_GEN /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/packet_encoder_dut/gen_dut/eight_ms_counter
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_clk
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/i_sb_mb_clk
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/i_rdi_clk
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_rst_n
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_write_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_read_enable
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_delete_data
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_data_in
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_data_out
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_empty
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_ser_done_sampled
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_dont_send_zeros
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_full
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/memory
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/read_count
add wave -noupdate -expand -group PHY0 -group PHY0_TX_FIFO /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/write_count
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_irdy_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_valid_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_data_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_state_req_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_linkerror_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_stallack_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_clk_ack_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_wake_req_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_cfg_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_cfg_vld_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_cfg_crd_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/lp_retimer_crd_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_trdy_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_valid_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_data_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_state_sts_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_inband_pres_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_error_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_nferror_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_trainerror_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_stallreq_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_speedmode_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_lnk_cfg_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_clk_req_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_wake_ack_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cfg_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cfg_vld_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cfg_crd_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_retimer_crd_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_cerror_1
add wave -noupdate -expand -group PHY1 -group RDI_INTERFACE /TB_UNIV_PHY_TOP/o_pl_phyinrecenter_1
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_start_training_RDI
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_go_to_phyretrain_RDI
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_go_to_active_RDI
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_start_pattern_done
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_start_training_SB
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_start_pattern_req
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_rx_msg_info
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_rx_data_bus
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_busy
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM -color Salmon /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM -color Salmon /TB_UNIV_PHY_TOP/i_rx_msg_no_string_2
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM -color Blue /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM -color Blue /TB_UNIV_PHY_TOP/o_tx_msg_no_string_2
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_msg_info
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_data_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/o_tx_data_bus
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/CS_top_2
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/NS_top_2
add wave -noupdate -expand -group PHY1 -expand -group PHY1_LTSM /TB_UNIV_PHY_TOP/sub_state_2
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_state
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_enable_scrambeling_pattern
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_functional_tx_lanes
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_enable_reversal
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_active_state_entered
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_0
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_1
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_2
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_3
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_4
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_5
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_6
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_7
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_8
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_9
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_10
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_11
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_12
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_13
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_14
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -group i/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_lane_15
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_0
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_1
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_2
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_3
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_4
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_5
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_6
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_7
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_8
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_9
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_10
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_11
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_12
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_13
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_14
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx -expand -group o/p /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_lane_15
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_Lfsr_tx_done
add wave -noupdate -expand -group PHY1 -group PHY1_lfsr_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/o_enable_frame
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Nop
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Active
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/ActivePMNAK
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/L1
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/L2
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkReset
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkError
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Retrain
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Disable
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/ACTIVE_HANDLE_FOR_BRING_UP
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Active_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/STALL_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/CLK_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LINKTRAINING
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkError_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/PM_BRING_UP
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/LinkReset_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Retrain_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/Disable_HAND
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/lclk
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/sys_rst
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_rx_sb_message
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_rx_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_inband_pres_from_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_train_error_from_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_link_speed_from_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_lp_state_req
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_clk_done
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_stall_done
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_bring_up_done
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_bring_up_pm_entry_done
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_lp_linkerror
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pmnack_from_pm_entry
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_linkerror_timeout
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_l1_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_l2_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_active_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_training_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_linkerror_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_go_to_retrain_from_rdi_to_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_rdi_controller_choosen_bring_up
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -radix binary /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_pm_entry_bring_up
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Salmon -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_pl_state_sts
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_clk_hand
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_stall_hand
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_start_linkerror_timer
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_exit_from_l1
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_exit_from_l2
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Blue -label {encoded_rdi_message_valid_1 (fifo wen)} /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_fifo_write_en
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Blue /TB_UNIV_PHY_TOP/encoded_rdi_message_1
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Magenta -label decoded_rdi_message_valid_1 /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Magenta /TB_UNIV_PHY_TOP/decoded_rdi_message_1
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/o_just_send_responce
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/CS
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/NS
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_LINKERROR_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_LINKRESET_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_DISABLE_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_RETRAIN_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_ACTIVE_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_L1_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_L2_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/exit_from_l1
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/exit_from_l2
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/registered_LTSM_trainerror
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/NOP_to_ACTIVE
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/NOP_to_LINKRESET
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/NOP_to_DISABLED
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_reset_only_from_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_RDI_FSM /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_rdi_controller/i_pl_error_from_ltsm
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/UNGATING
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/GATING
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_lp_state_req
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_lp_wake_req
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_pl_state_sts
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_pl_inband_pres
add wave -noupdate -expand -group PHY1 -group PHY1_wake -color Blue /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_sb_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_ltsm_is_waked_up
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_ltsm_in_reset
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/i_sb_start_training
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/o_clk_gate_en
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/o_pl_wake_ack
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/CS
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/NS
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/reset_condition
add wave -noupdate -expand -group PHY1 -group PHY1_wake /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_wake_handshake/gating_condition
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/DECODING
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/HEADER_PHASE0_CAPTURED
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/HEADER_PHASE1_CAPTURED
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/DATA_PHASE0_CAPTURED
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/DATA_PHASE1_CAPTURED
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/ERROR_REPORT
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/RDI_MSG
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_lp_cfg_vld
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_lp_cfg
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_msg_no
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_adapter_is_waked_up
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/i_fifo_full
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_pl_nerror
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_msg_done
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_wake_adapter
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_fifo_write_en
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_fifo_data
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/o_delete_data
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/phase_0
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/phase_1
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/CS
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_ENCODER -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst/NS
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/IDLE
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/FIFO_READ
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/DECODING
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/RDI_MSG
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ADAPTER_MSG
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/ERROR_REPORT
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITHOUT_DATA
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/MSG_WITH_DATA
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_full
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_clk_is_ungated
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_adapter_is_waked_up
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_done
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/i_deser_data
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_rising_edge_pl_cfg_vld
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_deser_done_sampled
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_cfg_vld
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_pl_nerror
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_wake_adapter
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/o_msg_no
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/CS
add wave -noupdate -expand -group PHY1 -group PHY1_SB_RDI_DECODER -color Yellow -radix unsigned /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst/NS
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_write_enable
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_read_enable
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_delete_data
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/i_data_in
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO -color {Medium Violet Red} /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_data_out
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_empty
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_ser_done_sampled
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_dont_send_zeros
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/o_full
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/memory
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/write_count
add wave -noupdate -expand -group PHY1 -group PHY1_TX_FIFO -radix hexadecimal /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/tx_fifo_dut/read_count
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_0
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_1
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_2
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_3
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_4
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_5
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_6
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_7
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_8
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_9
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_10
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_11
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_12
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_13
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_14
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group local_gen /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_local_gen_15
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_0
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_1
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_2
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_3
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_4
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_5
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_6
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_7
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_8
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_9
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_10
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_11
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_12
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_13
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_14
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP -expand -group bypassed /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Data_by_15
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/WIDTH
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/IDLE
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/CLEAR_LFSR
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/PATTERN_LFSR
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/PER_LANE_IDE
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Type_comp
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_state
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_enable_buffer
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/enable_pattern_comparitor
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_per_lane
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/i_Max_error_Threshold_aggregate
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/o_error_done
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error
add wave -noupdate -expand -group PHY1 -group PHY1_PATTERN_COMP /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/PATTERN_COMP_inst/o_per_lane_error_reg
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/IDLE
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/SENDING_PACK
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/SLEEPING
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_ser_done
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_empty
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_packet_finished
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_read_enable_sampled
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/i_dont_send_zeros
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/o_read_enable
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/o_clk_en
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/cs
add wave -noupdate -expand -group PHY1 -group PHY1_FSM_modelling /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/SB_TOP_WRAPPER_inst/fsm_model/ns
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/lclk
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/sys_rst
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rdi_controller_choosen_bring_up
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_sb_message
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_rx_done_send_message
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/i_lp_state_req
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_sb_message
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_bring_up /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/o_General_Bring_Up_done
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/IDLE
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/WAIT_FOR_RX_TO_RESP
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/REQ_SEND
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/HANDLE
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/DONE
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/lclk
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/sys_rst
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/i_rdi_controller_choosen_bring_up
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/i_rx_sb_message
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/i_rx_busy_from_RX
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/i_rx_done_send_message
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/i_just_send_responce
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/o_tx_sb_message
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/o_General_Bring_Up_done_TX
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/CS
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/NS
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/transition_to_DONE
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bringup_tx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst/wait_for_rx_to_responce
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/LinkMgmt_RDI_Req_L1
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/LinkMgmt_RDI_Req_L2
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/LinkMgmt_RDI_Rsp_PMNAK
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/LinkMgmt_RDI_Rsp_L1
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/LinkMgmt_RDI_Rsp_L2
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/COUNTING_1microsec_USING_100mhz
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/COUNTING_1microsec_USING_200mhz
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/IDLE
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/WAIT_FOR_PM_REQ
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/SEND_PM_RESP
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/TEST_FINISHED
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_clk
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_rst_n
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_force_exit
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_en
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_req_L1_or_L2
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_clk_div_ratio
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_msg_done
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/i_msg_no
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/o_msg_valid
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/o_msg_no
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/o_test_done
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/CS
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/NS
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/counter_1microsec
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/start_count
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/send_pm_resp
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/send_pm_nak
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/receivied_L1_req
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/receivied_L2_req
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/receivied_pm_nak
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/send_rdi_outputs
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/continue_counting
add wave -noupdate -expand -group PHY1 -group PHY1_pmentry_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst/count_done
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/IDLE
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/CHECK_REQ_MESSG
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/RESP_SEND
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/DONE
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/lclk
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/sys_rst
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/i_rdi_controller_choosen_bring_up
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/i_rx_busy_from_TX
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/i_rx_sb_message
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/i_rx_msg_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/i_rx_done_send_message
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/o_tx_sb_message
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/o_tx_msg_valid
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/i_lp_state_req
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/o_General_Bring_Up_done_RX
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/CS
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx -color Yellow /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/NS
add wave -noupdate -expand -group PHY1 -expand -group PHY1_bring_up_rx /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst/transition_to_RESP_SEND
add wave -noupdate -group HARDMACROS /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/i_clk
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_pll_clk}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_DIG_inst/LTSM_MB_inst/LFSR_TX_inst/i_clk
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_rst_n}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 -radix hexadecimal {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_data_in}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_enable}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/TXDATA}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/shift_reg}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_enable_reg}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/start_shifting}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/prev_shift}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/load_reg}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 -radix unsigned {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/counter}
add wave -noupdate -group HARDMACROS -group PHY1_data_serializer_0 {/TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/serializer_gen[0]/ser/posedge_ser_enable}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_pll_clk}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_rst_n}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_data_in}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/i_enable}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/TXDATA}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/shift_reg}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/start_shifting}
add wave -noupdate -group HARDMACROS -group PHY0_data_serializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/serializer_gen[0]/ser/counter}
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/i_pll_clk
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/i_rst_n
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/i_data_in
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/i_enable
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/TXDATA
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/shift_reg
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/i_enable_reg
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/start_shifting
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/cont_shifting
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/start_shifting
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/prev_shift
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/load_reg
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/counter
add wave -noupdate -group HARDMACROS -group PHY0_valid_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_ser/posedge_ser_enable
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/MB_clk}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/pll_clk}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/i_ckp}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/i_ckn}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/i_rst_n}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/ser_valid}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/ser_data_in}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/par_data_out}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/de_ser_done}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/shift_reg}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/save_data}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/save_data_valid}
add wave -noupdate -group HARDMACROS -group PHY0_data_deserializer_0 {/TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/deserializer_gen[0]/deser/deassert_save_data_valid}
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/MB_clk
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/pll_clk
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer -color {Violet Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/ckp
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer -color Yellow /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/ckn
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/rst_n
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer -color {Violet Red} /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/serial_in
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/data_out
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/data_valid
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/ser_valid
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/data_deser_done
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer -radix unsigned /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/shift_counter
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer -color {Violet Red} -radix binary /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/shift_reg
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer -radix hexadecimal /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/save_data
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/start_counter
add wave -noupdate -group HARDMACROS -group PHY0_valid_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/valid_deser/save_data_valid
add wave -noupdate -group HARDMACROS -group PHY0_SB_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_serializer/i_pll_clk
add wave -noupdate -group HARDMACROS -group PHY0_SB_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_serializer/i_rst_n
add wave -noupdate -group HARDMACROS -group PHY0_SB_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_serializer/i_data_in
add wave -noupdate -group HARDMACROS -group PHY0_SB_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_serializer/i_enable
add wave -noupdate -group HARDMACROS -group PHY0_SB_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_serializer/i_pack_finished
add wave -noupdate -group HARDMACROS -group PHY0_SB_serializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_serializer/TXDATASB
add wave -noupdate -group HARDMACROS -group PHY1_SB_serializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_serializer/i_pll_clk
add wave -noupdate -group HARDMACROS -group PHY1_SB_serializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_serializer/i_rst_n
add wave -noupdate -group HARDMACROS -group PHY1_SB_serializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_serializer/i_data_in
add wave -noupdate -group HARDMACROS -group PHY1_SB_serializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_serializer/i_enable
add wave -noupdate -group HARDMACROS -group PHY1_SB_serializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_serializer/i_pack_finished
add wave -noupdate -group HARDMACROS -group PHY1_SB_serializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_serializer/TXDATASB
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/i_clk
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/i_clk_pll
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/i_rst_n
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/ser_data_in
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/i_de_ser_done_sampled
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/par_data_out
add wave -noupdate -group HARDMACROS -group PHY0_SB_deserializer /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/sb_deserializer/de_ser_done
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/i_clk
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/i_clk_pll
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/i_rst_n
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/ser_data_in
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/i_de_ser_done_sampled
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/par_data_out
add wave -noupdate -group HARDMACROS -group PHY1_SB_deserializer /TB_UNIV_PHY_TOP/phy1/UNIV_PHY_HM_inst/sb_deserializer/de_ser_done
add wave -noupdate /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_DIG_inst/LTSM_MB_inst/i_pll_mb_clk
add wave -noupdate /TB_UNIV_PHY_TOP/phy0/UNIV_PHY_HM_inst/pi_mb/o_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {89434375 ps} 0} {{Cursor 2} {864946154 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 521
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
WaveRestoreZoom {0 ps} {210305024 ps}

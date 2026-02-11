
####################################################################MAINBAND TRAIN###############################################################
## rx clk cal
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/rx_cal_wrapper_inst/rx_cal_rx/  -ftrans cs  WAIT_FOR_START_REQ->IDLE \
CAL_ALGO->IDLE WAIT_FOR_END_REQ->IDLE SEND_END_RESPONSE->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/rx_cal_wrapper_inst/rx_cal_tx_inst/  -ftrans cs  START_REQ->IDLE\
CAL_ALGO->IDLE END_REQ->IDLE 
###self cal waving
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/selfcal_wrapper_inst/selfcal_tx_inst -ftrans  cs  CAL_ALGO->IDLE END_REQ->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/selfcal_wrapper_inst/selfcal_rx_inst -ftrans cs  WAIT_FOR_END_REQ->IDLE \
SEND_END_RESPONSE->IDLE
##vref cal 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_tx_instance -ftrans cs START_REQ->IDLE \
CAL_ALGO->IDLE END_REQ->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/vref_cal_wrapper_inst/verf_cal_rx_instance -ftrans cs WAIT_FOR_START_REQ->IDLE \
CAL_ALGO->IDLE WAIT_FOR_END_REQ->IDLE SEND_END_RESPONSE->IDLE
##train center cal
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/train_center_cal_wrapper_inst/train_center_cal_tx_inst -ftrans cs START_REQ->IDLE\
CAL_ALGO->IDLE END_REQ->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/train_center_cal_wrapper_inst/train_center_cal_rx_inst -ftrans cs  WAIT_FOR_START_REQ->IDLE \
CAL_ALGO->IDLE WAIT_FOR_END_REQ->IDLE SEND_END_RESPONSE->IDLE
##repair 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/repair_wrapper_inst/repair_tx_instance_1 -ftrans cs REPAIR_INIT_REQUEST->IDLE \
REPAIR_APPLY_DEGRADE_REQUEST->IDLE REPAIR_END_REQUEST->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/repair_wrapper_inst/repair_rx_instance_1 -ftrans cs WAIT_FOR_INIT_REQUEST->IDLE \
WAIT_FOR_APPLY_DEGRADE_REQUEST->IDLE WAIT_FOR_END_REQUEST->IDLE SEND_END_RESPONSE->IDLE
##linkspeed 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/linkspeed_wrapper_inst/linkspeed_tx_inst -ftrans cs LINK_SPEED_REQ->IDLE \
POINT_TEST->IDLE RESULT_ANALYSIS->IDLE PHY_RETRAIN_REQ->IDLE END_REQ->IDLE ERROR_REQ_ST->IDLE REPAIR_REQ->IDLE SPEED_DEGRADE_REQ->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/linkspeed_wrapper_inst/linkspeed_rx_inst -ftrans cs WAIT_FOR_LINKSPEED_REQ->IDLE \
SEND_RESPONSE_TO_LINKSPEED_REQ->IDLE POINT_TEST->IDLE WAIT_FOR_ANY_REQ->IDLE WAIT_FOR_REPAIR_OR_SPEED_DEGRADE->IDLE SEND_LAST_RESPONSE->IDLE
##mbtrain controller
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBTRAIN_inst/mbtrain_controller_inst \
-ftrans cs VALVREF->IDLE VALVREF_END->IDLE DATAVREF->IDLE     SPEED_IDLE->IDLE     SPEED_IDLE_END->IDLE     TXSELFCAL->IDLE \
TXSELFCAL_END->IDLE RXCLKCAL->IDLE    RXCLKCAL_END->IDLE VALTRAINCENTER->IDLE VALTRAINCENTER_END->IDLE \
VALTRAINVREF->IDLE  VALTRAINVREF_END->IDLE  DATATRAINCENTER1->IDLE  DATATRAINCENTER1_END->IDLE  DATATRAINVREF->IDLE \
DATATRAINVREF_END->IDLE RXDESKEW->IDLE RXDESKEW_END->IDLE DATATRAINCENTER2->IDLE LINKSPEED->IDLE \
REPAIR->IDLE MBTRAIN_FINISH->IDLE


##############################################################phyretrain###############################################################
##tx 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/PHYRETRAIN_inst/TX_inst\
-ftrans CS WAIT_FOR_RX_TO_RESP->IDLE SEND_PHYRETRAIN_REQ->IDLE 
##rx
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/PHYRETRAIN_inst/RX_inst\
-ftrans CS WAIT_FOR_PHYRETRAIN_REQ->IDLE SEND_PHYRETRAIN_RESP->IDLE 

############################################################SBINIT####################################################################
##tx
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/U_TX_SBINIT -ftrans CS  START_SB_PATTERN->IDLE\
SBINIT_OUT_OF_RESET->IDLE WAIT_FOR_SB_BUSY->IDLE SBINIT_DONE_REQ->IDLE
##rx
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/SBINIT_inst/U_RX_SBINIT -ftrans CS WAIT_FOR_DONE_REQ->IDLE \
SBINIT_DONE_RESP->IDLE 

##########################################################MBINIT############################################################
##REPAIR mainband 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REPAIRMB_Wrapper_inst/REPAIRMB_Module_inst\
-ftrans CS REPAIRMB_START_REQ->IDLE REPAIRMB_HANDLE_VALID->IDLE REPAIRMB_INITIATED_DATA_CLOCK->IDLE REPAIRMB_SETUP_FUNCTIONAL_LANES->IDLE\
REPAIRMB_CHECK_BUSY_DEGRADE->IDLE REPAIRMB_DEGRADE_REQ->IDLE REPAIRMB_CHECK_BUSY_END_REQ->IDLE REPAIRMB_END_REQ->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REPAIRMB_Wrapper_inst/REPAIRMB_Module_Partner_inst\
-ftrans CS REPAIRMB_CHECK_REQ->IDLE REPAIRMB_END_RESP->IDLE\
REPAIRMB_CHECK_BUSY_START->IDLE REPAIRMB_START_RESP->IDLE REPAIRMB_HANDLE_VALID->IDLE REPAIRMB_CHECK_WIDTH_DEGRADE->IDLE\
REPAIRMB_APPLY_REAPEAT->IDLE REPAIRMB_CHECK_BUSY_DEGRADE_RESP->IDLE REPAIRMB_DEGRADE_RESP->IDLE REPAIRMB_CHECK_BUSY_END_RESP->IDLE
##reversal mainband 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REVERSALMB_Wrapper_inst/REVERSALMB_Module_inst\
-ftrans CS WAIT_FOR_RX_TO_RESP->IDLE START_REQ->IDLE LFSR_CLEAR_REQ->IDLE SEND_PATTERN->IDLE\
RESULT_REQ->IDLE RESLOVING->IDLE END_REQ->IDLE
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REVERSALMB_Wrapper_inst/REVERSALMB_ModulePartner_inst\
-ftrans CS WAIT_FOR_START_REQ->IDLE SEND_START_RESP->IDLE WAIT_FOR_LFSR_CLEAR_REQ->IDLE SEND_LFSR_CLEAR_RESP->IDLE\
WAIT_FOR_RESULT_REQ->IDLE SEND_RESULT_RESP->IDLE WAIT_FOR_END_REQ->IDLE SEND_END_RESP->IDLE
###########param 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/u_PARAM_ModulePartner -ftrans CS PARAM_CHECK_REQ->IDLE\
PARAM_CHECK_PARAMTERS->IDLE PARAM_CHECK_BUSY->IDLE PARAM_RESP->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/PARAM_Wrapper_inst/u_PARAM_Module -ftrans CS PARAM_REQ->IDLE\
PARAM_HANDLE_VALID->IDLE PARAM_CHECK_RESP->IDLE



coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/CAL_ModuleWrapper_inst/cal_module_inst  -ftrans CS  MBINIT_CAL_REQ->IDLE MBINIT_HANDLE_VALID->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/CAL_ModuleWrapper_inst/cal_module_partner_inst  -ftrans CS  MBINIT_CAL_Check_Req->IDLE\
MBINIT_HANDLE_SENDEING->IDLE MBINIT_CAL_resp->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/RepairCLK_Wrapper_inst/u1  -ftrans CS REPAIRCLK_INIT_REQ->IDLE\
REPAIRCLK_HANDLE_VALID->IDLE 		CLKPATTERN->IDLE 			REPAIRCLK_CHECK_BUSY_RESULT->IDLE 		REPAIRCLK_RESULT_REQ->IDLE\
REPAIRCLK_CHECK_BUSY_DONE->IDLE 	REPAIRCLK_DONE_REQ->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/RepairCLK_Wrapper_inst/u2  -ftrans CS  REPAIRCLK_CHECK_INIT_REQ->IDLE\
REPAIRCLK_CHECK_BUSY_INIT->IDLE 		REPAIRCLK_INIT_RESP->IDLE  			REPAIRCLK_HANDLE_VALID->IDLE\
REPAIRCLK_CHECK_BUSY_DONE->IDLE 		REPAIRCLK_CHECK_BUSY_RESULT->IDLE 	REPAIRCLK_RESULT_RESP->IDLE\
REPAIRCLK_DONE_RESP->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REPAIRVAL_Wrapper_inst/u1  -ftrans CS  REPAIRVAL_INIT_REQ->IDLE\
REPAIRVAL_HANDLE_VALID->IDLE 		REPAIRVAL_CHECK_RESULT->IDLE 		CLKPATTERN->IDLE   	REPAIRVAL_CHECK_BUSY_RESULT->IDLE\
REPAIRVAL_RESULT_REQ->IDLE 		REPAIRVAL_CHECK_BUSY_DONE->IDLE 	REPAIRVAL_DONE_REQ->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REPAIRVAL_Wrapper_inst/u2  -ftrans CS  REPAIRVAL_CHECK_INIT_REQ->IDLE\
REPAIRVAL_CHECK_BUSY_INIT->IDLE 		REPAIRVAL_INIT_RESP->IDLE 		REPAIRVAL_HANDLE_VALID->IDLE 		REPAIRVAL_CHECK_BUSY_DONE->IDLE\
REPAIRVAL_CHECK_BUSY_RESULT->IDLE 	REPAIRVAL_RESULT_RESP->IDLE 		REPAIRVAL_DONE_RESP->IDLE
################mbinit fsm 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/mbinit_fsm_inst -ftrans CS\
PARAM->IDLE  CAL->IDLE REPAIRCLK->IDLE\
REPAIRVAL->IDLE  REVERSALMB->IDLE  REPAIRMB->IDLE
######################functional lane setup 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REPAIRMB_Wrapper_inst/REPAIRMB_Module_inst/Functional_Lane_Setup_inst\
-ftrans o_Functional_Lanes st0->st1  st0->st2 st0->st3 st1->st2 st1->st0 st1->st3 st2->st1 st2->st0  st2->st3

############################################################sideband#################################
coverage exclude -scope /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/rx_wrapper/rx_fsm_dut  -ftrans cs  PATTERN_DETECT->IDLE\
HEADER_DECODE->IDLE BAD_PACKET->IDLE DATA_DECODE->IDLE 
coverage exclude -scope /top/phy0/SB_TOP_WRAPPER_inst/u_sb_mb_wrapper/tx_wrapper/sb_fsm_dut  -ftrans cs  LTSM_ENCODE->IDLE\
FRAMING->IDLE
########################################################trainerror####################################################
##tx
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/TRAINERROR_inst/U_TX_TRAINERROR_HS -ftrans CS \
WAIT_FOR_RX_TO_RESP->IDLE SEND_TRAINERROR_REQ->IDLE
##rx 
coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/TRAINERROR_inst/U_RX_TRAINERROR_HS -ftrans CS\
WAIT_FOR_TRAINERROR_REQ->IDLE SEND_TRAINERROR_RESP->IDLE

#####################################################tx point test##################################################
##tx fsm
coverage exclude -scope /top/phy0/LTSM_MB_inst/tx_d2c_pt_inst/tx_initiated_point_test_tx_inst -ftrans cs \
START_REQ->IDLE LFSR_CLEAR_REQ->IDLE SEND_PATTERN->IDLE\
RESULT_REQ->IDLE END_REQ->IDLE
##rx fsm 
coverage exclude -scope /top/phy0/LTSM_MB_inst/tx_d2c_pt_inst/tx_initiated_point_test_rx_inst -ftrans cs\
WAIT_FOR_TEST_REQ->IDLE WAIT_FOR_LFSR_CLEAR_REQ->IDLE CLEAR_LFSR->IDLE\
WAIT_FOR_RESULT_REQ->IDLE WAIT_FOR_END_REQ->IDLE END_RESP->IDLE 
##################################################rx point test###################################
##tx inst 
coverage exclude -scope /top/phy0/LTSM_MB_inst/rx_d2c_pt_inst/TX_inst -ftrans CS\
WAIT_FOR_RX_TO_RESP->IDLE START_REQ->IDLE LFSR_CLEAR_REQ->IDLE\
SEND_PATTERN->IDLE COUNT_DONE->IDLE  END_REQ->IDLE
##rx inst
coverage exclude -scope  /top/phy0/LTSM_MB_inst/rx_d2c_pt_inst/RX_inst -ftrans CS\
WAIT_FOR_START_REQ->IDLE SEND_START_RESP->IDLE WAIT_FOR_LFSR_CLEAR_REQ->IDLE SEND_LFSR_CLEAR_RESP->IDLE\
WAIT_FOR_COUNT_DONE_REQ->IDLE SEND_COUNT_DONE_RESP->IDLE WAIT_FOR_END_REQ->IDLE SEND_END_RESP->IDLE
###################################################rdi sideband 
coverage exclude -scope /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_DECODER_inst -ftrans CS\
FIFO_READ->IDLE  DECODING->IDLE ADAPTER_MSG->IDLE
coverage exclude -scope /top/phy0/SB_TOP_WRAPPER_inst/u_sb_rdi_wrapper/SB_RDI_ENCODER_inst -ftrans CS\
 HEADER_PHASE0_CAPTURED->DECODING DATA_PHASE0_CAPTURED->DECODING       

##rdi stall 
coverage exclude -scope /top/phy0/RDI_TOP_inst/u_stall_handshake -ftrans  stall_phase \
STALL_REQ->IDLE STALL_ACK->IDLE 
coverage exclude -scope /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/rx_inst -ftrans CS\
RESP_SEND->IDLE

coverage exclude -scope /top/phy0/RDI_TOP_inst/general_bring_up_wrapper_inst/tx_inst -ftrans CS\
WAIT_FOR_RX_TO_RESP->IDLE

###################################pm entry############################################
coverage exclude -scope /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_tx_inst -ftrans CS\
WAIT_FOR_RX_TO_RESP->IDLE  SEND_PM_REQ->IDLE 

coverage exclude -scope /top/phy0/RDI_TOP_inst/u_pm_entry/pm_entry_rx_inst -ftrans CS\
SEND_PM_RESP->IDLE  WAIT_FOR_PM_REQ->IDLE

coverage exclude -scope /top/phy0/LTSM_MB_inst/LTSM_TOP_inst/MBINIT_inst/REVERSALMB_Wrapper_inst/REVERSALMB_Module_inst -ftrans CS\
IDLE->WAIT_FOR_RX_TO_RESP WAIT_FOR_RX_TO_RESP->START_REQ 
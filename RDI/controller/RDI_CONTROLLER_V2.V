module RDI_CONTROLLER_V2 (
    input               lclk,
    input               sys_rst,
    input   [3:0]       i_rx_sb_message,
    input               i_rx_msg_valid, // sb_message_valid from rx_b
    input               i_reset_only_from_ltsm, // reset only from ltsm
    input               i_pl_error_from_ltsm, // Message type (Request/Response) (valid fram error in ltsm) // retrain
    input               i_pl_inband_pres_from_ltsm, // inband presence signal from ltsm to indicate it is in the linkinitialization state
    input               i_pl_train_error_from_ltsm, // train error signal from ltsm to indicate linkerror state
    input  [2:0]        i_pl_link_speed_from_ltsm, // link speed signal from ltsm to indicate the link speed, 
    input  [3:0]        i_lp_state_req,
    input               i_clk_done,
    input               i_wake_adapter, // SAADANY: will be used to preform clock handshake
    input               i_stall_done,
    input               i_sb_start_training,
    input               i_bring_up_done,
    input               i_bring_up_pm_entry_done,
    input               i_lp_linkerror,
    input               i_pmnack_from_pm_entry, // pm_nack signal from pm entry to rdi controller
    input               i_linkerror_timeout,
    input               i_reset_pin_or_soft_ware_clear_error , // for reset 
    output reg          o_go_to_l1_from_rdi_to_ltsm, // go to l1 signal from rdi controller to ltsm
    output reg          o_go_to_l2_from_rdi_to_ltsm, // go to l2 signal from rdi controller to ltsm
    output reg          o_go_to_active_from_rdi_to_ltsm, // go to active signal from rdi controller to ltsm
    output reg          o_go_to_training_from_rdi_to_ltsm,
    output reg          o_go_to_linkerror_from_rdi_to_ltsm,
    output reg          o_go_to_retrain_from_rdi_to_ltsm,
    output reg [2:0]    o_rdi_controller_choosen_bring_up, // This are 3 bits (level signal) used to choose which bring will use in the bring up block (1 ACTIVE ,2 RETRAIN, 3 LINKERROR ,4 LINKRESET, 5 DISABLE)
    output reg [1:0]    o_start_pm_entry_bring_up, // start pm entry signal from rdi controller to ltsm
    output reg [3:0]    o_pl_state_sts,
    output reg          o_start_clk_hand,
    output reg          o_start_stall_hand,
    output reg          o_start_linkerror_timer,
    output reg          o_exit_from_l1,
    output reg          o_exit_from_l2,
    output [4:0]        o_fsm_cs,
    // added outputs
    output reg          o_just_send_responce,
    output reg          o_rdi_to_ltsm_go_to_reset
);

    // State definitions as local parameters
    localparam [4:0] 
        Nop                                 = 5'b00000, // 0
        Active                              = 5'b00001, // 1
        ActivePMNAK                         = 5'b00011, // 3
        L1                                  = 5'b00100, // 4
        L2                                  = 5'b01000, // 8
        LinkReset                           = 5'b01001, // 9
        LinkError                           = 5'b01010, // 10
        Retrain                             = 5'b01011, // 11
        Disable                             = 5'b01100, // 12
        /* -------------------------------------------------------------------------- */
        // our internal states
        /* -------------------------------------------------------------------------- */
        ACTIVE_HANDLE_FOR_BRING_UP          = 5'b00010, // 2
        Active_HAND                         = 5'b00101, // 5
        STALL_HAND                          = 5'b00110, // 6
        CLK_HAND                            = 5'b00111, // 7
        LINKTRAINING                        = 5'b01101, // 13 
        LinkError_HAND                      = 5'b01110, // 14
        // LINKERROR_TIMER                     = 5'b01111, // 15
        PM_BRING_UP                         = 5'b10000, // 16
        LinkReset_HAND                      = 5'b10001, // 17 
        Retrain_HAND                        = 5'b10010, // 18
        Disable_HAND                        = 5'b10011; // 19


    // Message encodings as local parameters
    localparam [3:0] 
        ACTIVE_REQ      = 4'd1,
        L1_REQ          = 4'd2,
        L2_REQ          = 4'd3,
        LINKRESET_REQ   = 4'd4,
        LINKERROR_REQ   = 4'd5,
        RETRAIN_REQ     = 4'd6,
        DISABLE_REQ     = 4'd7,
        ACTIVE_RSP      = 4'd8,
        PM_NAK_MSG      = 4'd9,
        L1_RSP          = 4'd10,
        L2_RSP          = 4'd11,
        LINKRESET_RSP   = 4'd12,
        LINKERROR_RSP   = 4'd13,
        RETRAIN_RSP     = 4'd14,
        DISABLE_RSP     = 4'd15;

    // Bring up block configurations
        localparam choose_bring_up_active    = 3'b001;
        localparam choose_bring_up_linkreset = 3'b100;
        localparam choose_bring_up_linkerror = 3'b011;
        localparam choose_bring_up_disabled  = 3'b101;
        localparam choose_bring_up_retrain   = 3'b010;

        // internal signals
        reg registered_LINKERROR_REQ,
            registered_LINKRESET_REQ,
            registered_DISABLE_REQ,
            registered_RETRAIN_REQ,
            registered_ACTIVE_REQ,
            registered_L1_REQ,
            registered_L2_REQ,
            exit_from_l1,
            exit_from_l1_due_to_partner,
            exit_from_l2,
            exit_from_l2_due_to_partner,
            registered_LTSM_trainerror;
            
        reg [3:0] lp_state_req_reg;
        wire NOP_to_ACTIVE    = (lp_state_req_reg == Nop && i_lp_state_req == Active);
        wire NOP_to_LINKRESET = (lp_state_req_reg == Nop && i_lp_state_req == LinkReset);
        wire NOP_to_DISABLED  = (lp_state_req_reg == Nop && i_lp_state_req == Disable);


        reg [4:0] CS, NS;
        assign o_fsm_cs = CS;  
        
        always @(posedge lclk or negedge sys_rst) begin
            if (!sys_rst) begin
                registered_LINKERROR_REQ    <= 0;
                registered_LINKRESET_REQ    <= 0; 
                registered_DISABLE_REQ      <= 0;
                registered_RETRAIN_REQ      <= 0;
                registered_L1_REQ           <= 0;
                registered_L2_REQ           <= 0;
                exit_from_l1                <= 0;
                exit_from_l2                <= 0;
                registered_ACTIVE_REQ       <= 0;
                lp_state_req_reg            <= 0;
                registered_LTSM_trainerror  <= 0;
                exit_from_l1_due_to_partner <= 0;
                exit_from_l2_due_to_partner <= 0;
            end else begin
                /* --------------------- saving lp_state_req transition --------------------- */
                lp_state_req_reg <= i_lp_state_req;
                /* -------------------------------------------------------------------------- */
                if (CS == L1 && NS == Active_HAND && i_lp_state_req == Active) exit_from_l1 <= 1;
                else if (CS == L1 && NS == Active_HAND && registered_ACTIVE_REQ) exit_from_l1_due_to_partner <= 1;
                else if (CS == Active || i_reset_only_from_ltsm) begin
                    exit_from_l1 <= 0;
                    exit_from_l1_due_to_partner <= 0;
                end 
                /* -------------------------------------------------------------------------- */
                if (CS == L2 && NS == Active_HAND && i_lp_state_req == Active) exit_from_l2 <= 1;
                else if (CS == L2 && NS == Active_HAND && registered_ACTIVE_REQ) exit_from_l2_due_to_partner <= 1;
                else if (CS == Active || i_reset_only_from_ltsm) begin
                    exit_from_l2 <= 0;
                    exit_from_l2_due_to_partner <= 0;
                end 
                /* -------------------------------------------------------------------------- */
                if (i_rx_sb_message == LINKERROR_REQ && i_rx_msg_valid) registered_LINKERROR_REQ <= 1;
                else if (CS == LinkError || i_reset_only_from_ltsm) registered_LINKERROR_REQ <= 0; 
                /* -------------------------------------------------------------------------- */
                if (i_rx_sb_message == LINKRESET_REQ && i_rx_msg_valid) registered_LINKRESET_REQ <= 1;
                else if (CS == LinkReset || i_reset_only_from_ltsm) registered_LINKRESET_REQ <= 0;
                /* -------------------------------------------------------------------------- */
                if ((i_rx_sb_message == DISABLE_REQ && i_rx_msg_valid)) registered_DISABLE_REQ <= 1;
                else if (CS == Disable || i_reset_only_from_ltsm) registered_DISABLE_REQ <= 0;
                /* -------------------------------------------------------------------------- */
                if ((i_rx_sb_message == RETRAIN_REQ) && i_rx_msg_valid) registered_RETRAIN_REQ <= 1;
                else if (CS == Retrain || i_reset_only_from_ltsm) registered_RETRAIN_REQ <= 0;
                /* -------------------------------------------------------------------------- */
                if ((i_rx_sb_message == L1_REQ) && i_rx_msg_valid) registered_L1_REQ <= 1;
                else if (CS == L1  || i_reset_only_from_ltsm) registered_L1_REQ <= 0;
                /* -------------------------------------------------------------------------- */
                if ((i_rx_sb_message == L2_REQ) && i_rx_msg_valid) registered_L2_REQ <= 1;        
                else if (CS == L2 || i_reset_only_from_ltsm) registered_L2_REQ <= 0;
                /* -------------------------------------------------------------------------- */
                if ((i_rx_sb_message == ACTIVE_REQ) && i_rx_msg_valid) registered_ACTIVE_REQ <= 1;            
                else if (CS == Active || i_reset_only_from_ltsm) registered_ACTIVE_REQ <= 0;
                /* -------------------------------------------------------------------------- */
                if (i_pl_train_error_from_ltsm) registered_LTSM_trainerror <= 1;
                else if (CS == LinkError || i_reset_only_from_ltsm) registered_LTSM_trainerror <= 0;
                /* -------------------------------------------------------------------------- */
            end
        end

        /* -------------------------------------------------------------------------- */
        /*                                state memory                                */
        /* -------------------------------------------------------------------------- */
            always @(posedge lclk or negedge sys_rst) begin
                if (!sys_rst)
                    CS <= Nop;
                else
                    CS <= NS;
            end

        /* -------------------------------------------------------------------------- */
        /*                              Next state logic                              */
        /* -------------------------------------------------------------------------- */
        always @(*) begin
            NS = CS; // Default to current state
            case (CS)
                /*****************************************************************************************************
                 * NOP
                *****************************************************************************************************/
                    Nop: begin
                        /* ---------------------- our adapter requstes L2 exit ---------------------- */
                        if (NOP_to_ACTIVE && exit_from_l2 && i_pl_inband_pres_from_ltsm) NS = Active;
                        /* ------------------------ partner requstes L2 exit ------------------------ */
                        else if (exit_from_l2_due_to_partner && i_pl_inband_pres_from_ltsm) NS = CLK_HAND;
                        /* --------------- normal active flow (our adapter initiating) -------------- */
                        else if (NOP_to_ACTIVE && i_reset_only_from_ltsm)  NS = LINKTRAINING; 
                        /* ----------------- normal active flow (partner initiated) ----------------- */
                        else if (i_sb_start_training) NS = LINKTRAINING;
                    end
                /*****************************************************************************************************
                 * CLK_HAND
                *****************************************************************************************************/
                    CLK_HAND: begin 
                        if      (i_clk_done && (registered_LINKRESET_REQ || i_lp_state_req == LinkReset)) NS = LinkReset; // go to state without being directed by adapter
                        else if (i_clk_done && (registered_DISABLE_REQ   || i_lp_state_req == Disable))   NS = Disable;   // go to state without being directed by adapter
                        else if (i_clk_done && (registered_LINKERROR_REQ || i_lp_linkerror))              NS = LinkError; // go to state without being directed by adapter
                        else if (i_clk_done && (registered_RETRAIN_REQ   || i_lp_state_req == Retrain))   NS = Retrain;
                        /* ------------------------ partner requests PM exit ------------------------ */
                        else if (i_clk_done && exit_from_l1_due_to_partner)  NS = Retrain;
                        // L2 -> Active_HS -> CLK_HS -> Nop -> pl_inband_pres -> CLK_HS (this one) -> NOP-Active -> Active
                        else if (i_clk_done && exit_from_l2_due_to_partner && i_pl_inband_pres_from_ltsm && NOP_to_ACTIVE)  NS = Active;  
                        // L2 -> Active_HS -> CLK_HS (this one) -> Nop -> pl_inband_pres -> CLK_HS -> NOP-Active -> Active
                        else if (i_clk_done && exit_from_l2_due_to_partner && ~i_pl_inband_pres_from_ltsm)  NS = Nop; 
                        /* ---------------------- if error was occured from our ltsm ---------------- */
                        else if (i_clk_done && registered_LTSM_trainerror)  NS = LinkError;                               // go to state without being directed by adapter
                        /* ------------------ if linktraining is done successfully ------------------ */
                        else if (i_clk_done && i_pl_inband_pres_from_ltsm && ~exit_from_l1 && ~exit_from_l1_due_to_partner && ~exit_from_l2 && ~exit_from_l2_due_to_partner)  
                        NS = ACTIVE_HANDLE_FOR_BRING_UP;              // wait for being directed by adapter
                    end
                /*****************************************************************************************************
                 * ACTIVE_HANDLE_FOR_BRING_UP
                *****************************************************************************************************/
                    ACTIVE_HANDLE_FOR_BRING_UP : begin
                        if (i_lp_state_req == Active) begin
                            NS = Active_HAND;
                        end 
                    end
                /*****************************************************************************************************
                 * ACTIVE_HAND
                *****************************************************************************************************/
                    Active_HAND: begin
                        if (i_bring_up_done) begin
                            if      (exit_from_l1)                  NS = Retrain;
                            else if (exit_from_l1_due_to_partner)   NS = CLK_HAND;
                            else if (exit_from_l2)                  NS = Nop;
                            else if (exit_from_l2_due_to_partner)   NS = CLK_HAND;
                            else                                    NS = Active;
                        end
                    end
                /*****************************************************************************************************
                 * LINKTRAINING
                *****************************************************************************************************/                
                    LINKTRAINING : begin
                        /* -------------------- if error occurs from our adapter -------------------- */
                        if (NOP_to_LINKRESET) begin   
                            NS = LinkReset_HAND;
                        end else if (NOP_to_DISABLED) begin 
                            NS = Disable_HAND; 
                        end else if (i_lp_linkerror) begin            
                            NS = LinkError_HAND; 
                        /* ---------------------- if error occurs from our ltsm --------------------- */
                        end else if (registered_LTSM_trainerror) begin 
                            NS = LinkError_HAND; // after completing handshake go to clk handshake then go to the required state
                        /* ---------------------- if error occurs from partner ---------------------- */
                        end else if (registered_LINKRESET_REQ) begin   
                            NS = LinkReset_HAND;
                        end else if (registered_DISABLE_REQ) begin 
                            NS = Disable_HAND; 
                        end else if (registered_LINKERROR_REQ) begin            
                            NS = LinkError_HAND; 
                        /* ------------------ if linktraining is done successfully ------------------ */
                        end else if (i_pl_inband_pres_from_ltsm) begin 
                            NS = CLK_HAND;
                        end
                        /* -------------------------------------------------------------------------- */
                    end
                /*****************************************************************************************************
                 * LINKRESET_HAND
                *****************************************************************************************************/
                    LinkReset_HAND: begin
                        if (i_bring_up_done) begin
                            NS = CLK_HAND;
                        end
                    end
                /*****************************************************************************************************
                 * DISABLE_HAND
                *****************************************************************************************************/
                    Disable_HAND: begin
                        if (i_bring_up_done) begin
                            NS = CLK_HAND;
                        end
                    end
                /*****************************************************************************************************
                 * LINKERROR_HAND
                *****************************************************************************************************/
                    LinkError_HAND: begin
                        if (i_bring_up_done) begin
                            NS = CLK_HAND;
                        end
                    end
                /*****************************************************************************************************
                 * RETRAIN_HAND
                *****************************************************************************************************/
                    Retrain_HAND: begin
                        if (i_bring_up_done) begin
                            NS = CLK_HAND;
                        end
                    end
                /*****************************************************************************************************
                 * ACTIVE
                *****************************************************************************************************/
                    Active: begin
                        /* -------------------- if error occurs from our adapter -------------------- */
                        if ((i_lp_state_req == LinkReset) || 
                            (i_lp_state_req == Disable)   || 
                            (i_lp_linkerror)              ||
                            (i_lp_state_req == Retrain)) begin
                                NS = STALL_HAND;       
                        end  
                        /* ---------------------- if error occurs from partner ---------------------- */
                        if ((registered_LINKRESET_REQ) ||
                            (registered_DISABLE_REQ)   ||
                            (registered_LINKERROR_REQ) ||
                            (registered_RETRAIN_REQ)) begin
                                NS = STALL_HAND;       
                        end 
                        /* ------------------------- if our adapter requstes PM --------------------- */
                        else if (i_lp_state_req == L1 || i_lp_state_req == L2)  NS = PM_BRING_UP; // msh far2 m3aya el partner kdh kdh lazm hastna el adapter bta3ee
                        /* -------------------------------------------------------------------------- */
                    end
                /*****************************************************************************************************
                 * STALL_HAND
                *****************************************************************************************************/
                    STALL_HAND: begin // bn3ml stall incase error is requsted by partner only
                        if (i_stall_done) begin 
                            if      (i_lp_state_req == LinkReset || registered_LINKRESET_REQ)  NS = LinkReset_HAND;
                            else if (i_lp_state_req == Disable   || registered_DISABLE_REQ)    NS = Disable_HAND; 
                            else if (i_lp_linkerror              || registered_LINKERROR_REQ)  NS = LinkError_HAND; 
                            else if (i_lp_state_req == Retrain   || registered_RETRAIN_REQ)    NS = Retrain_HAND;
                            else if (i_lp_state_req == L1) NS = L1; // no clk handshake since pm is requsted in active state already
                            else if (i_lp_state_req == L2) NS = L2; // no clk handshake since pm is requsted in active state already
                        end 
                    end
                /*****************************************************************************************************
                 * PM_BRING_UP
                *****************************************************************************************************/
                    PM_BRING_UP: begin // msh far2a hena meen eli by initiate kdh kdh lazm astna el partner bta3ee fa lw tmam ru7 e3ml stall the go to PM state 
                        if (i_bring_up_pm_entry_done)begin
                            if (i_pmnack_from_pm_entry) begin
                                NS = ActivePMNAK;
                            end else begin
                                NS = STALL_HAND; // el state el wa7eed eli bn3ml fiha stall b3d el state handshake
                            end 
                        end
                    end
                /*****************************************************************************************************
                 * LINKERROR
                *****************************************************************************************************/
                    LinkError :begin
                        if (i_linkerror_timeout && ~i_lp_linkerror) NS = Nop;
                    end
                /*****************************************************************************************************
                 * LINKRESET
                *****************************************************************************************************/
                    LinkReset : begin
                        /* ----------------- our adapter requset exit from linkreset to reset ---------------- */
                        if (i_reset_pin_or_soft_ware_clear_error || i_lp_state_req == Active) NS = Nop;
                        /* ----------- our adapter requset exit from linkreset to linkerror/disable ---------- */
                        else if (i_lp_linkerror)            NS = LinkError_HAND;
                        else if (i_lp_state_req == Disable) NS = Disable_HAND;
                        /* ---------------------- if partner requstes linkerror/disable ---------------------- */
                        else if (registered_LINKERROR_REQ)  NS = LinkError_HAND;
                        else if (registered_DISABLE_REQ)    NS = Disable_HAND; 
                        /* ----------------------------------------------------------------------------------- */
                    end
                /*****************************************************************************************************
                 * DISABLE
                *****************************************************************************************************/
                    Disable : begin
                        /* ------------- our adapter requset exit from Disable to reset ------------- */
                        if (i_reset_pin_or_soft_ware_clear_error || i_lp_state_req == Active) NS = Nop;
                        /* ----------- our adapter requset exit from Disable to linkerror ----------- */
                        else if (i_lp_linkerror)            NS = LinkError_HAND;
                        /* ---------------------- if partner requstes linkerror --------------------- */
                        else if (registered_LINKERROR_REQ)  NS = LinkError_HAND; // after completing bring up go to clk handshake then go to required state
                    end
                /*****************************************************************************************************
                 * L1
                *****************************************************************************************************/
                    L1 : begin
                        if      (i_lp_state_req == LinkReset || registered_LINKRESET_REQ) NS = LinkReset_HAND;
                        else if (i_lp_state_req == Disable   || registered_DISABLE_REQ)   NS = Disable_HAND; 
                        else if (i_lp_linkerror              || registered_LINKERROR_REQ) NS = LinkError_HAND; 
                        /* --------------------- adapter requests exit to active -------------------- */
                         else if (i_lp_state_req == Active)   NS = Active_HAND;
                        /* ------------------------- partner requstes active ------------------------ */
                        else if (registered_ACTIVE_REQ) NS = Active_HAND;
                    end
                /*****************************************************************************************************
                 * L2
                *****************************************************************************************************/
                    L2: begin
                        if      (i_lp_state_req == LinkReset || registered_LINKRESET_REQ) NS = LinkReset_HAND;
                        else if (i_lp_state_req == Disable   || registered_DISABLE_REQ)   NS = Disable_HAND; 
                        else if (i_lp_linkerror              || registered_LINKERROR_REQ) NS = LinkError_HAND; 
                        /* --------------------- adapter requests exit to active -------------------- */
                        if (i_lp_state_req == Active)   NS = Active_HAND;
                        /* ------------------------- partner requstes active ------------------------ */
                        else if (registered_ACTIVE_REQ) NS = Active_HAND;
                    end
                /*****************************************************************************************************
                 * ACTIVEPMNAK
                *****************************************************************************************************/
                    ActivePMNAK: begin
                        if (i_lp_state_req == Active) NS= Active;
                    end
                /*****************************************************************************************************
                 * RETRAIN
                *****************************************************************************************************/
                    Retrain: begin
                        if      (i_lp_state_req == LinkReset || registered_LINKRESET_REQ) NS = LinkReset_HAND;
                        else if (i_lp_state_req == Disable   || registered_DISABLE_REQ)   NS = Disable_HAND; 
                        else if (i_lp_linkerror              || registered_LINKERROR_REQ) NS = LinkError_HAND; 
                        /* -------------------------------------------------------------------------- */
                        else if (NOP_to_ACTIVE && ~exit_from_l1) NS = Active_HAND; // Active -> Retrain -> Active
                        else if (i_lp_state_req == Active && (exit_from_l1 || exit_from_l1_due_to_partner) && i_pl_inband_pres_from_ltsm) NS = Active; // Active -> L1 -> Retrain -> Active
                    end

            endcase
        end
    // ouput logic
        always @(posedge lclk or negedge sys_rst) begin
            if (!sys_rst) begin
                o_rdi_controller_choosen_bring_up   <= 0;
                o_go_to_training_from_rdi_to_ltsm   <= 0;
                o_go_to_active_from_rdi_to_ltsm     <= 0;
                o_start_clk_hand                    <= 0;  
                o_go_to_linkerror_from_rdi_to_ltsm  <= 0;
                o_start_pm_entry_bring_up           <= 0;
                o_go_to_l1_from_rdi_to_ltsm         <= 0;
                o_go_to_l2_from_rdi_to_ltsm         <= 0;
                o_start_linkerror_timer             <= 0;
                o_go_to_retrain_from_rdi_to_ltsm    <= 0;
                o_exit_from_l2                      <= 0;
                o_exit_from_l1                      <= 0;
                o_start_stall_hand                  <= 0;
                o_just_send_responce                <= 0;
                o_rdi_to_ltsm_go_to_reset           <= 0;
                o_pl_state_sts                      <= 0;
            end
            else begin
                o_rdi_controller_choosen_bring_up   <= 0;
                o_go_to_training_from_rdi_to_ltsm   <= 0;
                o_go_to_active_from_rdi_to_ltsm     <= 0;
                o_start_clk_hand                    <= 0;  
                o_go_to_linkerror_from_rdi_to_ltsm  <= 0;
                o_start_pm_entry_bring_up           <= 0;
                o_go_to_l1_from_rdi_to_ltsm         <= 0;
                o_go_to_l2_from_rdi_to_ltsm         <= 0;
                o_start_linkerror_timer             <= 0;
                o_go_to_retrain_from_rdi_to_ltsm    <= 0;
                o_exit_from_l2                      <= 0;
                o_exit_from_l1                      <= 0;
                o_start_stall_hand                  <= 0;
                o_just_send_responce                <= 0;
                o_rdi_to_ltsm_go_to_reset           <= 0;

                if (CS == LinkError_HAND && NS == CLK_HAND) begin
                    o_start_linkerror_timer <= 1;
                end else if (CS == LinkError) begin
                    o_start_linkerror_timer <= 0;
                end
                /*****************************************************************************************************
                 * Specific for waking adapter handling during active state
                *****************************************************************************************************/ 
                if (CS == Active && i_wake_adapter) begin
                    o_start_clk_hand <= 1;
                end else if (i_clk_done && i_wake_adapter) begin
                    o_start_clk_hand <= 0;
                end
                
                case (NS) 
                /*****************************************************************************************************
                 * NOP
                *****************************************************************************************************/                
                    Nop: begin
                        o_pl_state_sts <= Nop;
                        if (exit_from_l2 || exit_from_l2_due_to_partner) begin
                            o_exit_from_l2 <= 1;
                            o_go_to_training_from_rdi_to_ltsm <= 1;
                        end else if (i_reset_only_from_ltsm) begin
                            o_exit_from_l2 <= 0;
                        end
                    end
                /*****************************************************************************************************
                 * LINKTRAINING
                *****************************************************************************************************/  
                    LINKTRAINING: begin
                        o_go_to_training_from_rdi_to_ltsm <= 1;
                    end 
                /*****************************************************************************************************
                 * STALL_HAND
                *****************************************************************************************************/
                    STALL_HAND: begin
                        o_start_stall_hand <= 1;
                    end
                /*****************************************************************************************************
                 * ACTIVE_HAND
                *****************************************************************************************************/
                    Active_HAND: begin
                        o_rdi_controller_choosen_bring_up <= choose_bring_up_active;
                    end
                /*****************************************************************************************************
                 * ACTIVE
                *****************************************************************************************************/
                    Active : begin
                        o_pl_state_sts <= Active;
                        o_go_to_active_from_rdi_to_ltsm <= 1;
                    end
                /*****************************************************************************************************
                 * CLK_HAND
                *****************************************************************************************************/
                    CLK_HAND : begin
                        o_start_clk_hand <= 1;
                    end
                /*****************************************************************************************************
                 * LINKERROR_HAND
                *****************************************************************************************************/
                    LinkError_HAND: begin
                        o_rdi_controller_choosen_bring_up <= choose_bring_up_linkerror;
                        if (registered_LINKERROR_REQ) begin
                            o_just_send_responce <= 1; // since it is a one way handshake
                        end 
                    end
                /*****************************************************************************************************
                 * LINKERROR
                *****************************************************************************************************/
                    LinkError: begin
                        o_pl_state_sts <= LinkError;
                        o_go_to_linkerror_from_rdi_to_ltsm <= 1;
                    end
                /*****************************************************************************************************
                 * LINKRESET_HAND
                *****************************************************************************************************/
                    LinkReset_HAND: begin
                        o_rdi_controller_choosen_bring_up <= choose_bring_up_linkreset;
                        if (registered_LINKRESET_REQ) begin
                            o_just_send_responce <= 1; // since it is a one way handshake
                        end 
                    end
                /*****************************************************************************************************
                 * LINKRESET
                *****************************************************************************************************/
                    LinkReset: begin
                        o_pl_state_sts <= LinkReset;
                        o_rdi_to_ltsm_go_to_reset <= 1;
                    end
                /*****************************************************************************************************
                 * DISABLED_HAND
                *****************************************************************************************************/
                    Disable_HAND: begin
                        o_rdi_controller_choosen_bring_up <= choose_bring_up_disabled;
                        if (registered_DISABLE_REQ) begin
                            o_just_send_responce <= 1; // since it is a one way handshake
                        end 
                    end
                /*****************************************************************************************************
                 * DISABLED
                *****************************************************************************************************/
                    Disable: begin
                        o_pl_state_sts <= Disable;
                        o_rdi_to_ltsm_go_to_reset <= 1;
                    end
                /*****************************************************************************************************
                 * PM_BRING_UP
                *****************************************************************************************************/
                    PM_BRING_UP: begin
                        if      (i_lp_state_req == L1) o_start_pm_entry_bring_up <= 2'b01;
                        else if (i_lp_state_req == L2) o_start_pm_entry_bring_up <= 2'b11;
                    end
                /*****************************************************************************************************
                 * L1
                *****************************************************************************************************/
                    L1: begin
                        o_pl_state_sts <= L1;
                        o_go_to_l1_from_rdi_to_ltsm <= 1;        
                    end  
                /*****************************************************************************************************
                 * L2
                *****************************************************************************************************/
                    L2: begin
                        o_pl_state_sts <= L2;
                        o_go_to_l2_from_rdi_to_ltsm <= 1;        
                    end
                /*****************************************************************************************************
                 * RETRAIN_HAND
                *****************************************************************************************************/
                    Retrain_HAND: begin
                        o_rdi_controller_choosen_bring_up <= choose_bring_up_retrain;
                        // if (registered_RETRAIN_REQ) begin
                        //     o_just_send_responce = 1; // since it is a one way handshake
                        // end else begin
                        //     o_just_send_responce = 0;
                        // end
                    end
                /*****************************************************************************************************
                 * RETRAIN
                *****************************************************************************************************/   
                    Retrain: begin
                        o_pl_state_sts <= Retrain;
                        if (exit_from_l1 || exit_from_l1_due_to_partner) begin
                            o_exit_from_l1 <= 1;
                        end else o_go_to_retrain_from_rdi_to_ltsm <= 1; 
                    end      
                /*****************************************************************************************************
                 * ACTIVEPMNAK
                *****************************************************************************************************/            
                    ActivePMNAK: begin
                        o_pl_state_sts <= ActivePMNAK;
                    end
                /*****************************************************************************************************
                 * default
                *****************************************************************************************************/                 
                    default begin
                        o_rdi_controller_choosen_bring_up   <= 0;
                        o_go_to_training_from_rdi_to_ltsm   <= 0;
                        o_go_to_active_from_rdi_to_ltsm     <= 0;
                        o_start_clk_hand                    <= 0;  
                        o_go_to_linkerror_from_rdi_to_ltsm  <= 0;
                        o_start_pm_entry_bring_up           <= 0;
                        o_go_to_l1_from_rdi_to_ltsm         <= 0;
                        o_go_to_l2_from_rdi_to_ltsm         <= 0;
                        o_start_linkerror_timer             <= 0;
                        o_go_to_retrain_from_rdi_to_ltsm    <= 0;
                        o_exit_from_l2                      <= 0;
                        o_exit_from_l1                      <= 0;
                        o_start_stall_hand                  <= 0;
                        o_just_send_responce                <= 0;
                        o_pl_state_sts                      <= 0;
                    end        
                endcase
            end
        end

endmodule
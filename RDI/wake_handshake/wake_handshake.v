module wake_handshake (
/**************************************
 * INPUTS
**************************************/
    input           i_clk,
    input           i_rst_n,
    // Adapter related signals
    input   [3:0]   i_lp_state_req,
    input           i_lp_wake_req,
    // RDI FSM related signals
    input   [4:0]   i_pl_state_sts,
    input           i_pl_inband_pres,
    // Sideband related signals
    input           i_sb_msg_valid,
    // LTSM related signals
    input           i_ltsm_is_waked_up, // after passing o_clk_gate_en onto 2-flop sync using dig_clk we will return it back using toggle sync to besure that MB is ungated
    input           i_ltsm_in_reset,
    input           i_sb_start_training, // this signal is used to indicate that the adapter is in reset state and it will not request any wake up from the RDI FSM but the sidband start the triggiring by dtetect the pattern sidband
/**************************************
 * OUTPUTS
**************************************/
    // RDI FSM related signals
    output   reg    o_clk_gate_en,
    // Adapter related signals
    output   reg    o_pl_wake_ack
);
/********************************************
 * PARAMETERS
********************************************/
localparam RESET     = 5'b00000; 
localparam L1        = 5'b00100; 
localparam L2        = 5'b01000; 
localparam LINKRESET = 5'b01001; 
localparam DISABLED  = 5'b01100; 
/*******************************************
 * FSM STATES
*******************************************/
localparam UNGATING = 1'b0;
localparam GATING   = 1'b1;
/*******************************************
 * INTERNAL WIRES/REGISTERS
*******************************************/
reg CS;
reg NS;
reg pl_inbabd_pres_reg;
reg stop_reset_condition;
reg [4:0] pl_state_sts_reg;
reg gating_condition_reg;
/*******************************************
 * ASSIGN/WIRE STATMENTS
*******************************************/
wire rising_edge_pl_inband_pres  = (i_pl_inband_pres & ~pl_inbabd_pres_reg);
wire falling_edge_pl_inband_pres = (~i_pl_inband_pres & pl_inbabd_pres_reg);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// added (~|i_lp_state_req) which means NOP req in the condition below 34an lw 7atena (i_pl_state_sts == RESET && i_ltsm_cs == 0) lw7do //
// kdh lma el adapter y req mnna active w nroo7 n3ml traning , initially el ltsm btb2a fi reset aslun fa el condition dh hayfdl mt722   //
// w hanfdl 3amleen gating w kdh msh han3rf nshghal el LTSM khales                                                                      //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
wire reset_condition  = (i_pl_state_sts == RESET & i_ltsm_in_reset & ~|i_lp_state_req) & stop_reset_condition;
// el7eta bta3t el stop_reset_condition 3amltha 34an el reset condition dh mn gherha byb2a mt722 fi elawel 7ata b3d mby7sl wake req
// fa lw el adapter masln ba3t wake req w nazlha abl my3ml lp_state_req ana ghasb 3nee harg3 gating tany w dh behaviour ghalat
// fa 3amlt el register dh "stop_reset_condition" 34an 23rf en el reset condition dh mt722 bas b3d ma el training w el active khlst 
// fa ezn mn 7a2y sa3tha aru7 gating

wire pl_state_sts_changed = (i_pl_state_sts != pl_state_sts_reg);
wire gating_condition = (reset_condition || (pl_state_sts_changed && (i_pl_state_sts == L1 || i_pl_state_sts == L2 || i_pl_state_sts == LINKRESET || i_pl_state_sts == DISABLED)));
/*******************************************
 * STATE MEMORY
*******************************************/
always @ (posedge i_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        CS <= GATING;
    end else begin
        CS <= NS;
    end
end
/*******************************************
 * NEXT STATE LOGIC
*******************************************/
//// ~i_ltsm_in_reset  i need this or somthing like this to show that the ltsm start the trainnig by itself  we can change its name 
always @ (*) begin
    case (CS)
    UNGATING: NS = (gating_condition_reg & ~i_lp_wake_req & ~i_sb_msg_valid)? GATING : UNGATING;
    GATING:   NS = (i_lp_wake_req || i_sb_msg_valid || i_sb_start_training)? UNGATING : GATING;
    default : NS = GATING;
    endcase
end
/*******************************************
 * OUTPUT LOGIC
*******************************************/
always @ (posedge i_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        o_clk_gate_en <= 0;
        o_pl_wake_ack <= 0;
    end else begin
        o_clk_gate_en <= (CS == UNGATING);
        o_pl_wake_ack <= (i_lp_wake_req & i_ltsm_is_waked_up);
    end
end

// detecting transitions on pl_inbabd_pres
always @ (posedge i_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        pl_inbabd_pres_reg   <= 0;
        stop_reset_condition <= 0;
        pl_state_sts_reg     <= 0;
        gating_condition_reg <= 0;
    end else begin
        // delay gating condition so that when LTSM went to reset the enable signals can become low then gate 
        gating_condition_reg <= gating_condition;
        pl_state_sts_reg     <= i_pl_state_sts;
        pl_inbabd_pres_reg   <= i_pl_inband_pres;
        /* -------------------------------------------------------------------------- */
        if (i_lp_wake_req) begin
            stop_reset_condition <= 0; // this 1'b0 will cause reset_condition to not occur
        end else if (falling_edge_pl_inband_pres) begin
            stop_reset_condition <= 1; // this 1'b1 will cause reset_condition to occur if the reset of condition is valid
        end
    end
end


endmodule
module General_Bring_Up_TX (
    input               lclk,
    input               sys_rst,
    input   [2:0]       i_rdi_controller_choosen_bring_up, // This are 3 bits (level signal) used to choose which bring will use in the bring up block (1 ACTIVE ,2 RETRAIN, 3 LINKERROR ,4 LINKRESET, 5 DISABLE)
    input   [3:0]       i_rx_sb_message,
    input               i_rx_busy_from_RX, // Indicates if the RX side is busy
    input               i_rx_msg_valid, // sb_message_valid from rx _sb
    input               i_rx_done_send_message, // indicate that the sb already send the message
    /* ------------------------------- added input ------------------------------ */
    input                   i_just_send_responce,
    /* -------------------------------------------------------------------------- */
    output reg  [3:0]   o_tx_sb_message,
    output reg          o_tx_msg_valid, // sb_message_valid to tx_sb
    output reg          o_General_Bring_Up_done_TX // General bring up done signal to the rdi controller
);
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
        
    reg [2:0] CS, NS, rdi_controller_choosen_bring_up_reg;
    parameter [2:0] IDLE                = 3'b000,
                    WAIT_FOR_RX_TO_RESP = 3'b001,
                    REQ_SEND            = 3'b010,
                    HANDLE              = 3'b011,
                    DONE                = 3'b100;


    wire transition_to_DONE;
    assign transition_to_DONE    = (i_rx_sb_message == ACTIVE_RSP || i_rx_sb_message == RETRAIN_RSP || i_rx_sb_message == LINKERROR_RSP || i_rx_sb_message == LINKRESET_RSP || i_rx_sb_message == DISABLE_RSP) && i_rx_msg_valid;
    wire wait_for_rx_to_responce = (i_rx_sb_message == ACTIVE_REQ || i_rx_sb_message == LINKRESET_REQ || i_rx_sb_message == LINKERROR_REQ || i_rx_sb_message == RETRAIN_REQ || i_rx_sb_message == DISABLE_REQ);
    wire config_changed          = i_rdi_controller_choosen_bring_up != rdi_controller_choosen_bring_up_reg;
    
    // State register
    always @(posedge lclk or negedge sys_rst) begin
        if (!sys_rst) begin
            CS <= IDLE;
            rdi_controller_choosen_bring_up_reg <= 0;
        end else begin
            rdi_controller_choosen_bring_up_reg <= i_rdi_controller_choosen_bring_up;
            CS <= NS;
        end
    end

    // Next state logic
    always @(*) begin
        NS = CS; // Default to current state
        case (CS)
            IDLE: begin
                if (i_rdi_controller_choosen_bring_up == 3'b000) begin
                    NS = IDLE;
                end else if (i_rdi_controller_choosen_bring_up!=3'b000 && ~wait_for_rx_to_responce) begin
                    NS = REQ_SEND;
                end else begin
                    NS = WAIT_FOR_RX_TO_RESP;
                end
            end
            WAIT_FOR_RX_TO_RESP: begin
                if (i_rdi_controller_choosen_bring_up == 3'b000 || config_changed) begin
                    NS = IDLE;
                end else if (~i_rx_busy_from_RX) begin
                    NS = REQ_SEND;
                end
            end
            REQ_SEND: begin
                if (i_rdi_controller_choosen_bring_up == 3'b000 || config_changed) begin
                    NS = IDLE;
                end else if (i_rx_done_send_message && ~i_rx_busy_from_RX) begin
                    NS = HANDLE;
                end
            end
            HANDLE: begin
                if (i_rdi_controller_choosen_bring_up == 3'b000 || config_changed) begin
                    NS = IDLE;
                end else if (transition_to_DONE) begin
                    NS = DONE;
                end 
            end
            DONE: begin
                if (i_rdi_controller_choosen_bring_up==0 || config_changed) NS= IDLE; 
            end 
            default: NS = IDLE; // Default state to avoid latches
        endcase
    end
    // Output logic
    always
@(posedge lclk or negedge sys_rst) begin
        if (!sys_rst) begin
            o_tx_sb_message <= 4'b0000;
            o_tx_msg_valid <= 1'b0;
            o_General_Bring_Up_done_TX <= 1'b0;
        end else begin
            case (NS)
                IDLE: begin
                    o_tx_sb_message <= 4'b0000;
                    o_tx_msg_valid <= 1'b0;
                    o_General_Bring_Up_done_TX <= 1'b0;
                end
                REQ_SEND: begin
                    case (i_rdi_controller_choosen_bring_up)
                        3'b001: o_tx_sb_message <= ACTIVE_REQ; // ACTIVE
                        3'b010: o_tx_sb_message <= RETRAIN_REQ; // RETRAIN
                        3'b011: o_tx_sb_message <= LINKERROR_REQ; // LINKERROR
                        3'b100: o_tx_sb_message <= LINKRESET_REQ; // LINKRESET
                        3'b101: o_tx_sb_message <= DISABLE_REQ; // DISABLE
                        default: o_tx_sb_message <= 4'b0000;
                    endcase
                    o_tx_msg_valid <= 1'b1;
                end
                HANDLE: begin
                    o_tx_msg_valid <= 1'b0;
                end
                DONE: begin 
                    o_General_Bring_Up_done_TX <= 1'b1; 
                end 
            endcase
        end
    end

endmodule



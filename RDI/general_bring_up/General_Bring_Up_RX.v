module General_Bring_Up_RX (
    input wire              lclk,                               // Local clock
    input wire              sys_rst,                            // System reset (active low)
    
    input [2:0]             i_rdi_controller_choosen_bring_up,  // Chosen bring up signal from RDI controller
    // Sideband message interface
    input wire              i_rx_busy_from_TX,                  // Indicates if the RX side is busy
    input wire [3:0]        i_rx_sb_message,                    // Received sideband message
    input wire              i_rx_msg_valid,                     // Indicates if the received message is valid 
    input wire              i_rx_done_send_message,
    input wire [3:0]        i_lp_state_req,                     // Chosen bring up signal from RDI controller
    /* ------------------------------- added input ------------------------------ */
    input                   i_just_send_responce,
    /* -------------------------------------------------------------------------- */
    output reg [3:0]        o_tx_sb_message,
    output reg              o_tx_msg_valid,                     // sb_message_valid to tx_sb   
    // General Bring Up signals
    output reg              o_General_Bring_Up_done_RX          // Indicates if the general bring up process is done
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

    // State definitions as local parameters
        localparam [3:0] 
            Active      = 4'b0001,
            LinkReset   = 4'b1001,
            LinkError   = 4'b1010,
            Retrain     = 4'b1011,
            Disable     = 4'b1100;

    // Bring up block configurations
        localparam choose_bring_up_active    = 3'b001;
        localparam choose_bring_up_linkreset = 3'b100;
        localparam choose_bring_up_linkerror = 3'b011;
        localparam choose_bring_up_disabled  = 3'b101;
        localparam choose_bring_up_retrain   = 3'b010;

    // State machine states
        reg [1:0] CS, NS;
        parameter [1:0] IDLE                = 2'b00,
                        CHECK_REQ_MESSG     = 2'b01,
                        RESP_SEND           = 2'b10,
                        DONE                = 2'b11;
        reg [2:0] rdi_controller_choosen_bring_up_reg;
                
    // internal signals
        wire transition_to_RESP_SEND;

    /* -------------------------------------------------------------------------- */
    /*                                state memory                                */
    /* -------------------------------------------------------------------------- */
    always @(posedge lclk or negedge sys_rst) begin
        if (!sys_rst) begin
            CS <= IDLE;
            rdi_controller_choosen_bring_up_reg <= 0;
        end else begin
            rdi_controller_choosen_bring_up_reg <= i_rdi_controller_choosen_bring_up;
            CS <= NS;
        end
    end
        
    /* -------------------------------------------------------------------------- */
    /*                         State transition conditions                        */
    /* -------------------------------------------------------------------------- */
        assign transition_to_RESP_SEND = (i_rx_sb_message == ACTIVE_REQ || i_rx_sb_message == LINKRESET_REQ || i_rx_sb_message == LINKERROR_REQ || i_rx_sb_message == RETRAIN_REQ || i_rx_sb_message == DISABLE_REQ) && i_rx_msg_valid;
        wire config_changed            = i_rdi_controller_choosen_bring_up != rdi_controller_choosen_bring_up_reg;

    /* -------------------------------------------------------------------------- */
    /*                              Next state logic                              */
    /* -------------------------------------------------------------------------- */
        always @(*) begin
            NS = CS; // Default to current state
            case (CS)
                IDLE: begin
                    if (i_rdi_controller_choosen_bring_up == 3'b000) begin
                        NS = IDLE;
                    end else if ((i_rdi_controller_choosen_bring_up == choose_bring_up_linkreset ||
                         i_rdi_controller_choosen_bring_up == choose_bring_up_linkerror ||
                         i_rdi_controller_choosen_bring_up == choose_bring_up_disabled  ||
                         i_rdi_controller_choosen_bring_up == choose_bring_up_retrain)) begin
                            if (i_just_send_responce) begin // if partner requsted (one way handshake)
                                NS = RESP_SEND; 
                            end else begin                  // if our adapter requestes
                                NS = CHECK_REQ_MESSG;
                            end
                    end else if (i_rdi_controller_choosen_bring_up != 0 && i_rx_sb_message == ACTIVE_REQ) begin
                        NS = RESP_SEND;
                    end else begin
                        NS = CHECK_REQ_MESSG;
                    end
                end
                /* -------------------------------------------------------------------------- */
                CHECK_REQ_MESSG: begin
                    if (i_rdi_controller_choosen_bring_up == 3'b000 || config_changed) begin
                        NS = IDLE;
                    end else if (transition_to_RESP_SEND && ~ i_rx_busy_from_TX) begin
                        NS = RESP_SEND;
                    end 
                end
                /* -------------------------------------------------------------------------- */
                RESP_SEND: begin
                    if (i_rdi_controller_choosen_bring_up == 3'b000 || config_changed) begin
                        NS = IDLE;
                    end else if (i_rx_done_send_message) begin
                        NS = DONE;
                    end
                end
                /* -------------------------------------------------------------------------- */
                DONE: begin 
                    if (i_rdi_controller_choosen_bring_up == 0 || config_changed) begin
                        NS = IDLE; 
                    end 
                end 
                /* -------------------------------------------------------------------------- */
                default: NS = IDLE; // Default state to avoid latches
            endcase
        end

    /* -------------------------------------------------------------------------- */
    /*                                Output logic                                */
    /* -------------------------------------------------------------------------- */
        always @(posedge lclk or negedge sys_rst) begin
            if (!sys_rst) begin
                o_tx_sb_message             <= 4'b0000;
                o_tx_msg_valid              <= 1'b0;
                o_General_Bring_Up_done_RX  <= 1'b0;
            end else begin
                o_tx_sb_message             <= 4'b0000;
                o_tx_msg_valid              <= 1'b0;
                o_General_Bring_Up_done_RX  <= 1'b0;
                case (NS)
                    IDLE: begin
                        o_tx_sb_message             <= 4'b0000;
                        o_tx_msg_valid              <= 1'b0;
                        o_General_Bring_Up_done_RX  <= 1'b0;
                    end
                    /* -------------------------------------------------------------------------- */
                    RESP_SEND: begin 
                        case (i_rdi_controller_choosen_bring_up)
                            choose_bring_up_active   : o_tx_sb_message <= ACTIVE_RSP;       // ACTIVE
                            choose_bring_up_retrain  : o_tx_sb_message <= RETRAIN_RSP;      // RETRAIN
                            choose_bring_up_linkerror: o_tx_sb_message <= LINKERROR_RSP;    // LINKERROR
                            choose_bring_up_linkreset: o_tx_sb_message <= LINKRESET_RSP;    // LINKRESET
                            choose_bring_up_disabled : o_tx_sb_message <= DISABLE_RSP;      // DISABLE
                            default: o_tx_sb_message <= 4'b0000;
                        endcase
                        o_tx_msg_valid <= 1'b1;
                    end 
                    /* -------------------------------------------------------------------------- */
                    DONE: begin 
                        o_General_Bring_Up_done_RX <= 1'b1; 
                    end 
                    /* -------------------------------------------------------------------------- */
                    default: begin 
                        o_tx_sb_message             <= 4'b0000;
                        o_tx_msg_valid              <= 1'b0;
                        o_General_Bring_Up_done_RX  <= 1'b0;
                    end
                endcase
            end
        end      
    
endmodule
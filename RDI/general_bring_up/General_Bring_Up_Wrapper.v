module General_Bring_Up_Wrapper (
    input               lclk,
    input               sys_rst,
    input   [2:0]       i_rdi_controller_choosen_bring_up, // Chosen bring up signal for TX
    input   [3:0]       i_rx_sb_message,                  // Sideband message from RX
    input               i_rx_msg_valid,                   // RX message valid signal
    input               i_rx_done_send_message,           // RX done sending message
    input   [3:0]       i_lp_state_req,                    // Link state request signal
    /* ------------------------------- added input ------------------------------ */
    input               i_just_send_responce,
    /* -------------------------------------------------------------------------- */
    output  [3:0]       o_tx_sb_message,                  // Sideband message from TX
    output              o_tx_msg_valid,                   // TX message valid signal
    output   reg        o_General_Bring_Up_done       // General bring up done signal from TX
);
    // Internal signals for interconnection
    wire            General_Bring_Up_done_RX,General_Bring_Up_done_TX;
    wire            o_tx_msg_valid_TX, o_tx_msg_valid_RX;
    wire [3:0]      tx_sb_message_output_from_RX, tx_sb_message_output_from_TX;
    
    // Bring up block configurations
        localparam choose_bring_up_active    = 3'b001;
        localparam choose_bring_up_linkreset = 3'b100;
        localparam choose_bring_up_linkerror = 3'b011;
        localparam choose_bring_up_disabled  = 3'b101;
        localparam choose_bring_up_retrain   = 3'b010;


    // Instantiate General_Bring_Up_RX
    General_Bring_Up_RX rx_inst (
        .lclk                               (lclk),
        .sys_rst                            (sys_rst),
        .i_rx_busy_from_TX                  (o_tx_msg_valid_TX),
        .i_rdi_controller_choosen_bring_up  (i_rdi_controller_choosen_bring_up),
        .i_rx_sb_message                    (i_rx_sb_message),
        .i_rx_done_send_message             (i_rx_done_send_message),
        .i_rx_msg_valid                     (i_rx_msg_valid),
        .i_lp_state_req                     (i_lp_state_req),
        .i_just_send_responce               (i_just_send_responce),
        .o_tx_sb_message                    (tx_sb_message_output_from_RX),
        .o_tx_msg_valid                     (o_tx_msg_valid_RX),
        .o_General_Bring_Up_done_RX         (General_Bring_Up_done_RX)
    );

    // Instantiate General_Bring_Up_TX
    General_Bring_Up_TX tx_inst (
        .lclk                               (lclk),
        .sys_rst                            (sys_rst),
        .i_rdi_controller_choosen_bring_up  (i_rdi_controller_choosen_bring_up),
        .i_rx_sb_message                    (i_rx_sb_message),
        .i_rx_busy_from_RX                  (o_tx_msg_valid_RX),
        .i_rx_msg_valid                     (i_rx_msg_valid),
        .i_rx_done_send_message             (i_rx_done_send_message),
        .i_just_send_responce               (i_just_send_responce),
        .o_tx_sb_message                    (tx_sb_message_output_from_TX),
        .o_tx_msg_valid                     (o_tx_msg_valid_TX),
        .o_General_Bring_Up_done_TX         (General_Bring_Up_done_TX)
    );
    //assign o_General_Bring_Up_done = (i_just_send_responce)? General_Bring_Up_done_RX : (General_Bring_Up_done_TX & General_Bring_Up_done_RX) ;
    always @ (*) begin
        if (i_just_send_responce) begin
            o_General_Bring_Up_done = General_Bring_Up_done_RX;
        end else begin
            if (i_rdi_controller_choosen_bring_up == choose_bring_up_active)
                o_General_Bring_Up_done = General_Bring_Up_done_TX & General_Bring_Up_done_RX;
            else
                o_General_Bring_Up_done = General_Bring_Up_done_TX;
        end
    end
    assign o_tx_sb_message = (o_tx_msg_valid_RX)? tx_sb_message_output_from_RX :(o_tx_msg_valid_TX)? tx_sb_message_output_from_TX:0; // Choose the sideband message based on the valid signal from RX or TX
    assign o_tx_msg_valid = o_tx_msg_valid_RX | o_tx_msg_valid_TX; // Combine the message valid signals from RX and TX
    
endmodule
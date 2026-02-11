module Valtrain_Controller (
    // Input Ports
    input wire i_clk,                  // System clock input
    input wire i_rst_n,                // Active-low asynchronous reset
    input wire Valid_pattern_enable,   // Enable signal for pattern generator mode
    input wire valid_frame_enable,     // Enable signal for valid frame mode
    
    // Output Ports
    output  [31:0] o_TVLD_L,           // 32-bit valid pattern output (concatenated 4 times)
    output         o_done,             // Done signal indicating operation completion
    output reg enable_detector         // 1 when module is in any valid state
);

    // Internal Signals
    reg [31:0] TVLD_L;

    // Parameters
    localparam VALID_8BIT = 8'b11110000;         // Base 8-bit pattern: 4 ones, 4 zeros
    localparam VALID_PATTERN_CODE = {VALID_8BIT, VALID_8BIT, VALID_8BIT, VALID_8BIT}; // 32-bit pattern: concatenate 4 times
    localparam MAX_COUNT = 127;              // Maximum counter value 

    // Internal Registers
    reg [6:0] counter;                          // 4-bit counter for pattern transmission timing
    assign o_done = (counter == MAX_COUNT);

/************************************************************************************************
 * Edit by   : Saadany 
 * Edit type : Creating state machine
 * Date      : 2/5/2025
************************************************************************************************/
    /*----------------------------------------
     * FSM states
    ----------------------------------------*/
    localparam [1:0] IDLE = 2'b00,
                     VALID_FRAMING = 2'b01,
                     VALID_PATTERN = 2'b11;
    /*----------------------------------------
     * Registers
    ----------------------------------------*/
    reg [1:0] current_state,next_state;
    /*----------------------------------------
     * FSM logic
    ----------------------------------------*/
       always @ (posedge i_clk or negedge i_rst_n) begin
            if (~i_rst_n) begin
                current_state <= IDLE;
            end else begin
                current_state <= next_state;
            end
       end
       /* -------------------------------------------------------------------------- */
        always @ (*) begin
            case (current_state)
                /*-----------------------------------------
                * IDLE state
                -----------------------------------------*/
                IDLE: begin
                    if (Valid_pattern_enable) begin 
                        next_state <= VALID_PATTERN;
                    end else if (valid_frame_enable) begin
                        next_state <= VALID_FRAMING;
                    end else begin
                        next_state <= IDLE;
                    end
                end
                /*-----------------------------------------
                * VALID_PATTERN state
                -----------------------------------------*/
                VALID_PATTERN: begin
                    if (o_done) begin
                        next_state <= IDLE;
                    end else begin
                        next_state <= VALID_PATTERN;
                    end
                end
                /*-----------------------------------------
                * VALID_FRAMING state
                -----------------------------------------*/
                VALID_FRAMING: begin
                    if (~valid_frame_enable) begin 
                        next_state <= IDLE;
                    end else begin
                        next_state <= VALID_FRAMING;
                    end
                end
                /*-----------------------------------------
                * default
                -----------------------------------------*/
                default: begin
                    next_state <= IDLE;
                end
            endcase
        end
  /************************************************************************************************/

assign o_TVLD_L = (current_state == VALID_PATTERN)? 32'hf0f0f0f0 : (current_state == VALID_FRAMING)? 32'hf0f0f0f0 : 32'hf0f0f0f0;
  
    // Sequential Logic
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            // Asynchronous Reset: Initialize all registers to known states
            TVLD_L          <= 32'b0;          // Clear 32-bit pattern output
            counter         <= 7'b0;           // Reset counter to 0
            enable_detector <= 1'b0;           // Clear enable_detector during reset
        end 
        else begin
            // Synchronous Behavior based on current state
            case (current_state)
                IDLE: begin  // Idle Mode: Both enables are low
                    TVLD_L          <= 32'b0;          // Output all zeros (32-bit)
                    counter         <= 7'b0;           // Reset counter
                    enable_detector <= 1'b0;           // Active in idle mode
                end
                
                VALID_FRAMING: begin  // Valid Frame Mode: valid_frame_enable = 1, Valid_pattern_enable = 0
                    TVLD_L          <= VALID_PATTERN_CODE;  // Output the 32-bit concatenated pattern
                    // o_done       <= 1'b1;           // Signal immediate completion (commented as in original)
                    counter         <= 7'b0;           // Keep counter reset
                    enable_detector <= 1'b0;           // let the lfsr_tx drive the ser_en
                end
                
                VALID_PATTERN: begin  // Pattern Generator Mode: Valid_pattern_enable = 1, valid_frame_enable = 0
                    counter <= counter + 1'b1;         // Increment counter each clock cycle
                    if (counter < MAX_COUNT) begin
                        TVLD_L          <= VALID_PATTERN_CODE; // Output the 32-bit concatenated pattern
                        enable_detector <= 1;          // Active during pattern generation
                    end 
                    else begin  // counter == MAX_COUNT
                        TVLD_L          <= VALID_PATTERN_CODE; // Last cycle with concatenated pattern
                        enable_detector <= 1'b0; 
                        counter         <= 7'b0;         // Still active at completion
                    end
                end
                
                default: begin  // Catch-all for any unexpected state
                    TVLD_L          <= 32'b0;          // Safety default (32-bit)
                    counter         <= 7'b0;
                    enable_detector <= 1'b0;           // Inactive in default case
                end
            endcase
        end
    end

endmodule
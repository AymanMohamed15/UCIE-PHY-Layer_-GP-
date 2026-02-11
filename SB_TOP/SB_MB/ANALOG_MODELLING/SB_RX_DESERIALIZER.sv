module SB_RX_DESERIALIZER (
    input                i_clk,                     // Recieved clock to sample data (800 MHz)
    input                i_clk_pll,                 // Local pll clock (800 MHz)
    input                i_sb_clk,
    input                i_rst_n,                   // Active-low reset
    input                ser_data_in,               // Serial input data 
    output reg [63:0]    par_data_out,              // Parallel output data 
    output reg           de_ser_done                // Signal to indicate deserialization is done
);

/*------------------------------------------------------------------------------
-- INTERNAL WIRES & REGS   
------------------------------------------------------------------------------*/
reg [6:0] bit_count;     // Counter to track the number of bits received
reg [63:0] shift_reg;    // Shift register to store the incoming bits
reg q, q_back;
reg reset_counter;
reg de_ser_done_int;
/*------------------------------------------------------------------------------
-- SHIFT REGISTER (work with received clock from rx lane)
------------------------------------------------------------------------------*/
always @(posedge i_clk or negedge i_rst_n) begin 
    if (~i_rst_n) begin
        shift_reg <= 0; 
    end 
    else if (bit_count <= 64) begin
        shift_reg <= {shift_reg[62:0], ser_data_in}; 
    end
end
/*------------------------------------------------------------------------------
-- SHIFT COUNTER (work with received clock from rx lane)  
------------------------------------------------------------------------------*/
always @(posedge i_clk or negedge i_rst_n or posedge reset_counter) begin
    if (~i_rst_n || reset_counter) begin
        bit_count <= 0;
    end 
    else begin
        bit_count <= bit_count + 1;
    end
end
/*------------------------------------------------------------------------------
-- SYNCHRONIZING A VALID TO DIGITAL SB DOMAIN  
------------------------------------------------------------------------------*/
always @(posedge i_sb_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        q <= 0;
        de_ser_done_int <= 0;
    end 
    else begin
        q <= (bit_count == 65);
        de_ser_done_int <= q;
    end
end
/*------------------------------------------------------------------------------
-- SYNCHRONIZING THE VALID BACK TO RESET THE COUNTER (with the pll clock)  
------------------------------------------------------------------------------*/
always @(posedge i_clk_pll or negedge i_rst_n) begin
    if (~i_rst_n) begin
        q_back <= 0;
        reset_counter <= 0;
    end 
    else begin
        q_back <= de_ser_done_int;
        reset_counter <= q_back;
    end
end
/*------------------------------------------------------------------------------
-- SYNCHRONIZING RECEIVED DATA TO THE DIG SB DOMAIN  
------------------------------------------------------------------------------*/
always @(posedge i_sb_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        par_data_out <= 0;
        de_ser_done  <= 0;
    end 
    else begin
        de_ser_done <= 0;

        if (de_ser_done_int) begin
            par_data_out <= shift_reg;
            de_ser_done  <= 1;
        end
    end
end

endmodule

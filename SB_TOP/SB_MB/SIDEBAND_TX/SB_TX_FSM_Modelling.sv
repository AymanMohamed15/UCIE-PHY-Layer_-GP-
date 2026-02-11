module SB_TX_FSM_Modelling (
    input       i_clk,                  // Clock
    input       i_rst_n,                // Asynchronous reset active low
    input       i_empty,                // FIFO empty signal
    input       i_dont_send_zeros,      // coming from fifo when read data is zeros
    output  reg o_read_enable,          // Read enable signal
    output  reg o_clk_en,               // serializer en
    output      o_ser_done
);


/*------------------------------------------------------------------------------
--  LOCAL PARAMETERS
------------------------------------------------------------------------------*/
localparam IDLE = 2'b00;
localparam SENDING_PACK = 2'b01;
localparam SLEEPING = 2'b10;


/*------------------------------------------------------------------------------
-- INTERNAL REGS   
------------------------------------------------------------------------------*/
reg cs, ns;        // Current state and next state
reg [3:0] ser_counter;   // Counter for 96 cycle for serialization (12 clock cycles in 100 MHz)
reg start_counting;
reg clk_en_int;
assign o_ser_done = (ser_counter == 12);
/*------------------------------------------------------------------------------
-- State transition logic   
------------------------------------------------------------------------------*/
always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n)
        cs <= IDLE;
    else
        cs <= ns;
end

/*------------------------------------------------------------------------------
-- Next state logic   
------------------------------------------------------------------------------*/
always @(*) begin 
    case (cs)
        IDLE: begin
            if (~i_empty) // not fifo empty
                ns = SENDING_PACK;
            else 
                ns = IDLE;
        end

        SENDING_PACK: begin
           if (i_dont_send_zeros || (ser_counter[3] & ser_counter[2])) begin // (ser_counter[3] & ser_counter[2]) means counter = 4'd12
                ns = IDLE;
           end else 
                ns = SENDING_PACK;
        end 

        default: ns = IDLE;
    endcase
end

/*---------------------------------------------------------------------------------------
-- serialization time counter (serialization time = 8 cycles "toggling", 4 cycles "low")
---------------------------------------------------------------------------------------*/
always @(posedge i_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        ser_counter <= 0;
    end else if (ser_counter == 12) begin
        ser_counter <= 0;
    end else if (start_counting || o_clk_en) begin
        ser_counter <= ser_counter + 1;
    end
end

// controlling the start time of the counter to sync the serializer en and preventing counter from dummy counting to save power
always @(posedge i_clk or negedge i_rst_n) begin
    if (~i_rst_n) begin
        start_counting <= 0;
    end else if (ser_counter == 12) begin
        start_counting <= 0;
    end else if (o_clk_en) begin
        start_counting <= 1;
    end
end

/*------------------------------------------------------------------------------
-- Output Clock Enable  
------------------------------------------------------------------------------*/
always @(posedge i_clk or negedge i_rst_n) begin 
	if(~i_rst_n) begin
        //clk_en_int <= 0;
		o_clk_en <= 0;
    end else begin
        //o_clk_en <= clk_en_int; // delaying the serializer en to be aligned with data give to it since it takes one more cycle to read from fifo

        if(clk_en_int && ~i_dont_send_zeros) begin
            o_clk_en <= 1;
        end
        else if (ser_counter == 7) begin // 64 bits should be serialized after this time
        // bnzl el internal en dh 3nd 7 msh 8 34an elmhum blnsbali fi elakher hwa el o_clk_en eli bysm3 fi el serializer fa lw khalet
        // el internal ynzl 3nd 8 el o_clk_en haysm3 3nd el serializer fi 9 yaani bnb3t bits zyada ghalat
            o_clk_en <= 0;
        end
    end
end


/*------------------------------------------------------------------------------
-- Output Read Enable  
------------------------------------------------------------------------------*/
always @(posedge i_clk or negedge i_rst_n) begin 
	if(~i_rst_n) begin
		o_read_enable <= 0;
        clk_en_int <= 0;
    end else begin
        clk_en_int <= o_read_enable;
        o_read_enable <= 0;
        if((cs == IDLE) && ns == SENDING_PACK) begin
            o_read_enable <= 1;
        end
    end
end


endmodule
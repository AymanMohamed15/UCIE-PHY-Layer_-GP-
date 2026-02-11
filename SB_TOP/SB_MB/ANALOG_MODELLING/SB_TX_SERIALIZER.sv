module SB_TX_SERIALIZER (
    input 		 i_pll_clk,           // Input clock from PLL 
	input		 i_sb_clk,
    input 		 i_rst_n,             // Active-low reset
    input [63:0] i_data_in,   	      // Parallel input      
    input 	 	 i_enable,		      // Indicates valid data_in
    output  	 TXDATASB             // Serialized output
);
/* -------------------------------------------------------------------------- */
/*                            internal wires & regs                           */
/* -------------------------------------------------------------------------- */
	reg [63:0] load_reg;   // loaded using sb clock (100MHz) 
	reg load_en;
	reg [63:0] shift_reg;  // using 800MHz shifting
	reg i_enable_reg; 
	reg [6:0] counter;
	reg see_output;
	wire posedge_ser_enable = i_enable && ~ i_enable_reg;
/* -------------------------------------------------------------------------- */
/*                             loading input data                             */
/* -------------------------------------------------------------------------- */
	always @(posedge i_sb_clk or negedge i_rst_n) begin 
		if(~i_rst_n) begin
			load_reg <= 0;
			i_enable_reg <= 0;
		end 
		else begin
			i_enable_reg   <= i_enable;
			/* -------------------------------------------------------------------------- */
			if (i_enable) begin
				load_reg <= i_data_in;
			end
		end 
	end	
/* -------------------------------------------------------------------------- */
/*                             Parallel to Serial                             */
/* -------------------------------------------------------------------------- */
	always @(posedge i_pll_clk or negedge i_rst_n) begin 
		if(~i_rst_n) begin
			shift_reg  <= 0;
			load_en <= 0;
		end 
		else begin
			load_en <= 0;
			// start loading in shift register with pll CLK
			if (posedge_ser_enable) load_en <= 1;
			if (load_en || counter == 63) begin
				shift_reg  <= load_reg;
			end
			else if (i_enable) begin
				shift_reg <= shift_reg << 1;
			end
		end
	end
/* -------------------------------------------------------------------------- */
/*                     when to see output on physical lane                    */
/* -------------------------------------------------------------------------- */
always @ (posedge i_pll_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		see_output <= 0;
	end else if (~i_enable) begin
		see_output <= 0;
	end else if (i_enable_reg) begin
		see_output <= 1;
	end
end

	// assign TXDATASB = (load_en || counter == 64 || ~i_enable)? 0 : shift_reg[63];
	assign TXDATASB = (see_output)? shift_reg[63] : 0;
/* -------------------------------------------------------------------------- */
/*                                   Counter                                  */
/* -------------------------------------------------------------------------- */
	always @(posedge i_pll_clk or negedge i_rst_n) begin 
		if(~i_rst_n) begin
			counter <= 0;
		end else begin
			if (counter == 63 || load_en) begin
				counter <= 0;
			end
			else begin
				counter <= counter +1;
			end
		end
	end
endmodule

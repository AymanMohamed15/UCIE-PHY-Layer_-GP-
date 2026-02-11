module SERIALIZER (
    input 		 i_pll_clk,           // Input clock from PLL 
	input		 i_mb_clk,
    input 		 i_rst_n,             // Active-low reset
    input [31:0] i_data_in,   	      // Parallel input      
    input 	 	 i_enable,		      // Indicates valid data_in
    output  	 TXDATA               // Serialized output
);
/* -------------------------------------------------------------------------- */
/*                            internal wires & regs                           */
/* -------------------------------------------------------------------------- */
	reg [31:0] load_reg;   // loaded using mb clock (4G/32) 
	reg load_en;
	reg [31:0] shift_reg;  // using 4G shifting
	reg i_enable_reg; 
	reg [7:0] counter;
	wire posedge_ser_enable = i_enable && ~ i_enable_reg;
/* -------------------------------------------------------------------------- */
/*                             loading input data                             */
/* -------------------------------------------------------------------------- */
	always @(posedge i_mb_clk or negedge i_rst_n) begin 
		if(~i_rst_n) begin
			load_reg <= 0;
			i_enable_reg <= 0;
		end 
		else begin
			i_enable_reg   <= i_enable;
			/* -------------------------------------------------------------------------- */
			if (i_enable) begin
				load_reg <= i_data_in;
				//start_shifting <= 1;
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
			//prev_shift <= 0;
		end 
		else begin
			load_en <= 0;
			if (posedge_ser_enable) load_en <= 1;
			if (load_en || counter == 31) begin
				shift_reg  <= load_reg;
				//prev_shift <= 1;
			end
			else begin
				shift_reg <= shift_reg << 1;
			end
		end
	end

	assign TXDATA = (load_en || counter == 32 || ~i_enable_reg)? 0 : shift_reg[31];
/* -------------------------------------------------------------------------- */
/*                                   Counter                                  */
/* -------------------------------------------------------------------------- */
	always @(posedge i_pll_clk or negedge i_rst_n) begin 
		if(~i_rst_n) begin
			counter <= 0;
		end else begin
			if (counter == 31 || load_en) begin
				counter <= 0;
			end
			else begin
				counter <= counter +1;
			end
		end
	end
endmodule


// module SERIALIZER (
//     input 		 i_pll_clk,           // Input clock from PLL 
// 	input		 i_mb_clk,
//     input 		 i_rst_n,             // Active-low reset
//     input [31:0] i_data_in,   	      // Parallel input      
//     input 	 	 i_enable,		      // Indicates valid data_in
//     output  	 TXDATA               // Serialized output
// );
// /* -------------------------------------------------------------------------- */
// /*                            internal wires & regs                           */
// /* -------------------------------------------------------------------------- */
// 	reg [31:0] load_reg;   // loaded using mb clock (4G/32) 
// 	reg load_en;
// 	reg [31:0] shift_reg;  // using 4G shifting
// 	reg i_enable_reg; 
// 	reg [7:0] counter;
// 	wire posedge_ser_enable = i_enable && ~ i_enable_reg;
// /* -------------------------------------------------------------------------- */
// /*                             loading input data                             */
// /* -------------------------------------------------------------------------- */
// 	always @(posedge i_mb_clk or negedge i_rst_n) begin 
// 		if(~i_rst_n) begin
// 			load_reg <= 0;
// 			i_enable_reg <= 0;
// 		end 
// 		else begin
// 			i_enable_reg   <= i_enable;
// 			/* -------------------------------------------------------------------------- */
// 			if (i_enable) begin
// 				load_reg <= i_data_in;
// 				//start_shifting <= 1;
// 			end
// 		end 
// 	end	
// /* -------------------------------------------------------------------------- */
// /*                             Parallel to Serial                             */
// /* -------------------------------------------------------------------------- */
// 	always @(posedge i_pll_clk or negedge i_rst_n) begin 
// 		if(~i_rst_n) begin
// 			shift_reg  <= 0;
// 			load_en <= 0;
// 			//prev_shift <= 0;
// 		end 
// 		else begin
// 			load_en <= 0;
// 			if (posedge_ser_enable) load_en <= 1;
// 			if (load_en || counter == 31) begin
// 				shift_reg  <= load_reg;
// 				//prev_shift <= 1;
// 			end
// 			else begin
// 				shift_reg <= shift_reg << 1;
// 			end
// 		end
// 	end

// 	assign TXDATA = (load_en || counter == 32 || ~i_enable_reg)? 0 : shift_reg[31];
// /* -------------------------------------------------------------------------- */
// /*                                   Counter                                  */
// /* -------------------------------------------------------------------------- */
// 	always @(posedge i_pll_clk or negedge i_rst_n) begin 
// 		if(~i_rst_n) begin
// 			counter <= 0;
// 		end else begin
// 			if (counter == 31 || load_en) begin
// 				counter <= 0;
// 			end
// 			else begin
// 				counter <= counter +1;
// 			end
// 		end
// 	end
// endmodule

`timescale 1ps/1ps 
module PLL (
	input 		en,
	input [1:0]	speed_sel,
	output reg 	clk,
	output real period
);

real local_period;

always @(*) begin
	case (speed_sel)
		2'b00: period = 250;   // 4G
		2'b01: period = 125;  // 8G
		2'b10: period = 83.33;  // 12G
		2'b11: period = 62.50;  // 16G
		default: period = 250;
	endcase
end

initial clk = 0;

always begin
	if (!en) begin
		clk = 0;
		@(posedge en); // Wait until PLL is enabled
	end
	else begin
		// Use current speed_sel to update the period
		case (speed_sel)
			2'b00: local_period = 250;
			2'b01: local_period = 125;
			2'b10: local_period = 83.33;
			2'b11: local_period = 62.50;
			default: local_period = 250;
		endcase

		#(local_period/2) clk = ~clk;
	end
end
endmodule





// module PLL (
// input en,
// input [1:0]speed_sel,
// output reg clk,
// output real period
// );
// always @(*) begin
// 	case (speed_sel)
// 		2'b00:period = 250;  //4g  
// 		2'b01:period = 1250; //8g
// 		2'b10:period = 8333; //12g
// 		2'b11:period = 6250; //16g
// 		default :period = 250;
// 	endcase
// end
// initial clk = 0;
// always #(period/2) clk = ~clk;

// endmodule : PLL


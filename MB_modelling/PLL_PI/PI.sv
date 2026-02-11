`timescale 1ps/1ps
module PI (
	input clk, // Clock
	input [3:0]step_sel,
	input real period,
	output reg o_clk
);
int number_of_steps=16;

real step_size, phase_delay;

always @(period, number_of_steps) begin
  
end

// Update shifted_clock when step_sel or parameters change
always @(step_sel, period, number_of_steps) begin
  disable shifted_clock_process;
  step_size = period / number_of_steps ; 
  $display(int'(step_sel),,step_sel,,step_size,,period);
  phase_delay = int'(step_sel) * step_size;
  fork: shifted_clock_process
    begin
      o_clk =0;
      #(phase_delay); 
      forever #(period/2.0)  o_clk = ~o_clk;
    end
  join_none
end
endmodule : PI

/**************************************************
* File name: bit_synchronizer.v
* Description: This module is a bit synchronizer.
* Date: 22/4/2025
* author : sa3dany
**************************************************/
`define INJECT_METSTABILITY
module bit_synchronizer #(parameter NSTAGES = 2) (
    input               i_clk,
    input               i_rst_n,
    input               i_data_in,
    output              o_q_before_last_flop,
    output              o_data_out
);
/********************************************************************************
* Internal wires and registers
********************************************************************************/
    reg [NSTAGES-1:0] data_stage;
    integer i;
    `ifdef INJECT_METSTABILITY
        reg meta_reg;
    `endif

/********************************************************************************
* synchronization
********************************************************************************/   
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            `ifdef INJECT_METSTABILITY
                meta_reg <= 0;
            `endif
            for (i = 0; i < NSTAGES; i = i +1) begin
                data_stage[i] <= 0;
            end
	    end else begin
            /* -------------------------------------------------------------------------- */
            /* ------------------------- injecting metsatabllity ------------------------ */
            /* -------------------------------------------------------------------------- */
            `ifdef INJECT_METSTABILITY
                meta_reg <= i_data_in;
	            if (meta_reg != i_data_in) begin            
                    data_stage[0] <=  {$urandom % 2};        
                end else begin
                    data_stage[0] <= i_data_in;
                end
            `else	    
	            data_stage[0] <= i_data_in;
            `endif
            /* -------------------------------------------------------------------------- */
            /* --------------------------- Normal synchronizer -------------------------- */
            /* -------------------------------------------------------------------------- */
            for (i = 1; i < NSTAGES; i = i + 1) begin
                data_stage[i] <= data_stage[i-1];
            end
        end
    end
     assign o_data_out = data_stage[NSTAGES-1];
     assign o_q_before_last_flop = data_stage[NSTAGES-2];
endmodule

`undef INJECT_METSTABILITY
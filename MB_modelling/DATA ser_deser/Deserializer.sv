module DESER (
    input                MB_clk,
    input                pll_clk,
    input                i_ckp,                     
    input                i_ckn,                  
    input                i_rst_n,                   // Active-low reset
    input                ser_valid,
    input                ser_data_in,               // Serial input data 
    output reg [31:0]    par_data_out,              // Parallel output data 
    output reg           de_ser_done                // Signal to indicate deserialization is done
);
/* -------------------------------------------------------------------------- */
/*                            internal wires & regs                           */
/* -------------------------------------------------------------------------- */
    reg [31:0] shift_reg;    // Shift register to store the incoming bits
    reg [31:0] save_data;
    reg save_data_valid;
    reg deassert_save_data_valid;
/* -------------------------------------------------------------------------- */
/*                             Serial to Parallel                             */
/* -------------------------------------------------------------------------- */
    always @(negedge i_ckp or negedge i_ckn or negedge i_rst_n) begin
        if (~i_rst_n) begin
            shift_reg <= 0;
        end 
        else begin
            shift_reg <= {shift_reg[30:0], ser_data_in}; 
        end
    end
/* -------------------------------------------------------------------------- */
/*                       saving data after deserializing                      */
/* -------------------------------------------------------------------------- */
    always @(posedge pll_clk or negedge i_rst_n) begin 
        if(~i_rst_n) begin
            save_data <= 0;
            save_data_valid <= 0;
        end else  begin
            if (ser_valid) begin
                save_data <= shift_reg;
                save_data_valid <= 1;
            end else if (deassert_save_data_valid) begin
                save_data_valid <= 0;
            end
        end
    end
/* -------------------------------------------------------------------------- */
/*                synchronizing data to mainband digital domain               */
/* -------------------------------------------------------------------------- */
    always @ (posedge MB_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            par_data_out <= 32'h00000000;
        end else begin
            de_ser_done <= 0;
            if (save_data_valid) begin
                par_data_out <= save_data;
                de_ser_done <= 1;
            end 
        end
    end

always @ (posedge de_ser_done) begin
    deassert_save_data_valid = 1;
    @(posedge pll_clk);
    deassert_save_data_valid = 0;
end

endmodule


// module DESER (
//     input                MB_clk,
//     input                pll_clk,
//     input                i_ckp,                     
//     input                i_ckn,                  
//     input                i_rst_n,                   // Active-low reset
//     input                ser_valid,
//     input                ser_data_in,               // Serial input data 
//     output reg [31:0]    par_data_out,              // Parallel output data 
//     output reg           de_ser_done                // Signal to indicate deserialization is done
// );
// /* -------------------------------------------------------------------------- */
// /*                            internal wires & regs                           */
// /* -------------------------------------------------------------------------- */
//     reg [31:0] shift_reg;    // Shift register to store the incoming bits
//     reg [31:0] save_data;
//     reg save_data_valid;
//     wire save_data_valid_sync_to_pllclk; 
//     wire save_data_valid_sync_to_mbclk;
// /* -------------------------------------------------------------------------- */
// /*                             Serial to Parallel                             */
// /* -------------------------------------------------------------------------- */
//     always @(negedge i_ckp or negedge i_ckn or negedge i_rst_n) begin
//         if (~i_rst_n) begin
//             shift_reg <= 0;
//         end 
//         else begin
//             shift_reg <= {shift_reg[30:0], ser_data_in}; 
//         end
//     end
// /* -------------------------------------------------------------------------- */
// /*                       saving data after deserializing                      */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge i_rst_n) begin 
//         if(~i_rst_n) begin
//             save_data <= 0;
//             save_data_valid <= 0;
//         end else  begin
//             save_data_valid <= 0;
//             if (ser_valid) begin
//                 save_data <= shift_reg;
//                 save_data_valid <= 1;
//             end else if (save_data_valid_sync_to_pllclk) begin
//                 save_data_valid <= 0;
//             end
//         end
//     end

//     pulse_synchronizer save_data_valid_sync_to_mbclk_inst (
//         .i_slow_clock   (MB_clk),
//         .i_slow_rst_n   (i_rst_n),
//         .i_fast_clock   (pll_clk),
//         .i_fast_rst_n   (i_rst_n),
//         .i_fast_pulse   (save_data_valid),
//         .o_slow_pulse   (save_data_valid_sync_to_mbclk)
//     );

//     pulse_synchronizer save_data_valid_sync_to_pllclk_inst (
//         .i_slow_clock   (pll_clk),
//         .i_slow_rst_n   (i_rst_n),
//         .i_fast_clock   (MB_clk),
//         .i_fast_rst_n   (i_rst_n),
//         .i_fast_pulse   (save_data_valid_sync_to_mbclk),
//         .o_slow_pulse   (save_data_valid_sync_to_pllclk)
//     );
// /* -------------------------------------------------------------------------- */
// /*                synchronizing data to mainband digital domain               */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge MB_clk or negedge i_rst_n) begin
//         if (!i_rst_n) begin
//             par_data_out <= 32'h00000000;
//         end else begin
//             de_ser_done <= 0;
//             if (save_data_valid_sync_to_mbclk) begin
//                 par_data_out <= save_data;
//                 de_ser_done <= 1;
//             end 
//         end
//     end

// endmodule

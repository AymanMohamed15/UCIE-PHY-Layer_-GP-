module valid_deserializer (
    input      MB_clk,
    input      pll_clk,
    input      ckp,              // Free-running clock
    input      ckn,              // Free-running clock
    input      rst_n,            // Active-low reset
    input      serial_in,        // serial data_in
    output reg [31:0] data_out,  // 32-bit parallel output
    output reg data_valid,        // High when data_out is valid
    output reg data_deser_done
);
/* -------------------------------------------------------------------------- */
/*                            internal wires & regs                           */
/* -------------------------------------------------------------------------- */
    reg [4:0] shift_counter;
    reg [31:0] shift_reg;
    reg [31:0] save_data;
    reg start_counter;
    reg ser_valid;
    reg save_data_valid;
    wire data_deser_done_int = (shift_counter == 31);
/* -------------------------------------------------------------------------- */
/*                               shift register                               */
/* -------------------------------------------------------------------------- */
    always @(posedge pll_clk or negedge rst_n) begin 
        if(~rst_n) begin
            shift_reg <= 0;
        end else  begin
            shift_reg <= {shift_reg[30:0], serial_in};
        end
    end

/* -------------------------------------------------------------------------- */
/*                                shift counter                               */
/* -------------------------------------------------------------------------- */
    always @ (posedge ckp or posedge ckn or negedge rst_n) begin
        if (~rst_n) begin
            shift_counter <= 0;
        end else begin
            // when to reset counter
            if (shift_counter == 31 || (~ser_valid && shift_counter == 0)) begin
                shift_counter <= 0;
            end else begin
                shift_counter <= shift_counter + 1;
            end
        end
    end
/* -------------------------------------------------------------------------- */
/*                    Modelling for positive edge detector                    */
/* -------------------------------------------------------------------------- */
    initial begin
        ser_valid = 0;
    end
    
    always @(posedge serial_in) begin
        ser_valid = 1;  
        @(posedge pll_clk);
        ser_valid = 0;
    end

    always @ (posedge ckp or negedge rst_n) begin
        if (~rst_n) begin
            data_deser_done <= 0;
        end else begin
            data_deser_done <= data_deser_done_int;
        end
    end
/* -------------------------------------------------------------------------- */
/*                       saving data after deserializing                      */
/* -------------------------------------------------------------------------- */
    always @(posedge ckp or negedge rst_n) begin 
        if(~rst_n) begin
            save_data <= 0;
            save_data_valid <= 0;
        end else  begin
            if (shift_counter == 0) begin
                save_data <= shift_reg;
                save_data_valid <= 1;
            end else if (data_valid) begin
                save_data_valid <= 0;
            end
        end
    end
/* -------------------------------------------------------------------------- */
/*         synchronizing valid 32'hf0f0f0f0 to mainband digital domain        */
/* -------------------------------------------------------------------------- */
    always @ (posedge MB_clk or negedge rst_n) begin
        if (!rst_n) begin
            data_out <= 32'h00000000;
        end else begin
            data_valid <= 0;
            if (data_deser_done) begin
                data_out <= save_data;
                data_valid <= 1;
            end 
        end
    end
endmodule


// module valid_deserializer (
//     input      MB_clk,
//     input      pll_clk,
//     input      ckp,              // Free-running clock
//     input      ckn,              // Free-running clock
//     input      rst_n,            // Active-low reset
//     input      serial_in,        // serial data_in
//     output reg [31:0] data_out,  // 32-bit parallel output
//     output reg data_valid,        // High when data_out is valid
//     output data_deser_done
// );
// /* -------------------------------------------------------------------------- */
// /*                            internal wires & regs                           */
// /* -------------------------------------------------------------------------- */
//     localparam MAX_COUNT = 31;
//     localparam MAX_COUNT_DATA_DESER = 30;
//     reg ser_valid;
//     reg deassert_save_data_valid;
//     reg [5:0] shift_counter;
//     reg [31:0] shift_reg;
//     reg [31:0] save_data;
//     reg start_counter;
//     reg save_data_valid;
//     assign data_deser_done = (shift_counter == MAX_COUNT_DATA_DESER);
// /* -------------------------------------------------------------------------- */
// /*                               shift register                               */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge rst_n) begin 
//         if(~rst_n) begin
//             shift_reg <= 0;
//         end else  begin
//             shift_reg <= {shift_reg[30:0], serial_in};
//         end
//     end

//     // always @(posedge ckp or negedge rst_n) begin 
//     //     if(~rst_n) begin
//     //         shift_reg <= 0;
//     //     end else  begin
//     //         shift_reg <= {shift_reg[30:0], serial_in};
//     //     end
//     // end

//     // always @(posedge ckn or negedge rst_n) begin 
//     //     if(~rst_n) begin
//     //         shift_reg <= 0;
//     //     end else  begin
//     //         shift_reg <= {shift_reg[30:0], serial_in};
//     //     end
//     // end
// /* -------------------------------------------------------------------------- */
// /*                                shift counter                               */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge pll_clk or negedge rst_n) begin
//         if (~rst_n) begin
//             shift_counter <= 0;
//             start_counter <= 0;
//         end else begin
//             // when to start counting or not
//             if ((ser_valid && shift_counter == 0)) begin
//                 start_counter <= 1;
//             end else if (shift_counter == MAX_COUNT) begin
//                 start_counter <= 0;
//             end
//             // when to reset counter
//             if ((ser_valid && shift_counter == 0) || shift_counter == MAX_COUNT) begin
//                 shift_counter <= 0;
//             end else if (start_counter) begin
//                 shift_counter <= shift_counter + 1;
//             end
//         end
//     end
// /* -------------------------------------------------------------------------- */
// /*                    Modelling for positive edge detector                    */
// /* -------------------------------------------------------------------------- */
//     always @(posedge serial_in) begin
//         ser_valid <= 1;  
//         @(posedge pll_clk);
//         ser_valid <= 0;
//     end
// /* -------------------------------------------------------------------------- */
// /*                       saving data after deserializing                      */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge rst_n) begin 
//         if(~rst_n) begin
//             save_data <= 0;
//             save_data_valid <= 0;
//         end else  begin
//             if (shift_counter == MAX_COUNT) begin
//                 save_data <= shift_reg;
//                 save_data_valid <= 1;
//             end else if (deassert_save_data_valid) begin
//                 save_data_valid <= 0;
//             end
//         end
//     end

//     always @ (posedge data_valid) begin
//         deassert_save_data_valid = 1;
//         @(posedge pll_clk);
//         deassert_save_data_valid = 0;
//     end
// /* -------------------------------------------------------------------------- */
// /*         synchronizing valid 32'hf0f0f0f0 to mainband digital domain        */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge MB_clk or negedge rst_n) begin
//         if (!rst_n) begin
//             data_out <= 32'h00000000;
//         end else begin
//             data_valid <= 0;
//             if (save_data_valid) begin
//                 data_out <= save_data;
//                 data_valid <= 1;
//             end
//         end
//     end
// endmodule

// module valid_deserializer (
//     input      MB_clk,
//     input      pll_clk,
//     input      ckp,              // Free-running clock
//     input      ckn,              // Free-running clock
//     input      rst_n,            // Active-low reset
//     input      serial_in,        // serial data_in
//     output reg [31:0] data_out,  // 32-bit parallel output
//     output reg data_valid,        // High when data_out is valid
//     output reg data_deser_done
// );
// /* -------------------------------------------------------------------------- */
// /*                            internal wires & regs                           */
// /* -------------------------------------------------------------------------- */
//     reg [4:0] shift_counter;
//     reg [31:0] shift_reg;
//     reg [31:0] save_data;
//     reg start_counter;
//     reg save_data_valid;
//     reg ser_valid;
//     // reg data_deser_done;
//     // assign data_deser_done = (shift_counter == 31);
// /* -------------------------------------------------------------------------- */
// /*                               shift register                               */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge rst_n) begin 
//         if(~rst_n) begin
//             shift_reg <= 0;
//         end else  begin
//             shift_reg <= {shift_reg[30:0], serial_in};
//         end
//     end

// /* -------------------------------------------------------------------------- */
// /*                                shift counter                               */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge pll_clk or negedge rst_n) begin
//         if (~rst_n) begin
//             shift_counter <= 0;
//             //start_counter <= 0;
//         end else begin
//             // when to reset counter
//             if (shift_counter == 31 || (~ser_valid && shift_counter == 0)) begin
//                 shift_counter <= 0;
//             end else begin
//                 shift_counter <= shift_counter + 1;
//             end
//         end
//     end
// /* -------------------------------------------------------------------------- */
// /*                    Modelling for positive edge detector                    */
// /* -------------------------------------------------------------------------- */
//     initial begin
//         ser_valid = 0;
//     end
    
//     always @(posedge serial_in) begin
//         ser_valid = 1;  
//         @(posedge pll_clk);
//         ser_valid = 0;
//     end
// /* -------------------------------------------------------------------------- */
// /*                       saving data after deserializing                      */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge rst_n) begin 
//         if(~rst_n) begin
//             save_data <= 0;
//             save_data_valid <= 0;
//             data_deser_done <= 0;
//         end else  begin
//             if (data_deser_done) begin
//                 save_data <= shift_reg;
//                 save_data_valid <= 1;
//             end else if (data_valid) begin
//                 save_data_valid <= 0;
//             end
//             if (shift_counter == 31) data_deser_done <= 1;
//             else data_deser_done <= 0;
//         end
//     end
// /* -------------------------------------------------------------------------- */
// /*         synchronizing valid 32'hf0f0f0f0 to mainband digital domain        */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge MB_clk or negedge rst_n) begin
//         if (!rst_n) begin
//             data_out <= 32'h00000000;
//         end else begin
//             data_valid <= 0;
//             if (save_data_valid) begin
//                 data_out <= save_data;
//                 data_valid <= 1;
//             end 
//         end
//     end
// endmodule


// module valid_deserializer (
//     input      MB_clk,
//     input      pll_clk,
//     input      ckp,              // Free-running clock
//     input      ckn,              // Free-running clock
//     input      rst_n,            // Active-low reset
//     input      serial_in,        // serial data_in
//     output reg [31:0] data_out,  // 32-bit parallel output
//     output reg data_valid,        // High when data_out is valid
//     output reg ser_valid,
//     output data_deser_done
// );
// /* -------------------------------------------------------------------------- */
// /*                            internal wires & regs                           */
// /* -------------------------------------------------------------------------- */
//     reg [5:0] shift_counter;
//     reg [31:0] shift_reg;
//     reg [31:0] save_data;
//     reg start_counter;
//     reg save_data_valid;
//     assign data_deser_done = (shift_counter == 32);
//     // wire data_deser_done_int = (shift_counter == 32)? 1 : (data_valid)? 0 : 0;
// /* -------------------------------------------------------------------------- */
// /*                               shift register                               */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge rst_n) begin 
//         if(~rst_n) begin
//             shift_reg <= 0;
//         end else  begin
//             shift_reg <= {shift_reg[30:0], serial_in};
//         end
//     end

// /* -------------------------------------------------------------------------- */
// /*                                shift counter                               */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge pll_clk or negedge rst_n) begin
//         if (~rst_n) begin
//             shift_counter <= 0;
//         end else begin
//             // when to reset counter
//             if ((~ser_valid && shift_counter == 0)) begin
//                 shift_counter <= 0;
//             end else if (shift_counter == 32) begin
//                 shift_counter <= 1;
//             end else begin
//                 shift_counter <= shift_counter + 1;
//             end
//         end
//     end
// /* -------------------------------------------------------------------------- */
// /*                    Modelling for positive edge detector                    */
// /* -------------------------------------------------------------------------- */
//     initial begin
//         ser_valid = 0;
//     end
    
//     always @(posedge serial_in) begin
//         ser_valid = 1;  
//         @(posedge pll_clk);
//         ser_valid = 0;
//     end
// /* -------------------------------------------------------------------------- */
// /*                       saving data after deserializing                      */
// /* -------------------------------------------------------------------------- */
//     always @(posedge pll_clk or negedge rst_n) begin 
//         if(~rst_n) begin
//             save_data <= 0;
//             save_data_valid <= 0;
//         end else  begin
//             if (shift_counter == 32) begin
//                 save_data <= shift_reg;
//                 save_data_valid <= 1;
//             end else if (data_valid && start_counter == 32) begin
//                 save_data_valid <= 0;
//             end
//         end
//     end
// /* -------------------------------------------------------------------------- */
// /*         synchronizing valid 32'hf0f0f0f0 to mainband digital domain        */
// /* -------------------------------------------------------------------------- */
//     always @ (posedge MB_clk or negedge rst_n) begin
//         if (!rst_n) begin
//             data_out <= 32'h00000000;
//         end else begin
//             data_valid <= 0;
//             if (save_data_valid) begin
//                 data_out <= save_data;
//                 data_valid <= 1;
//             end 
//         end
//     end
// endmodule

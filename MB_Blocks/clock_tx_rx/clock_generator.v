module clock_generator (
    input                           i_dig_clk,      // pll clock /32 --> local ckp/16
    input                           i_rst_n,        // should be synchronous to dig_clk
    input                           i_start_clk_training,
    input                           i_ltsm_in_reset,
    output                          o_clk_gate_en,
    output                          o_done
);
/********************************************************************************
* internal signals 
********************************************************************************/
    reg [1:0] shift_reg_posedge_divider;
    wire posedge_clk_div_3;
    reg [7:0] iteration_counter;
    reg [1:0] CS,NS;
    reg negedge_stage;

/********************************************************************************
* FSM States
********************************************************************************/
    localparam [1:0] IDLE         = 2'b00;
    localparam [1:0] NORMAL_STATE = 2'b01;
    localparam [1:0] TRAIN_STATE  = 2'b11;

/********************************************************************************
* State memory
********************************************************************************/
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            CS <= IDLE;
        end else begin
            CS <= NS;
        end
    end

/********************************************************************************
* Next state logic
********************************************************************************/
    always @ (*) begin
        case(CS)
            IDLE: begin
                NS = (i_start_clk_training)? TRAIN_STATE : IDLE;
            end
            NORMAL_STATE: begin
                NS = (i_ltsm_in_reset)? IDLE : NORMAL_STATE;
            end

            TRAIN_STATE: begin
                NS = (iteration_counter == 192)? NORMAL_STATE : TRAIN_STATE;
            end
            default: NS = IDLE;
        endcase
    end

/********************************************************************************
* posedge clock divider by 3
********************************************************************************/
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            shift_reg_posedge_divider <= 0;
        end else begin
            shift_reg_posedge_divider <= {shift_reg_posedge_divider[0],~(shift_reg_posedge_divider[0] | shift_reg_posedge_divider[1])};
        end
    end

    always @ (negedge i_dig_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            negedge_stage <= 0;
        end else begin
            negedge_stage <= posedge_clk_div_3;
        end
    end

    assign posedge_clk_div_3 = shift_reg_posedge_divider[1];

/********************************************************************************
* iteration counter for clock pattern 
********************************************************************************/
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            iteration_counter <= 0;
        end else if (CS == TRAIN_STATE) begin
            iteration_counter <= iteration_counter + 1;
        end else begin
            iteration_counter <= 0;
        end
    end

/********************************************************************************
* output gate enable for clock pattern generation 
********************************************************************************/
    assign o_clk_gate_en = (CS == IDLE)? 0 : (CS == TRAIN_STATE)? (negedge_stage | shift_reg_posedge_divider[0]) : 1;

// 3 cycles in 125MHz (i_dig_clk) = 2 patterns (16{{2'b10}},8{{1'b0}}) so we want 192 cycles in 125 MHz to give us 128 iteration of pattern
assign o_done = (iteration_counter == 192);

endmodule
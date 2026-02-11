module clock_detector (
    input               i_dig_clk,
    input               i_rst_n,        
    input               i_RCLK,          
    input               i_current_repairclk,
    input               i_clear_results,
    output  reg         o_result
);
/********************************************************************************
* Internal wires and registers
********************************************************************************/
    localparam COUNTER_WIDTH = 8;
    wire start_local_counting;
    reg [COUNTER_WIDTH-1:0] Rcounter;           // Receiving counter, counts with received pattern clock after being divided by 16 in analog front-end
    reg [COUNTER_WIDTH-1:0] Lcounter;           // Local counter, counts with the local digital clock 125 MHz
    wire[COUNTER_WIDTH-1:0] sync_gray_out;      // output from bit synchronizers gray encoded
    reg [COUNTER_WIDTH-1:0] sync_binary_out;    // output from bit synchronizers binary encoded
    reg [COUNTER_WIDTH-1:0] binary_2_gray;
    reg [COUNTER_WIDTH-1:0] saved_sync_binary_out;
    wire [COUNTER_WIDTH-1:0] o_q_before_last_flop;
    reg [3:0] iteration_counter;
    reg CS,NS;
    reg current_state_is_repairclk_reg;
    reg repairclk_start_reg;

/********************************************************************************
 * FSM 
********************************************************************************/
    /* ------------------------------ state memory ------------------------------ */
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            CS <= 0;
        end else begin
            CS <= NS;
        end
    end
    /* ---------------------------- next state logic ---------------------------- */
    always @(*) begin
        NS = CS;
        case (CS)
            0: begin
                if (start_local_counting && i_current_repairclk) NS = 1;
            end
            1: begin
                if (~i_current_repairclk) NS = 0;
            end
        endcase
    end

/********************************************************************************
 * receiving counter 
********************************************************************************/
    always @ (posedge i_RCLK or negedge i_rst_n) begin
        if (~i_rst_n) begin
            Rcounter <= 0;
        end else begin
            Rcounter <= Rcounter + 1;
        end
    end

/********************************************************************************
 * synchronizing receiving counter 
********************************************************************************/
    generate 
        genvar i;
        for (i = 0 ; i < COUNTER_WIDTH ; i = i + 1) begin : counter_gray_bit_sync
            bit_synchronizer #(.NSTAGES(3)) counter_gray_bit_sync (
                .i_clk                  (i_dig_clk),
                .i_rst_n                (i_rst_n),
                .i_data_in              (binary_2_gray[i]),
                .o_q_before_last_flop   (o_q_before_last_flop[i]),
                .o_data_out             (sync_gray_out[i])
            );
        end
    endgenerate
    /* ------------------------------ edge detector ----------------------------- */
    assign start_local_counting = ~sync_gray_out[0] & o_q_before_last_flop[0];

/********************************************************************************
 * local counter 
********************************************************************************/
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            Lcounter <= 0;
        end else if (Lcounter == 24) begin
            Lcounter <= 1; 
        end else if (NS == 1) begin
            Lcounter <= Lcounter + 1;
        end else if (CS == 0) begin
            Lcounter <= 0;
        end
    end

/********************************************************************************
* Converting Binary to Gray 
********************************************************************************/
    always @(*) begin
        binary_2_gray = (Rcounter >> 1) ^ Rcounter; 
    end

/********************************************************************************
* Converting Gray to Binary 
********************************************************************************/
    always @(*) begin
        sync_binary_out [7] = sync_gray_out [7];
        sync_binary_out [6] = sync_gray_out [6] ^ sync_binary_out [7];
        sync_binary_out [5] = sync_gray_out [5] ^ sync_binary_out [6];
        sync_binary_out [4] = sync_gray_out [4] ^ sync_binary_out [5];
        sync_binary_out [3] = sync_gray_out [3] ^ sync_binary_out [4];
        sync_binary_out [2] = sync_gray_out [2] ^ sync_binary_out [3];
        sync_binary_out [1] = sync_gray_out [1] ^ sync_binary_out [2];
        sync_binary_out [0] = sync_gray_out [0] ^ sync_binary_out [1];
    end

/********************************************************************************
* Iteration counter (counts 1 every 16 consec. successfull pattern detection ) 
********************************************************************************/
    wire repairclk_start = ~current_state_is_repairclk_reg & i_current_repairclk;
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~ i_rst_n) begin
            iteration_counter <= 0;
            saved_sync_binary_out    <= 0;
            // to know when the pattern is initially started
            current_state_is_repairclk_reg <= 0;
            repairclk_start_reg <= 0;
        end else begin
            // to know when the pattern is initially started
            current_state_is_repairclk_reg <= i_current_repairclk;
            if (repairclk_start) repairclk_start_reg <= 1;
            /* -------------------------------------------------------------------------- */
            if (Lcounter == 24) begin
                saved_sync_binary_out <= sync_binary_out;
                if (repairclk_start_reg) begin
                    // i wanted to know the start of pattern to compare at first iteration Lcounter with the current Rcounter
                    // since the other iterations i will compare Lcounter with (Rcounter - saved_sync_binary_out)
                    if (sync_binary_out == 16) iteration_counter <= iteration_counter + 1;
                    repairclk_start_reg <= 0;
                end else begin
                    if ((sync_binary_out - saved_sync_binary_out) == 16) iteration_counter <= iteration_counter + 1;
                end
            end
            /* -------------------------------------------------------------------------- */
            if (i_clear_results) iteration_counter <= 0;
        end
    end

/********************************************************************************
* logging/clearing results
********************************************************************************/
    always @ (posedge i_dig_clk or negedge i_rst_n) begin
        if (~ i_rst_n) begin
            o_result <= 1'b0;
        end else begin
            if (i_clear_results) begin
                o_result <= 1'b0;
            end else begin
                if (iteration_counter >= 1) o_result <= 1'b1;
            end
        end
    end

endmodule 
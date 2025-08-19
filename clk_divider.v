`timescale 1ns/1ps

module clk_divider #(parameter CLK_DIV = 50)    //CLK_DIV = i_clk frequency / (o_clk frequency * 2)
    (                                           //This module will genrate a 1MHz clock from a 100MHz clock
    input i_clk, i_reset,
    output o_clk
    );

    reg r_clk = 1'b0;
    reg [$clog2(CLK_DIV)-1 : 0] r_cnt = 0;

    assign o_clk = r_clk;

    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_clk <= 1'b0;
            r_cnt <= 0;
        end
        else if (r_cnt == CLK_DIV-1) begin
            r_clk <= ~r_clk;
            r_cnt <= 0;
        end
        else begin
            r_cnt <= r_cnt + 1;
        end
    end

endmodule
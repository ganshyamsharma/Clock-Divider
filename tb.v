`timescale 1ns/1ps

module clk_divider_tb();

    reg clk_tb = 0;
    reg reset_tb = 0;
    wire o_clk_tb;

    clk_divider #(50) uut0 (
        .i_clk(clk_tb),
        .i_reset(reset_tb),
        .o_clk(o_clk_tb)
    );

    always #5 clk_tb = ~clk_tb;

    initial begin
        $dumpfile("clk_divider_tb.vcd");
        $dumpvars(0, clk_divider_tb);
        reset_tb = 1;
        #10;
        reset_tb = 0;
        #2000;
        $finish;
    end

endmodule
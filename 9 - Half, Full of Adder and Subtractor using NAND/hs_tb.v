`timescale 1ns/1ps
`include "hs_nand.v"

module hs_tb;
    reg a, b;
    wire diff, bout;
    reg clk;

    hs_nand dut (a, b, diff, bout);

    always #5 clk = ~clk;

    initial begin
        $dumpfile ("hs_tb.vcd"); 
        $dumpvars(0, hs_tb);

        clk = 0; 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;          
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end

    always @(posedge clk) begin
        $display("A = %b, B = %b, Diff = %b, Bout = %b", a, b, diff, bout); 
    end
endmodule
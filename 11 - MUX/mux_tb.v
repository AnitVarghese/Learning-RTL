`timescale 1ns/1ps
`include "mux2_1.v"

module mux_tb;
    reg [1:0] i;
    reg sel;
    wire y;

    mux2_1 dut (i, sel, y);

    always begin
        i = $random;
        sel = $random;
        #10;
    end

    initial begin
        $dumpfile("mux_tb.vcd");        
        $dumpvars(0, mux_tb);   
        
        $monitor("Input: %b, Select: %b, Output: %b", i, sel, y);
        #100;
        $finish;
    end
endmodule
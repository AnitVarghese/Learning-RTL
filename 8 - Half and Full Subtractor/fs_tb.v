`timescale 1ps/1ps
`include "full_subtractor.v"

module fs_tb;
    reg a, b, bin;
    wire diff, bout;
    reg clk;

    full_subtractor dut (a, b, bin, diff, bout);   

    initial begin
        $dumpfile("fs_tb.vcd");     
        $dumpvars(0, fs_tb);    

        clk = 0;

        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 0; #10; 
        a = 1; b = 0; bin = 1; #10;         
        a = 1; b = 1; bin = 0; #10;
        a = 1; b = 1; bin = 1; #10;
        $finish;    
    end

    always @(posedge clk) begin
        $display("A=%b, B=%b, Bin=%b, Diff=%b, Borrow=%b", a, b, bin, diff, bout);
    end             
endmodule




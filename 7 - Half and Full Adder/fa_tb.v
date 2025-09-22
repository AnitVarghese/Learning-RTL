`timescale 1ns/1ps
`include "full_adder.v"

module fa_tb;

    reg a, b, cin;
    wire sum, carry;
    reg clk;

    full_adder dut (a, b, cin, sum, carry);

    initial begin
        $dumpfile("fa_tb.vcd");
        $dumpvars(0, fa_tb);

        clk = 0;
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;
        $finish;
    end

    always@ (posedge clk) begin
        $display ("A = %b, B = %b, Cin = %b, Sum = %b, Carry = %b", a, b, cin, sum, carry);
    end 

endmodule

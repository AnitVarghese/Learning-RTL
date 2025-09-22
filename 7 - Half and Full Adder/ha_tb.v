`timescale 1ns/1ps
`include "half_adder.v"

module ha_tb;

    reg a,b;
    wire sum, carry;
    reg clk;

    half_adder dut (a, b, sum, carry);

    initial begin
        $dumpfile("ha_tb.vcd");
        $dumpvars(0, ha_tb);

        clk = 0;
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end

    always@ (posedge clk) begin
        $display("A = %b, B = %b, Sum = %b, Carry = %b", a, b, sum, carry);
    end
endmodule

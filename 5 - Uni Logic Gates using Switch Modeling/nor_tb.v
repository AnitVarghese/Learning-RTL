`timescale 1ns/1ps
`include "nor_gate.v"

module nor_tb;
    reg vin1, vin2;
    wire vout;

    nor_gate dut( vin1, vin2, vout);
    initial $dumpfile("nor_tb.vcd");
    initial $dumpvars(0, nor_tb);

    initial vin1= 1'b0;
    initial vin2= 1'b0;
    initial repeat(15) #50 vin1 = ~vin1; 
    initial repeat(15) #100 vin2 = ~vin2; 
    initial #600 $finish;
endmodule

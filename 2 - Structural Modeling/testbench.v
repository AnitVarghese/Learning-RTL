`timescale 1ns/1ps
`include "logic_gates.v"    

module testbench;
    reg a,b;
    wire and_y, or_y, not_y, nand_y, nor_y, xor_y, xnor_y;

    logic_gates uut (a,b, and_y, or_y, not_y, nand_y, nor_y, xor_y, xnor_y);

    initial begin 

        $dumpfile("testbench.vcd");     
        $dumpvars(0, testbench);

        #1 a=0; b=0;
        #100 a=0; b=1;
        #100 a=1; b=0;
        #100 a=1; b=1;

        $display("We got it boss!");
        $finish;    

    end
endmodule       
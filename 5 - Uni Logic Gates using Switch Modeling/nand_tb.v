`timescale 1ns/1ps
`include "nand_gate.v"

module nand_tb;
    reg vin1, vin2;
    wire vout;;

    nand_gate dut (vin1, vin2, vout);

    
    initial $dumpfile("nand_tb.vcd");
    initial $dumpvars(0, nand_tb);

    initial vin1= 1'b0;
    initial vin2= 1'b0;
    initial repeat(10) #50 vin1 = ~vin1;
    initial repeat(10) #100 vin2 = ~vin2;
    initial #600 $finish;
    
endmodule

//repeat blocks run sequentially inside one initial block I tried to
// put both vin1 and vin2 toggles in the same initial block but 
//vin2 toggled only after vin1 finished instead of in parallel. so i had to write initial for each

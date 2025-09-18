`timescale 1ns / 1ps
`include "logic_gates.v"

module test_bench;

    reg a,b;
    wire and_y,or_y,not_y,nand_y,nor_y,xor_y,xnor_y;

    logic_gates uut (a, b, and_y, or_y, not_y, nand_y, nor_y, xor_y, xnor_y);           

    initial begin

        $dumpfile("test_bench.vcd");
        $dumpvars(0, test_bench);

        a = 0; b = 0; #10
        #10 a = 0; b = 1; 
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $display("Yo we got it!");
        $finish;        
    end
endmodule   

// was using iverilog & gtkwave. i entered the command without spell checks. and error thrown up was "Couldnt open the input file"
// the commands go like this 
// iverilog -o <testbench.vvp> <testbench.v>       -here vvp file is created 
// vvp <testbench.vvp>                             -here vcd is created as i wrote "$dumpfile and vars"
// gtkwave <testbench.vcd>


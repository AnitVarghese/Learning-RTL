`timescale 1ns/1ps
`include "not_gate.v"

module testbench;
    reg in;
    wire out;
    not_gate dut(in, out);
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        in = 0;
        forever #50 in = ~in;
        $display("Whasssupp");
        #500 $finish;
    end
endmodule


//tb aint diff igues. the forever will make the vcd file huge..like 250mb or sumth

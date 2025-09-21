`timescale 1ns/1ps
`include "even_parity_generator.v"

module epg_tb;
    reg [3:0] data_in;
    wire parity;
    reg clk;

    even_parity_generator dut (data_in, parity);
    always #5 clk = ~clk;   

    initial begin

        $dumpfile("epg_tb.vcd");
        $dumpvars(0, epg_tb);

        clk = 0;
        data_in = 4'b0000;
        #10;
        data_in = 4'b1011;
        #10;
        data_in = 4'b1100;
        #10;
        data_in = 4'b1111;
        #10;
        $finish;
    end
    always@(posedge clk) begin
        $display("Data = %b, Parity = %b", data_in, parity);
    end
endmodule

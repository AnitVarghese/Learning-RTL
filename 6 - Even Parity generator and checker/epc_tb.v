`timescale 1ns/1ps
`include "even_parity_checker.v"

module epc_tb;
    reg [3:0] data_in;
    reg parity;
    reg clk;
    wire error;

    even_parity_checker dut (data_in, parity, error);

    always #5 clk = ~clk;

    initial begin

        $dumpfile("epc_tb.vcd");
        $dumpvars(0, epc_tb);
        
        clk = 0;
        data_in = 4'b0000;
        parity = 0;
        #10;

        data_in = 4'b1011;
        parity = 1;
        #10;

        data_in = 4'b1100;
        parity = 0;
        #10;

        data_in = 4'b1111;
        parity = 0;
        #10;

        // now to check the erors 

        data_in = 4'b0000;
        parity = 1;
        #10;

        data_in = 4'b1011;
        parity = 0;
        #10;

        data_in = 4'b1100;
        parity = 1;
        #10;

        data_in = 4'b1111;
        parity = 1;
        #10; 

        $finish;
    end

        always @(posedge clk) begin
            $display("Data = %b, Parity = %b, Error = %b", data_in, parity, error);
        end
endmodule

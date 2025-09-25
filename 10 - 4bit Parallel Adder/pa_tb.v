`timescale 1ns/1ps
`include "parallel_adder.v"

module pa_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sumo;
    wire carry;

    parallel_adder dut (a, b, cin, sumo, carry);

    always begin
        a = $random;
        b = $random;
        cin = $random;
        #10;
    end

    initial begin
        $dumpfile("pa_tb.vcd"); 
        $dumpvars(0, pa_tb);    
        
        $monitor("A = %b, B = %b, Cin = %b, Sum = %b, Carry = %b", a, b, cin, sumo, carry);
        #100 $finish;
    end
endmodule   

        


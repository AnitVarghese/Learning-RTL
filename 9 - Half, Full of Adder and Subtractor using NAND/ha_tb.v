`timescale 1ns/1ps
`include "ha_nand.v"

module ha_tb;
    reg a,b;
    wire sum, cout;
    reg clk;

    ha_nand uut (a, b, sum, cout);


    always #5 clk = ~clk;  

    initial begin

        $dumpfile("ha_nand.vcd");   
        $dumpvars(0, ha_tb); 

        #10;   
        clk = 0; 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;      
        a = 1; b = 0; #10;  
        a = 1; b = 1; #10;  
        $finish;    
    end

    always @(posedge clk ) begin
        $display("A=%b, B=%b, Sum =%b, Cout=%b", a, b, sum, cout);          
    end

endmodule

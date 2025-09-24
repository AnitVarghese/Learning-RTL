`timescale 1ns/1ps
`include "fa_nand.v"

module fa_tb;
    reg a, b, cin;
    wire sum, cout;
    reg clk;

    fa_nand uut (a, b, cin, sum, cout);

    always #5 clk = ~clk;

    initial begin 
        $dumpfile("fa_nand.vcd");   
        $dumpvars(0, fa_tb); 

        #10;   
        clk = 0; 
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;      
        a = 0; b = 1; cin = 0; #10;  
        a = 0; b = 1; cin = 1; #10;  
        a = 1; b = 0; cin = 0; #10;  
        a = 1; b = 0; cin = 1; #10;  
        a = 1; b = 1; cin = 0; #10;  
        a = 1; b = 1; cin = 1; #10;  
        $finish;    
    end 
    always @(posedge clk) begin
        $display("A=%b, B=%b, Cin=%b, Sum =%b, Cout=%b", a, b, cin, sum, cout);          
    end 

endmodule

// this part is...just peace filled. 
// if only we could design ckts with tbs..wow 
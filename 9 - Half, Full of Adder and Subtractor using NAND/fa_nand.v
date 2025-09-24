`timescale 1ns/1ps

module fa_nand (
    input a,b,cin, 
    output sum, cout
    );  
    
    wire [8:0]w;

    nand n0(w[0], a, b);
    nand n1(w[1], a, w[0]);
    nand n2(w[2], b, w[0]);
    nand n3(w[3], w[1], w[2]); // until this just as haf adder bcz we got (a xor b) done.

    nand n4(w[4], w[3], cin); // from here we are trying to include cin as well
    nand n5(w[5], w[3], w[4]); 
    nand n6(w[6], w[4], cin);
    nand n7(sum, w[5], w[6]); 
    nand n8(cout, w[0], w[4]); // scratch your head.

endmodule

//wow its really hard. 

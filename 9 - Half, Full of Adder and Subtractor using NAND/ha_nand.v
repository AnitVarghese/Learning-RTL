`timescale 1ns/1ps

module ha_nand (
    input  a, b,
    output sum, cout
    );

    wire [2:0]w;
    nand n0(w[0], a, b);
    nand n4(cout, w[0], w[0]);         // for cout = a and b

    nand n1(w[1], a, w[0]);
    nand n2(w[2], b, w[0]);
    nand n3(sum, w[1], w[2]);    //for sum = a xor b

endmodule   

/* this whole using nand idea is just to show that it is possible to make any gate using nand   
but this just causes too much delay, power and stuff...  
they jus wanted to say NAND gate is universal....*/

// i would say this is useless bro! jus going with the flow
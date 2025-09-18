`timescale 1ns/1ps

module logic_gates (
    input a,b,
    output and_y, or_y, not_y, nand_y, nor_y, xor_y, xnor_y //cant use reg over here like i did in behavioural. reg just throwd me an error.
    );

    and andgate(and_y, a, b);
    or orgate(or_y, a, b);
    not notgate(not_y, a);
    nand nandgate(nand_y, a, b);
    nor norgate(nor_y, a, b);
    xor xorgate(xor_y, a, b);
    xnor xnorgate(xnor_y, a, b);
endmodule

// this kinda got on my nerve cz... i didnt know i couldnt use "reg" for the output....i guess i should have used "wire" or just leave it as it is


`timescale 1ns / 1ps

module logic_gates
    (
    input a,b,
    output reg and_y,
    output reg or_y,
    output reg not_y,
    output reg nand_y,
    output reg nor_y,
    output reg xor_y,
    output reg xnor_y
    );

    always @(*)
    begin
        and_y = a & b;
        or_y = a | b;
        not_y = ~a;
        nand_y = ~(a & b);
        nor_y = ~(a | b);
        xor_y = a ^ b;
        xnor_y = ~(a ^b);
    end

endmodule


// this has the always@(*) which is kinda used in combinational ckts and the * selects all of the RHS/inputs 
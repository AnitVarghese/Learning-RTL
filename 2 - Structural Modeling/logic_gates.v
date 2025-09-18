`timescale 1ns/1ps

module logic_gates (
    input a,b,
    output and_y, or_y, not_y, nand_y, nor_y, xor_y, xnor_y
    );

    assign and_y = a & b;
    assign or_y = a | b;
    assign not_y = ~ a;
    assign nand_y = ~ (a & b);
    assign nor_y = ~(a | b);
    assign xor_y = a ^ b;
    assign xnor_y = ~(a ^ b);
endmodule


// here "assign" instead of always block and its just literally assigning stuff


`timescale 1ns/1ps

module mux2_1 (
    input [1:0] i,
    input sel,
    output y
    );

    assign y = sel ? i[1] : i[0];

endmodule
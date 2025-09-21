`timescale 1ns/1ps

module even_parity_checker (
    input wire [3:0] data_in,
    input wire parity,
    output wire error
    );

    assign error = ^({parity, data_in});

endmodule
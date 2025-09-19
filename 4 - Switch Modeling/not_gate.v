`timescale 1ns/1ps

module not_gate (
    input in,
    output out
    );
    
    supply0 gnd;
    supply1 vdd;

    pmos (out, vdd, in);
    nmos (out, gnd, in);
endmodule   
// its switch level modeling which means it can have pmos,nmos, tg (transmission gate) and the complementary which is cmos
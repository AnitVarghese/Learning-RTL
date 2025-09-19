`timescale 1ns/1ps

module nor_gate(
    input vin1, vin2,
    output vout    
    );

    supply0 gnd;
    supply1 vdd;
    wire temp;
    pmos(temp, vdd, vin1);
    pmos(vout, temp, vin2);
    nmos(vout, gnd, vin1);
    nmos(vout, gnd, vin2);
endmodule   

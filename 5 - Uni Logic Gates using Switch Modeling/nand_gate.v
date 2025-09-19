`timescale 1ns/1ps
// this is a cmos nand which means, 2 pmos in parallel and 2 nmos in series 
module nand_gate (
    input vin1, vin2,
    output vout    
    );

    supply0 gnd;
    supply1 vdd;
    wire temp; // its used for a series connection bw 2 nmos
    pmos (vout, vdd, vin1);
    pmos (vout, vdd, vin2);
    nmos(temp, gnd, vin2);  
    nmos(vout, temp, vin1); // we got a series here
endmodule    
    


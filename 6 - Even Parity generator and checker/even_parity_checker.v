`timescale 1ns/1ps

module even_parity_checker (
    input wire [3:0] data_in,
    input wire parity,
    output wire error
    );

    assign error = ^({parity, data_in});


endmodule

/* got my notes down here 

FOCUS ON

parity is used to know if we missed any data in transmission. before the transmission, the transmitter will let us know,
if that a even parity data or odd parity data, so we that we can apply the even or odd logic.

now if its even, 
and the data_in is, 4'b001,
the number of 1s here is 1, and it is odd. so parity will be 1 

IN EVEN PARITY - if there is a odd number of 1s - parity is -> 1
if there is a even number of 1s (or) if there is no 1s - parity is -> 0

IN ODD PARITY - kinda same but...
if there is even number of 1s - parity is -> 1
if there is odd number of 1s - parity is -> 1

now i guess thats clear. but what does this "assign error = ^({parity, data_in})" 
{} - concatenates
() - is a common parenthesis to apply xor logic (^) how and why?
how - if ^ is used as a unary operator (i.e) only one operand needed, 
ex: ^(01010) 
0 ^ 1 = 1  (continuing with this output below)
1 ^ 0 = 1
1 ^ 1 = 0
0 ^ 0 = 0 therefore, 0 ....and it gives a 0

now assign = error -> will be 0 or 1. 
assign acts as a if and a else kinda...


FOR ODD PARITY CHECKER? jus one change 
"assign error = ~^({parity, data_in})" cz we odd = ~even.

FOCUS OFF hah
*/

`timescale 1ns / 1ps

module four_bit_adder(
input logic [3:0]a,
input logic [3:0]b,
input logic Cin,
output logic [3:0]s,
output logic Cout
    );

logic [4:0]sum;


always @ (*)
begin
    sum = a + b + Cin;
    Cout = sum[4];  
end    

assign s = sum [3:0];

endmodule

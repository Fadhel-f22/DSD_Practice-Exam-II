`timescale 1ns / 1ps


module detects_odd_number_of_ones(
input logic [7:0]register,
output logic odd
    );
xor x1(odd, register[0], register[1], register[2], register[3], register[4], register[5], register[6], register[7]); 
endmodule

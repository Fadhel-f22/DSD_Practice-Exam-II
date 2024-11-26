`timescale 1ns / 1ps

module eight_bit_adder(
input logic [7:0]A,
input logic [7:0]B,
input logic Cin,
output logic Cout,
output logic [7:0]sum
    );

logic Cout_temp;


four_bit_adder Adder1 (.a(A[3:0]), .b(B[3:0]), .Cin(Cin), .Cout(Cout_temp), .s(sum[3:0]));
four_bit_adder Adder2 (.a(A[7:4]), .b(B[7:4]), .Cin(Cout_temp), .Cout(Cout), .s(sum[7:4]));



endmodule
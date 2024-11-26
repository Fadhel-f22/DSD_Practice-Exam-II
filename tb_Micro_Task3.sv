`timescale 1ns / 1ps


module tb_eight_bit_adder;

logic [7:0]A;
logic [7:0]B;
logic Cin;
logic Cout;
logic [7:0]sum;


eight_bit_adder adder (.A(A), .B(B), .Cin(Cin), .Cout(Cout), .sum(sum));

initial begin
#5
    Cin = 1'b0;
    A = 8'b01010000;
    B = 8'b01010101;



#100
$finish;
end
endmodule

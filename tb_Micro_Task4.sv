`timescale 1ns / 1ps


module tb_four_bit_multiplier;

logic [3:0]A;
logic [3:0]B;
logic [7:0]result;

four_bit_multiplier m1 (.A(A), .B(B), .result(result));

initial begin
#5
    A = 8'b00000101;
    B = 8'b00000101;
#5    
    A = 8'b00001010;
    B = 8'b00000101;
#100
$finish;
end
endmodule

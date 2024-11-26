`timescale 1ns / 1ps



module four_bit_multiplier(
input logic [3:0]A,
input logic [3:0]B,
output logic [7:0]result
  );

logic a0, a1, a2, a3, a4, a5, a6, a7, b0, b1, b2, b3, c0, c1, c2, c3;

logic o00, o01, o02, o03, o04;

logic o10, o11, o12, o13, o14;

logic o20, o21, o22, o23, o24;

and aa1 (a0, A[0], B[0]);
and aa2 (a1, A[1], B[0]);
and aa3 (a2, A[2], B[0]);
and aa4 (a3, A[3], B[0]);
and aa5 (a4, A[0], B[1]);
and aa6 (a5, A[1], B[1]);
and aa7 (a6, A[2], B[1]);
and aa8 (a7, A[3], B[1]);

and aa9 (b0, A[0], B[2]);
and aa10 (b1, A[1], B[2]);
and aa11 (b2, A[2], B[2]);
and aa12 (b3, A[3], B[2]);


and aa13 (c0, A[0], B[3]);
and aa14 (c1, A[1], B[3]);
and aa15 (c2, A[2], B[3]);
and aa16 (c3, A[3], B[3]);

four_bit_adder f0 (.b({1'b0, a3, a2, a1}), .a({a7, a6, a5, a4}), .Cin(1'b0), .Cout(o04), .s({o03, o02, o01, o00}));

four_bit_adder f1 (.b({o04, o03, o02, o01}), .a({b3, b2, b1, b0}), .Cin(1'b0), .Cout(o14), .s({o13, o12, o11, o10}));

four_bit_adder f2 (.b({o14, o13, o12, o11}), .a({c3, c2, c1, c0}), .Cin(1'b0), .Cout(result[7]), .s(result[6:3]));

assign result [0] = a0;
assign result [1] = o00;
assign result [2] = o10;

endmodule

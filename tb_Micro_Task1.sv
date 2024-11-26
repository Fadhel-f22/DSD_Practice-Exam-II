`timescale 1ns / 1ps


module tb_overflow_detection;

logic [7:0]count;
logic clk;
logic reset_n;
logic overflow; 

overflow_detection overflow_ (.count(count), .clk(clk), .reset_n(reset_n), .overflow(overflow));

always #5 clk = ~clk;
initial begin
#5
    clk = 1'b0;
    reset_n = 1'b0;
#5
    reset_n = 1'b1;
#5
    reset_n = 1'b0;
#5
    reset_n = 1'b1;
#5
    count = 8'b00101010;
#5
    count = 8'b11111111;
#5
    count = 8'b00000000;
    
#100
$finish;
end
endmodule

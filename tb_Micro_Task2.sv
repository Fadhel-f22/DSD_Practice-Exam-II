`timescale 1ns / 1ps



module tb_detects_odd_number_of_ones;

logic [7:0]register;
logic odd;

detects_odd_number_of_ones D1 (.register(register), .odd(odd));

initial begin
#5
    register = 8'b00110011;    //even
#5
    register = 8'b00110111;   //odd
#5
    register = 8'b00010011;   //odd
#5
    register = 8'b11110011;   //even
#5
    register = 8'b01110011;   //odd
#5
    register = 8'b00110010;   //odd
#100
$finish;
end


endmodule

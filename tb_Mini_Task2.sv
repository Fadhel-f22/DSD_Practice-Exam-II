`timescale 1ns / 1ps


module tb_pattern_detection;

logic clk;
logic load;
logic reset_n;
logic [4:0] pattern;
logic serial_in;
logic pattern_match;
logic [4:0]Q;
logic [4:0]D;

pattern_detection d1 (.D(D), .Q(Q), .clk(clk), .load(load), .reset_n(reset_n), .pattern(pattern), .serial_in(serial_in), .pattern_match(pattern_match));

always #5 clk = ~clk;
initial begin
#5
    clk = 1'b0;
    reset_n= 1'b0;
    load = 1'b0;
    
#10    
    load = 1'b1;
    reset_n= 1'b1;
    pattern = 5'b10100;
    
#10
    load = 1'b0;
    serial_in =1'b0;
#10
    pattern = 5'b10100;
    serial_in =1'b0;
#10
    serial_in =1'b1;
#10
    serial_in =1'b0;
#10
    serial_in =1'b1;         
    


#200
$finish;
end
endmodule

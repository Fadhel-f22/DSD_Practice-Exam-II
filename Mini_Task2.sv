`timescale 1ns / 1ps


module pattern_detection(
input logic clk,
input logic load,
input logic reset_n,
input logic [4:0] pattern,
input logic serial_in,
output logic pattern_match
    );
    
logic [4:0]Q;
logic [4:0]D;

always @ (posedge clk , negedge reset_n)
begin
    if (!reset_n)
    begin
        D <= 5'b00000;
    end
    else if (load)
    begin
        D <= pattern;
    end
end      
always @ (posedge clk , negedge reset_n)
begin
    if (!reset_n)
        Q <= 5'b00000;
    else
    begin
        Q[4] <= serial_in; 
        Q[3] <= Q[4];
        Q[2] <= Q[3];
        Q[1] <= Q[2];
        Q[0] <= Q[1];
    end     
end    
always @ (D, Q)
begin
    if (D == Q)
        pattern_match = 1'b1;
    else
        pattern_match = 1'b0;   
end
endmodule

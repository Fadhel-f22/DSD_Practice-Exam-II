`timescale 1ns / 1ps



module overflow_detection(
input logic [7:0]count,
input logic clk,
input logic reset_n,
output logic overflow  
    );

logic D;
logic Q;

assign D = count[7]; 

always @ (posedge clk , negedge reset_n)
begin
    if (!reset_n)
        Q <= 0;
    else
        Q <= D;
end    

and (overflow, Q, ~D);
    
endmodule
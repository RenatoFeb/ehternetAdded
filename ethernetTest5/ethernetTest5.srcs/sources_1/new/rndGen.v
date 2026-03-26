`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 06:28:34 PM
// Design Name: 
// Module Name: rndGen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rndGen(

    input  wire        clk,
    input  wire        rst_n,
    input  wire        enable,
    output wire [15:0] out
);
 
    reg [15:0] lfsr_reg;
 
    wire feedback = lfsr_reg[15] ^ lfsr_reg[14] ^ lfsr_reg[12] ^ lfsr_reg[3];
 
    always @(posedge clk) begin
        if (!rst_n) begin
            lfsr_reg <= 16'hACE1;   
        end else if (enable) begin
            lfsr_reg <= {lfsr_reg[14:0], feedback};
        end
    end
 
    assign out = lfsr_reg;
 
endmodule

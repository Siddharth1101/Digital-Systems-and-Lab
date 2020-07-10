`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:13 04/01/2019 
// Design Name: 
// Module Name:    CLKDIV 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CLKDIV(
    input clkin,
    output reg clkout
    );

reg [24:0] count;

initial
begin
	count = 0;
	clkout = 0;
end

always@ (posedge clkin)
begin
	count = count + 1;
	if (count >= 2)
	begin
		count = 0;
		clkout = !clkout;
	end
end

endmodule

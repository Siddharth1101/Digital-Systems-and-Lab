`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:35 04/08/2019 
// Design Name: 
// Module Name:    COUNTER 
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
module COUNTER(
    input dir,
    input clkin,
    output reg x0,
    output reg x1,
    output reg x2,
    input reset
    );

wire clk;

CLKDIV div(.clkin(clkin), .clkout(clk));

initial begin
	x0 = 0; x1 = 0; x2 = 0;
end

always@(posedge clk or posedge reset)
begin
	if (!reset)
	begin
		if(dir) begin
			/*if (x2&x1&x0)
				x3=!x3;*/
			if(x1 & x0)
				x2 = !x2;
			if(x0)
				x1 = !x1;
			x0 = !x0;
		end
		else begin
			if(!x1 & !x0)
				x2 = !x2;
			if(!x0)
				x1 = !x1;
			x0 = !x0;
		end
	end
	if (reset)
	begin
		x0 = 0; x1 = 0; x2 = 0;
	end
end

endmodule


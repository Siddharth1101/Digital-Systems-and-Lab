`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:20 04/01/2019 
// Design Name: 
// Module Name:    DECODER 
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
/*
module DECODER(
    input [2:0] in,
    output reg [7:0] out
    );

//input [2:0] in;
//output [7:0] out;
//reg [7:0] out;

assign out[0] = !in[2] && !in[1] && !in[0];
assign out[1] = !in[2] && !in[1] &&  in[0];
assign out[2] = !in[2] &&  in[1] && !in[0];
assign out[3] = !in[2] &&  in[1] &&  in[0];
assign out[4] =  in[2] && !in[1] && !in[0];
assign out[5] =  in[2] && !in[1] &&  in[0];
assign out[6] =  in[2] &&  in[1] && !in[0];
assign out[7] =  in[2] &&  in[1] &&  in[0];

always@ (in)
begin
	case(in)
		0: out = 8'b00000001;
		1: out = 8'b00000010;
		2: out = 8'b00000100;
		3: out = 8'b00001000;
		4: out = 8'b00010000;
		5: out = 8'b00100000;
		6: out = 8'b01000000;
		7: out = 8'b10000000;
	endcase
end

endmodule
*/

module DECODER(
    input i0, i1, i2,
    output reg o0, o1, o2, o3, o4, o5, o6, o7
    );

always@ (i0, i1, i2)
begin
	/*case()
		0: begin o7=0; o6=0; o5=0; o4=0; o3=0; o2=0; o1=0; o0=1; end
		1: begin o7=0; o6=0; o5=0; o4=0; o3=0; o2=0; o1=1; o0=0; end
		2: begin o7=0; o6=0; o5=0; o4=0; o3=0; o2=1; o1=0; o0=0; end
		3: begin o7=0; o6=0; o5=0; o4=0; o3=1; o2=0; o1=0; o0=0; end
		4: begin o7=0; o6=0; o5=0; o4=1; o3=0; o2=0; o1=0; o0=0; end
		5: begin o7=0; o6=0; o5=1; o4=0; o3=0; o2=0; o1=0; o0=0; end
		6: begin o7=0; o6=1; o5=0; o4=0; o3=0; o2=0; o1=0; o0=0; end
		7: begin o7=1; o6=0; o5=0; o4=0; o3=0; o2=0; o1=0; o0=0; end
	endcase*/
	
	case(i2)
		0: case(i1)
			0: case(i0)
				0: begin o7=0; o6=0; o5=0; o4=0; o3=0; o2=0; o1=0; o0=1; end
				1: begin o7=0; o6=0; o5=0; o4=0; o3=0; o2=0; o1=1; o0=0; end
			endcase
			1: case(i0)
				0: begin o7=0; o6=0; o5=0; o4=0; o3=0; o2=1; o1=0; o0=0; end
				1: begin o7=0; o6=0; o5=0; o4=0; o3=1; o2=0; o1=0; o0=0; end
			endcase
		endcase
		1: case(i1)
			0: case(i0)
				0: begin o7=0; o6=0; o5=0; o4=1; o3=0; o2=0; o1=0; o0=0; end
				1: begin o7=0; o6=0; o5=1; o4=0; o3=0; o2=0; o1=0; o0=0; end
			endcase
			1: case(i0)
				0: begin o7=0; o6=1; o5=0; o4=0; o3=0; o2=0; o1=0; o0=0; end
				1: begin o7=1; o6=0; o5=0; o4=0; o3=0; o2=0; o1=0; o0=0; end
			endcase
		endcase
	endcase
	
end

endmodule

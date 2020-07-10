`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:37 04/01/2019
// Design Name:   DECODER
// Module Name:   C:/Users/Newielab2/Desktop/last/Decoder/TB.v
// Project Name:  Decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DECODER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
/*
module TB;

	// Inputs
	reg [2:0] in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	DECODER uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
      $monitor("time = %t | in = %3b | out =%8b ", $time, in, out);
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 1; #100
		in = 2; #100
		in = 3; #100
		in = 4; #100
		in = 5; #100
		in = 6; #100
		in = 7; #100
		in = 0; #100
		
		$finish;
	end
      
endmodule
*/

module TB;

	// Inputs
	reg i0, i1, i2;

	// Outputs
	wire o0, o1, o2, o3, o4, o5, o6, o7;

	// Instantiate the Unit Under Test (UUT)
	DECODER uut (
		i0, i1, i2,
		o0, o1, o2, o3, o4, o5, o6, o7
	);

	initial begin
		// Initialize Inputs
		i0 = 0; i1 = 0; i2 = 0;
      $monitor("time =%t %b %b %b \n                         %b %b %b %b %b %b %b %b", $time, i0, i1, i2, o0, o1, o2, o3, o4, o5, o6, o7);
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		i0 = 1; #100
		i1 = 1; #100
		i0 = 0; #100
		i2 = 1; #100
		i0 = 1; #100
		i1 = 0; #100
		i0 = 0; #100
		
		$finish;
	end
      
endmodule

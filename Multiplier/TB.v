`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:31:23 04/01/2019
// Design Name:   MULT
// Module Name:   C:/Users/Newielab2/Desktop/last/Multiplier/TB.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULT
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
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	MULT uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		
		$monitor("time=%t | a=%2b | b = %2b | out = %4b", $time, a, b, out);
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 0; b = 1; #100
		a = 0; b = 2; #100
		a = 0; b = 3; #100
		a = 0; b = 0; #100
		
		a = 1; b = 1; #100
		a = 1; b = 2; #100
		a = 1; b = 3; #100
		a = 1; b = 0; #100
		
		a = 2; b = 1; #100
		a = 2; b = 2; #100
		a = 2; b = 3; #100
		a = 2; b = 0; #100
		
		a = 3; b = 1; #100
		a = 3; b = 2; #100
		a = 3; b = 3; #100
		a = 3; b = 0; #100
		
		$finish;
	end
      
endmodule
*/

module TB;

	// Inputs
	reg a0, a1;
	reg b0, b1;

	// Outputs
	wire o0, o1, o2, o3;

	// Instantiate the Unit Under Test (UUT)
	MULT uut (
		a0, a1,
		b0, b1,
		o0, o1, o2, o3
	);

	initial begin
		// Initialize Inputs
		a0 = 0; a1 = 0;
		b0 = 0; b1 = 0;
		
		$monitor("%t %b%b %b%b \n                      %b %b %b %b", $time, a0, a1, b0, b1, o0, o1, o2, o3);
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		b0 = 1; #50
		b1 = 1;#50
		b0 = 0; #50
		
		a0 = 1; #50
		b1 = 0; #50
		b0 = 1; #50
		b1 = 1; #50
		
		a1 = 1; #50
		b0 = 0; #50
		b1 = 0; #50
		b0 = 1; #50
		
		a0 = 0; #50
		b1 = 1; #50
		b0 = 0; #50
		b1 = 0; #50
		
		$finish;
	end
      
endmodule

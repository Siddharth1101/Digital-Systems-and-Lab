`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:21 04/01/2019
// Design Name:   ORG
// Module Name:   C:/Users/Newielab2/Desktop/last/OrGate/TB.v
// Project Name:  OrGate
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ORG
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	ORG uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		$monitor("time=%t | a=%b | b=%b | out=%b", $time, a, b, out);

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 1; b = 0;
		#100 a = 0; b = 1;
		#100 a = 1; b = 1;
		#100 a = 0; b = 0;
		#100
		
		$finish;
	end
      
endmodule


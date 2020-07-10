`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:31 04/01/2019 
// Design Name: 
// Module Name:    MULT 
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
module MULT(
    input [1:0] a,
    input [1:0] b,
    output [3:0] out
    );

wire s1, s2, s3;

and(out[0], a[0], b[0]);
and(s1, a[0], b[1]);
and(s2, a[1], b[0]);
and(s3, a[1], b[1]);

and(out[3], out[0], s3);

xor(out[1], s1, s2);
xor(out[2], s3, out[3]);

endmodule
*/

module MULT(
    input a0, a1,
    input b0, b1,
    output o0, o1, o2, o3
    );

wire s1, s2, s3;

and(o0, a0, b0);
and(s1, a0, b1);
and(s2, a1, b0);
and(s3, a1, b1);

and(o3, o0, s3);

xor(o1, s1, s2);
xor(o2, s3, o3);

endmodule
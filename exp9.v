module mach(A,B,x,clk);

input x;
input clk;
output A; 
output B;

reg A; reg B;
wire nx;
reg temp;
not (nx,x);

initial 
begin

A=0;
B=0;

end

always @(posedge clk)

begin
temp= (x&&B) || (nx&&A);
B= (x&&(!A)) || (nx&&B);
A = temp;

end
endmodule 


module test_exp9;

reg x;
reg clk;
wire A; wire B;

mach DUT(A,B,x,clk);

initial
begin


$timeformat (0,1,"s",5);
$monitor("At t=%t,x=%b, A=%b,B=%b",$time,x, A,B);

#00 x=0;
#00 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;


#10 x=1;


#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#05 clk=1; #05 clk=0;
#10;//finish;

end
endmodule

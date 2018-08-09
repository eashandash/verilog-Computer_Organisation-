//`include "wallace.v"
module wallace32tb();
reg [31:0]a,b;
reg  clk;
wire [63:0]out;
wallace32 f1(out,a,b,clk);


/*initial
begin
$monitor("time=",$time," \t out=%d\t",out);
end*/


initial
begin
clk=0;
a=32'd41;
b=32'd21;
#10
a=32'd11;
b=32'd11;
#10
a=32'd13;
b=32'd71;
#10
a=32'd41;
b=32'd21;
#10
a=32'd81;
b=32'd91;
#10
a=32'd18;
b=32'd111;
#10
a=32'd400;
b=32'd500;
#10
a=32'd40;
b=32'd50;
#10
a=32'd21;
b=32'd30;
#10
a=32'd20;
b=32'd50;
#10
a=32'd21;
b=32'd20;
#10
a=32'd44;
b=32'd51;
#10
a=32'd21;
b=32'd50;
#10
a=32'd1881;
b=32'd1911;
#10
a=32'd153;
b=32'd761;
#10
a=32'd413;
b=32'd21;
#10
a=32'd818;
b=32'd915;
#10
a=32'd181;
b=32'd111;

end

 always begin
 #5 clk = ~clk; // Toggle clock every 5 ticks
 end
endmodule

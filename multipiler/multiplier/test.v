module test(a,b,out);

input [3:0]a,b;
output [6:0]out;

wire[3:0]c;
wire [6:0]p0;

assign c=b[0];

//assign p0[3:0]=a&c;
assign p0=b[0];
assign out=p0;

endmodule


module tb();
reg [3:0]x,y;
wire [6:0]s;

test t(x,y,s);

initial 
begin
	x= 4'b1001;
	y= 4'b0011;
end

initial begin
$monitor("x=%b,y=%b,s=%b",x,y,s);
end	

endmodule // module	
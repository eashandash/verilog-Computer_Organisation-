module rca4_tb();
reg [3:0]a,b;
reg c;

wire [3:0]s;
wire cout;
rca4 f1(a,b,c,s,cout);

initial
begin
a=4'b1111;
b=4'b1111;
c=1;
end

initial
begin
$monitor($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
end

endmodule
module rca16_tb();
reg [15:0]a,b;
reg c;

wire [15:0]s;
wire cout;
rca16 f1(a,b,c,s,cout);

initial
begin
a=16'b1111_1111_1111_1110;
b=16'b1111_1111_1111_1111;
c=1;
end

initial
begin
$monitor($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
end

endmodule
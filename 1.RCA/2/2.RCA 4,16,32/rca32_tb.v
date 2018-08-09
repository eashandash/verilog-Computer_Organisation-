module rca32_tb();
reg [31:0]a,b;
reg c;

wire [31:0]s;
wire cout;
rca32 f1(a,b,c,s,cout);

initial
begin
a=32'b1111_1111_1111_1110;
b=32'b1111_1111_1111_1111;
c=1;
end

initial
begin
$monitor($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
end

endmodule
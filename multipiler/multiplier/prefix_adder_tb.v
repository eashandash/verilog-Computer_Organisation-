module prefix_adder_tb();
reg [31:0]a,b;
reg cin;
wire [31:0]s;
wire cout;

prefix_adder a0(a,b,cin,cout,s);

initial
begin
a=32'd200000000;
b=32'd200000000;
cin=0;
end

initial
begin
$monitor($time,":%d %d %d %d %d",a,b,cin,s,cout);
end

endmodule

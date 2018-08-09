module prefixtb();
reg [31:0]x,y;
reg c;
wire [31:0]s;
wire cout;

prefix32 p(s,cout,x,y,c);

initial
begin
x=32'd1257;
y=32'd1253;
c=0;
end

initial
begin
$monitor($time,"\t%d %d %d %d %d ",x,y,c,cout,s);
end
endmodule

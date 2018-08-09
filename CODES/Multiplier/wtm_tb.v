module wtmtb();
reg [31:0]x,y;
reg clk;
wire [63:0]s;

wtm32 w1(x,y,s,clk);

initial
begin

x=32'd11;
y=32'd11;


#2
x=32'd111;
y=32'd111;


#2
x=32'd1111;
y=32'd1111;


#2
x=32'd11111;
y=32'd11111;


#2
x=32'd111111;
y=32'd111111;


#2
x=32'd1111111;
y=32'd1111111;


end

initial
begin 
clk=0;
end
always
begin
#1 clk=~clk;
end
always 
begin
#100 $finish;
end 
initial
begin
$monitor($time,"\tA=%d  \tB=%d  \tProduct=%d",x,y,s);
end
endmodule

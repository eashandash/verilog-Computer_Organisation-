module pretb();
reg [31:0]x,y;
reg c,clk;
wire [31:0]s;
wire cout;

prefix16 p(s,cout,x,y,c,clk);



initial
begin

x=32'd15;
y=32'd35;
c=1;

#2
x=32'd24;
y=32'd43;
c=1;

#2
x=32'd53;
y=32'd70;
c=1;

#2
x=32'd51;
y=32'd9;
c=0;

#2
x=32'd72;
y=32'd91;
c=0;

#2
x=32'd18;
y=32'd37;
c=1;

#2
x=32'd18;
y=32'd37;
c=1;


#2
x=32'd18;
y=32'd37;
c=1;
#2
x=32'd18;
y=32'd37;
c=1;
#2
x=32'd18;
y=32'd37;
c=1;    
#2;
#2;
#2;
#2;
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
#30 $finish;
end 
initial
begin
$monitor($time,"\t%d    %d    %d    %d    %d   %d",clk,x,y,c,cout,s);
end
endmodule

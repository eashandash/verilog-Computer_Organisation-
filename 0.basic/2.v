module adder_tb();
reg a,b,c;
wire s,cout;
fuladder f1(s,cout,a,b,c);
initial
begin
a=1; b=1; c=1;
end

initial
begin
$monitor($time,"%b %b %b %b %b ",a,b,c,s,cout);
end
endmodule
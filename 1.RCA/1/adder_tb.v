module adder_tb();
reg a,b,c;
wire s,cout;
fulladder f1(s,cout,a,b,c);

initial
begin
a=1; b=1; c=1;
#10 a=1; b=1; c=0;
#10 a=1; b=1; c=1;
#10 a=1; b=0; c=0;
#10 a=1; b=0; c=1;
#10 a=0; b=1; c=0;
end

initial
begin
#10 $display($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
#10 $display($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
//$monitor($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
end

endmodule
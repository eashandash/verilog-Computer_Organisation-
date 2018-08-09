module cla_tb();


reg [7:0] a,b;
reg cin;
wire cout;
wire [7:0] s;


cla dash(a,b,cin,s,cout);

initial
begin
cin=0;
a=8'b1111_1111;
b=8'b1111_1111;
end



initial
begin
//#10 $display($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
//#10 $display($time,"  %b, %b, %b, %b, %b",a,b,c,s,cout);
$monitor($time,"  %b, %b, %b, %b, %b",a,b,cin,s,cout);
end

endmodule
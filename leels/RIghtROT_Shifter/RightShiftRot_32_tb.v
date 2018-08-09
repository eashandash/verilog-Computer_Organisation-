module RightShiftRot_32_tb();
reg rotate,clk;
reg [31:0]in;
output [31:0]out;
reg [4:0]select;

RightShiftRot_32 RSR1(in,rotate,select,out,clk);
initial
begin
clk=0;
in=32'b11111111111111111111111111111111;
select=5'd6;
rotate=0;

#2
in=32'b00000000000000000000000000000001;
select=5'b11111;
rotate=1;

#2
in=32'b000000000000000000000000000111;
select=5'b11001;
rotate=0;

#2
in=32'b000000000000000000000000000111;
select=5'b11001;
rotate=1;

#2
in=32'b000000000000000000000000000111;
select=5'b11001;
rotate=0;

end


always #1
begin
clk=~clk;
$monitor($time,"  input-%b  select- %d  rotate - %b  clk - %b output- %b",in,select,rotate,clk,out);
end
always #15 $finish;

endmodule

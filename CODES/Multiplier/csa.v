module csa(x,y,z,s1,s2,clk);
input [63:0]x,y,z;
input clk;
wire [63:0]sx1,sx2;
output [63:0]s1,s2;
assign sx1= x ^ y ^ z;
assign sx2[0]=0;
assign sx2[63:1]= (x & y) | (y & z) | (x & z);
dff_64 ff1(s1,sx1,clk);
dff_64 ff2(s2,sx2,clk);
endmodule

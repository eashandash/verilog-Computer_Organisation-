module Dflipflop(D,clk,Q);                  
input clk;
input [31:0]D;
output [31:0]Q;
reg [31:0]Q;
always @(posedge clk)
  Q=D;
endmodule


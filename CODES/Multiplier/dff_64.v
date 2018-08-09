 module dff_64(q,d,clk);
 
 output [63:0]q;
 input [63:0]d;
 input clk;
 reg q;
 
 	always @ (posedge clk)
	 begin
 	q <= d;
	 end
 
 endmodule

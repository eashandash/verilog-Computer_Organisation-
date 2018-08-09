 module dff_32(q,d,clk);
 
 output [31:0]q;
 input [31:0]d;
 input clk;
 reg q;
 
 	always @ (posedge clk)
	 begin
 	q <= d;
	 end
 
 endmodule

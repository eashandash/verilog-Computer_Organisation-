 module dff(q,d,clk);
 
 output q;
 input d, clk;
 reg q;
 
 	always @ (posedge clk)
	 begin
 	q <= d;
	 end
 
 endmodule

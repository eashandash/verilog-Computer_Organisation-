`include "controlunit.v"

module tprocessor;

   reg 	 clk;

   control p(clk);

   initial
     clk = 1'b1;
     
 

   always begin
     #1 clk = ~clk;
    
     
     end
     
   initial
     #95 $finish;
     
   
endmodule

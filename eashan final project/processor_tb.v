`include "processor.v"

module processor_tb;

      reg clock;
	wire [31:0]out;
   processor p(clock,out);

   

   initial
     clock = 1'b1;    

   always begin
     #1 clock = ~clock;
    
     
     end
     
   initial
     #350 $finish;
   initial



  begin
    $monitor($time,"\n->%b\n",out);
  end  
   
endmodule 

module registers(rs1, rs2, ws, wd, rf, wf, rd1, rd2);

   input [4:0] rs1, rs2, ws;
   input rf, wf;
   input [31:0] wd;

   output [31:0] rd1, rd2;
       reg [31:0] 	rd1, rd2;
   
       reg [31:0]register[31:0];
   
   initial
     begin
	register[0]=32'b00111111100000000000000000000000;
	register[1]=32'b01000001000100000000000000000000;
	register[2]=32'b01000010001000100000000000000000;
	register[3]=32'b01000010111100110000000000000000;
	register[4]=32'b01000011100010001011000000000000;
	register[5]=32'b01000011111101100000100110011010;
	register[6]=32'b01000100001110001000011100110011;
	register[7]=32'b01000100011011010100000000011101;
	register[8]=32'b01000100100001010111010000010000;	
	register[9]=32'b01000100100001010111010000010000;	
	register[10]=32'b01000100011100000011011101010001;
	register[11]=32'b01000100010001001000101001011001;
	register[12]=32'b01000100000100110110011111000011;
	register[13]=32'b01000011110011000001100110000100;
	register[14]=32'b01000011100000110011010011111010;
	register[15]=32'b01000011000111010111001011000101;

     end 









always @ (*)
begin
	
	if(wf == 1'b1)
	  begin
	         register[ws] = wd;
	    // $display($time, " Writing into the     register R%b=%b", ws,     register[ws]);
end

	if(rf == 1'b1)
begin
	     rd1 =     register[rs1];
	     rd2 =     register[rs2];
	   //  #1 $display($time, " Reading from the     regs R%d=%d, R%d=%d",rs1,rd1,rs2,rd2);
	     
end

end // always @ (*)

endmodule 


 

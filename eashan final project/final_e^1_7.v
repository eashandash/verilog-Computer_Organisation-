      	 module ALU_tb();

reg [31:0]a2,a3,a4,a5,a6;
reg [31:0]b2,b3,b4,b5,b6,term1,term2;
reg [63:0]term3,term4,term5,term6,term7;
//reg [4:0]opcode;
wire [63:0]OUT,L11,L12,L13,L21,L22;


//exp^1.7
//taylor series expansion  for first 6 terms\


//level 1
ALU l11(term1,term2,0101,L11);
ALU l12(term3[31:0],term4[31:0],0101,L12);
ALU l13(term5[31:0],term6[31:0],0101,L13);


//level 2
ALU l21(L11[31:0],L12[31:0],0101,L21);	



//level 3
ALU l31(L21[31:0],L13[31:0],0101,OUT);





initial
begin
	term1=32'b00111111100000000000000000000000; 	//1
	term2=32'b00111111110110011001100110011010;		//1.7
	term3=32'b00111111101110001111010111000011;		//1.445
	term4=32'b00111111010100010111111001001011;		//.81833333
	term5=32'b00111110101100100010110110011010;		//.348004167
	term6=32'b00111101111100100101001010000000;		//.118321417
end	

initial	
   begin
    $monitor("exp(1.7)=%b\n",OUT[31:0]);
   end 	

endmodule // ALU_tb


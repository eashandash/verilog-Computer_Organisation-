      	 module ALU_tb();

reg [31:0]a2,a3,a4,a5,a6;
reg [31:0]b2,b3,b4,b5,b6,term1,term2;
reg [63:0]term3,term4,term5,term6,term7;
//reg [4:0]opcode;
wire [63:0]OUT,L11,L12,L13,L21,L22;


//exp^3
//taylor series till first 6 terms\


//level 1
ALU l11(term1,term2,10001,L11);
ALU l12(term3[31:0],term4[31:0],0101,L12);
ALU l13(term5[31:0],term6[31:0],0101,L13);

//level 2
ALU l21(L11[31:0],L12[31:0],10001,L21);
ALU l22(term7[31:0],L13[31:0],10001,L22);	

//level 3
ALU l31(L21[31:0],L22[31:0],10001,OUT);

initial
begin
	term1=32'b00111111100000000000000000000000; 	//1
	term2=32'b01000001100010000000000000000000;		//17
	term3=32'b01000011000100001000000000000000;		//144.5
	term4=32'b01000100010011001001010101010101;		//818.33333
	term5=32'b01000101010110011000000010101011;		//3480.04167
	term6=32'b01000110001110001110000010010001;		//11832.1417
	term7=32'b01000111000000101111010001101001;		//33524.41
end	

initial	
begin
$monitor("exp(17)=%b\n",OUT[31:0]);
end 	

endmodule // ALU_tb


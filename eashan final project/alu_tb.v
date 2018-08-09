module ALU_tb();

reg [31:0]A,B;
reg [4:0]opcode;
reg clk;
wire [63:0]OUT;

ALU a(A,B,opcode,OUT);

initial
begin
A=32'b00001011111100111010000011000011;
B=32'b01101011100011100101111100011100;
opcode = 5'd7;
clk = 1;	

end	

initial	
begin
$monitor("%b\n%b\n%b",A,B,OUT);
end 	

endmodule                            


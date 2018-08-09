module Alu(opcode,reg1,reg2,out,aadd);

input [4:0] opcode ;
input [63:0] reg1,reg2,aadd ;
output [63:0] out ;
reg [63:0] out ;

parameter ADD   = 5'b00000;
parameter ADC   = 5'b00001;
parameter SUB   = 5'b00010;
parameter SBB   = 5'b00011;
parameter MUL   = 5'b00100;
parameter FADD  = 5'b00101;
parameter FSUB  = 5'b00110;
parameter FMUL  = 5'b00111;
parameter AND   = 5'b01000;
parameter OR    = 5'b01001;
parameter XOR   = 5'b01010;
parameter NAND  = 5'b01011;
parameter NOR   = 5'b01100;
parameter XNOR  = 5'b01101;
parameter NOT   = 5'b01110;
parameter NEG   = 5'b01111;
parameter LOAD  = 5'b10000;
parameter STORE = 5'b11000;

reg [4:0] madd ;
reg mread ;
reg [7:0]min;
wire [7:0] mout;
reg     [63:0]  MEMORY  [0:128];
initial begin 

MEMORY[1]=63'd10;
MEMORY[2]=63'd200;
MEMORY[3]=63'd3000;

end

always @(*) 
begin

                    case (opcode )
                       
                        
                        ADD:begin
                                        
                                   out = reg1+reg2 ;
                                
                        end	
                        
                        SUB:begin       
                        
                            out=reg1-reg2;
                        end
                        
                        ADC:begin
                        
                              out=reg1+reg2+1'b1;
                        end
                        
                        MUL:begin 
                        
                                out=reg1*reg2;
                        
                        end
						
                        SBB:begin
						out=reg1-reg2-1'b1;
						end
                        
						AND:begin
                        
                               out=reg1&reg2;
                       
                        end
                        
                        OR:begin
                        
                              out=reg1|reg2;
                       
                        end
                        
                        XOR:begin
                        
                               out=reg1^reg2;
                       
                        end
                        
                         NAND:begin
                        
                                out=~(reg1&reg2);
                       
                        end
                        
                         NOR:begin
                        
                                out=~(reg1|reg2);
                       
                        end
                        
                        NOT:begin
                        
                               out=~out;
                        end
                        
                        NEG:begin
                        out=~out+1'b1;
                           
                        end
                        
                         LOAD: begin
                             
                                out = MEMORY[aadd];
                                
                        end
                        
                        STORE:begin
                        
							
                        end 
                        
                        
                        		
		endcase
			
                
  


end 

endmodule

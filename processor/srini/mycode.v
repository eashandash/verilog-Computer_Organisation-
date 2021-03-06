module program(add,out);

input [4:0] add ;
output [31:0] out ;
reg [31:0] out ;


reg  [31:0]  PMEMORY [31:0];


always @(*) begin

        out = PMEMORY[add];
        
end

initial begin

PMEMORY[0]  = 32'b10000000010000000000000000000001;
PMEMORY[1]  = 32'b10000000100000000000000000000010;
PMEMORY[2]  = 32'b10000000110000000000000000000011;
PMEMORY[3]  = 32'b00100001000000000000000000100001;
PMEMORY[4]  = 32'b00100001000000000000000010000001;
PMEMORY[5]  = 32'b00100001010000000000000001000010;
PMEMORY[6]  = 32'b00100001010000000000000010100010;
PMEMORY[7]  = 32'b00100001100000000000000001100011;
PMEMORY[8]  = 32'b00100001100000000000000011000011;
PMEMORY[9]  = 32'b00000001110000000000000010000101;
PMEMORY[10]  = 32'b00000001110000000000000011100110;
PMEMORY[11]  = 32'b11000001110000000000000000000100;
PMEMORY[12]  = 32'b11111000000000000000000000000000;


end

endmodule

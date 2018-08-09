`timescale 1ns / 1ps
module ALU8(A,B,opcode,clk,OUT);

// I/O
// We have two 16-bit inputs
input [7:0] A,B;
// The opcode determines our next operation
input [2:0] opcode;
// The processor clock
input clk;
// A 32-bit output
output [15:0] OUT;

// The inputs are wires
wire [7:0] A,B;
wire [2:0] opcode;

// The output is a register
reg [15:0] OUT;

// The quotient and remainder for tyhe divider
wire [7:0] quotient,remainder;
// Declare an internal dividing unit
//Divider8 divider(.rfd(), .clk(clk), .dividend(A), .quotient(quotient), .divisor(B), .fractional(remainder)); // for our own division

prefix16(s,cout,x,y,c,clk);  // for our own adder 

// Similarly  make for all our modules like shifter, subratctor, adder, multiplier adn etc..,


// Define operation codes, there's only 9 so far
parameter   ADD = 3'b000;
parameter   SUB = 3'b001;
parameter   MUL = 3'b010;
parameter   DIV = 3'b011;
parameter   AND = 3'b100;
parameter   OR  = 3'b101;
parameter   XOR = 3'b110;
parameter   XNOR    = 3'b111;

// On the rising-edge of the clock
always @(posedge clk)
begin
    // The output is determined by the operation
    // Think of it as a MUX
    // A MUX8 will be added in later
    case(opcode)
        ADD: OUT <= {cout,s};
        SUB: OUT <= A - B;
        MUL: OUT <= A * B;
        DIV: OUT <= {quotient,remainder};
        AND: OUT <= A & B;
        OR:  OUT <= A | B;
        XOR: OUT <= A ^ B;
        XNOR: OUT <= A ~^ B;
        default: OUT <= 16'b0000000000000000;
    endcase
end
endmodule

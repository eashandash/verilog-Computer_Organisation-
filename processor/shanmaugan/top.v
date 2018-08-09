
`include "booth_float_Ext.v"

module top;
reg [23:0] a;
reg [23:0] b;
reg [23:0] p;
reg as,bs,ps,clk,reset;
reg [7:0] ae,be,pe;
wire [7:0] npe;
wire nps;
wire [23:0] np;

booth_float_ext f1(np,nps,npe,p,ps,pe,as,ae,a,bs,be,b,clk,reset);

initial
begin
 

 clk=1'b0;																	//1
 reset=1'b0;
 p=24'b000000000000000000000000;
 pe=8'b00000000;
 ps=0;
 as=0;
 bs=0;
 be=8'b10000010;
 ae=8'b10000100;
 b=24'b111101010010001101000100;
 a=24'b100010000111111011000010;

 #29 as=0;																//2
 bs=0;
 ae=8'b10000001;
 be=8'b01111110;
 a=24'b110010000000000000000000;
 b=24'b111011110011111101010010;
 //reset=1'b0;
 p=np;
 ps=nps;
 pe=npe;
//// 
 #31 as=0;															//3
 bs=0;
 be=8'b10000010;
 ae=8'b10000001;
 b=24'b101010000000000000000000;
 a=24'b101101001100110011001100;
 //reset=1'b0;
 p=np;
 ps=nps;
 pe=npe;
////// 
////// #26 as=0;
////// bs=0;
////// be=8'b00000000;
////// ae=8'b01101111;
////// b=24'b000000000000000000000000;
////// a=24'b100101100010011111110101;
////// //reset=1'b0;
////// p=np;
////// ps=nps;
////// pe=npe;
////// 
 #30 as=0;														//4
 bs=1;
 be=8'b10000010;
 ae=8'b10000100;
 b=24'b101000000000000000000000;
 a=24'b110010100000000000000000;
 //reset=1'b0;
 p=np;
 ps=nps;
 pe=npe;
//// 
////// #80 as=0;
////// bs=0;
////// be=8'b01111101;
////// ae=8'b00000000;
////// b=24'b100111101011100001010001;
////// a=24'b000000000000000000000000;
////// //reset=1'b0;
////// p=np;
////// ps=nps;
////// pe=npe;
//// 
 #30 as=1;														//5
 bs=0;
 be=8'b10000010;
 ae=8'b10000010;
 b=24'b111100000000000000000000;
 a=24'b101000110101110000101000;
 //reset=1'b0;
 p=np;
 ps=nps;
 pe=npe;
 
 #30 as=1;													//6
 bs=1;
 be=8'b10000010;
 ae=8'b10000001;
 b=24'b110010000000000000000000;
 a=24'b111010000000000000000000;
 //reset=1'b0;
 p=np;
 ps=nps;
 pe=npe;
 
 #30 as=0;													//7
 bs=0;
 be=8'b10000010;
 ae=8'b10000001;
 b=24'b110010000000000000000000;
 a=24'b111010000000000000000000;
 //reset=1'b0;
 p=np;
 ps=nps;
 pe=npe;

end
always
begin
#1 clk=~clk;
end

//always
//begin
// #81 
// p=np;
// ps=nps;
// pe=npe;
//end

always 
begin
#10000 $finish;
end 

initial
$monitor($time," nps=%b, npe=%b, np=%b", nps,npe,np);
endmodule

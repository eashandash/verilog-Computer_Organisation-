//`include "dflipflop.v"
//`include "csa.v"
//`include "cla32.v"

module wallace32(out,a,b,clk);
output [63:0]out;
input [31:0]a,b;
input clk;

reg [63:0]pp_level1[0:31];					   //32 partial sums
wire [63:0]pp_level1ff[0:31];                   
wire [63:0]pp_level2[0:21];                    //22 partial sums
wire [63:0]pp_level2ff[0:21];                   
wire [63:0]pp_level3[0:14];                    //15 partial sums
wire [63:0]pp_level3ff[0:14]; 
wire [63:0]pp_level4[0:9];                     //10 partial sums
wire [63:0]pp_level4ff[0:9];  
wire [63:0]pp_level5[0:6];                     //7 partial sums
wire [63:0]pp_level5ff[0:6];  
wire [63:0]pp_level6[0:4];                     //5 partial sums
wire [63:0]pp_level6ff[0:4]; 
wire [63:0]pp_level7[0:3];                     //4 partial sums
wire [63:0]pp_level7ff[0:3]; 
wire [63:0]pp_level8[0:2];                     //3 partial sums
wire [63:0]pp_level8ff[0:2];  
wire [63:0]pp_level9[0:1];                     //2 partial sums
wire [63:0]pp_level9ff[0:1];    
wire cout1,cout2;                
integer i,j;


always@(a,b) 
begin 

for (i = 0; i <= 31; i = i + 1) 
				for (j = 0; j <= 63; j = j + 1) //imitial with zero
							pp_level1[i][j] <= 0;
							
for (i = 0; i <= 31; i = i + 1) 
				for (j = 0; j <= 31; j = j + 1) //partial 
							pp_level1[i][j+i] <= a[j]&b[i];
	//$monitor(" a:%b \n b:%b \n 1:%b \n 2:%b \n 3:%b \n 4:%b \n 5:%b \n 6:%b \n 7:%b \n 8:%b\n 9:%b \n10:%b \n11:%b \n12:%b \n13:%b \n14:%b \n15:%b \n16:%b\n17:%b \n18:%b \n19:%b \n20:%b \n21:%b \n22:%b \n23:%b \n24:%b\n25:%b \n26:%b \n27:%b \n28:%b \n29:%b \n30:%b \n31:%b \n32:%b",a,b,pp_level1[0],pp_level1[1],pp_level1[2],pp_level1[3],pp_level1[4],pp_level1[5],pp_level1[6],pp_level1[7],pp_level1[8],pp_level1[9],pp_level1[10],pp_level1[11],pp_level1[12],pp_level1[13],pp_level1[14],pp_level1[15],pp_level1[16],pp_level1[17],pp_level1[18],pp_level1[19],pp_level1[20],pp_level1[21],pp_level1[22],pp_level1[23],pp_level1[24],pp_level1[25],pp_level1[26],pp_level1[27],pp_level1[28],pp_level1[29],pp_level1[30],pp_level1[31]); 
end

dflipflop64 f0(pp_level1ff[0],clk,pp_level1[0]);
dflipflop64 f1(pp_level1ff[1],clk,pp_level1[1]); 
dflipflop64 f2(pp_level1ff[2],clk,pp_level1[2]); 
dflipflop64 f3(pp_level1ff[3],clk,pp_level1[3]); 
dflipflop64 f4(pp_level1ff[4],clk,pp_level1[4]); 
dflipflop64 f5(pp_level1ff[5],clk,pp_level1[5]); 
dflipflop64 f6(pp_level1ff[6],clk,pp_level1[6]); 
dflipflop64 f7(pp_level1ff[7],clk,pp_level1[7]); 
dflipflop64 f8(pp_level1ff[8],clk,pp_level1[8]); 
dflipflop64 f9(pp_level1ff[9],clk,pp_level1[9]); 
dflipflop64 f10(pp_level1ff[10],clk,pp_level1[10]); 
dflipflop64 f11(pp_level1ff[11],clk,pp_level1[11]); 
dflipflop64 f12(pp_level1ff[12],clk,pp_level1[12]); 
dflipflop64 f13(pp_level1ff[13],clk,pp_level1[13]); 
dflipflop64 f14(pp_level1ff[14],clk,pp_level1[14]); 
dflipflop64 f15(pp_level1ff[15],clk,pp_level1[15]); 
dflipflop64 f16(pp_level1ff[16],clk,pp_level1[16]); 
dflipflop64 f17(pp_level1ff[17],clk,pp_level1[17]); 
dflipflop64 f18(pp_level1ff[18],clk,pp_level1[18]); 
dflipflop64 f19(pp_level1ff[19],clk,pp_level1[19]); 
dflipflop64 f20(pp_level1ff[20],clk,pp_level1[20]); 
dflipflop64 f21(pp_level1ff[21],clk,pp_level1[21]); 
dflipflop64 f22(pp_level1ff[22],clk,pp_level1[22]); 
dflipflop64 f23(pp_level1ff[23],clk,pp_level1[23]); 
dflipflop64 f24(pp_level1ff[24],clk,pp_level1[24]); 
dflipflop64 f25(pp_level1ff[25],clk,pp_level1[25]); 
dflipflop64 f26(pp_level1ff[26],clk,pp_level1[26]); 
dflipflop64 f27(pp_level1ff[27],clk,pp_level1[27]); 
dflipflop64 f28(pp_level1ff[28],clk,pp_level1[28]); 
dflipflop64 f29(pp_level1ff[29],clk,pp_level1[29]); 
dflipflop64 f30(pp_level1ff[30],clk,pp_level1[30]); 
dflipflop64 f31(pp_level1ff[31],clk,pp_level1[31]); 


csa64 fadd1(pp_level2[0],pp_level2[1],pp_level1ff[0],pp_level1ff[1],pp_level1ff[2]);
csa64 fadd2(pp_level2[2],pp_level2[3],pp_level1ff[3],pp_level1ff[4],pp_level1ff[5]);
csa64 fadd3(pp_level2[4],pp_level2[5],pp_level1ff[6],pp_level1ff[7],pp_level1ff[8]);
csa64 fadd4(pp_level2[6],pp_level2[7],pp_level1ff[9],pp_level1ff[10],pp_level1ff[11]);
csa64 fadd5(pp_level2[8],pp_level2[9],pp_level1ff[12],pp_level1ff[13],pp_level1ff[14]);
csa64 fadd6(pp_level2[10],pp_level2[11],pp_level1ff[15],pp_level1ff[16],pp_level1ff[17]);
csa64 fadd7(pp_level2[12],pp_level2[13],pp_level1ff[18],pp_level1ff[19],pp_level1ff[20]);
csa64 fadd8(pp_level2[14],pp_level2[15],pp_level1ff[21],pp_level1ff[22],pp_level1ff[23]);
csa64 fadd9(pp_level2[16],pp_level2[17],pp_level1ff[24],pp_level1ff[25],pp_level1ff[26]);
csa64 fadd10(pp_level2[18],pp_level2[19],pp_level1ff[27],pp_level1ff[28],pp_level1ff[29]);
assign pp_level2[20]=pp_level1ff[30];
assign pp_level2[21]=pp_level1ff[31];

dflipflop64 g0(pp_level2ff[0],clk,pp_level2[0]);
dflipflop64 g1(pp_level2ff[1],clk,pp_level2[1]); 
dflipflop64 g2(pp_level2ff[2],clk,pp_level2[2]); 
dflipflop64 g3(pp_level2ff[3],clk,pp_level2[3]); 
dflipflop64 g4(pp_level2ff[4],clk,pp_level2[4]); 
dflipflop64 g5(pp_level2ff[5],clk,pp_level2[5]); 
dflipflop64 g6(pp_level2ff[6],clk,pp_level2[6]); 
dflipflop64 g7(pp_level2ff[7],clk,pp_level2[7]); 
dflipflop64 g8(pp_level2ff[8],clk,pp_level2[8]); 
dflipflop64 g9(pp_level2ff[9],clk,pp_level2[9]); 
dflipflop64 g10(pp_level2ff[10],clk,pp_level2[10]); 
dflipflop64 g11(pp_level2ff[11],clk,pp_level2[11]); 
dflipflop64 g12(pp_level2ff[12],clk,pp_level2[12]); 
dflipflop64 g13(pp_level2ff[13],clk,pp_level2[13]); 
dflipflop64 g14(pp_level2ff[14],clk,pp_level2[14]); 
dflipflop64 g15(pp_level2ff[15],clk,pp_level2[15]); 
dflipflop64 g16(pp_level2ff[16],clk,pp_level2[16]); 
dflipflop64 g17(pp_level2ff[17],clk,pp_level2[17]); 
dflipflop64 g18(pp_level2ff[18],clk,pp_level2[18]); 
dflipflop64 g19(pp_level2ff[19],clk,pp_level2[19]); 
dflipflop64 g20(pp_level2ff[20],clk,pp_level2[20]); 
dflipflop64 g21(pp_level2ff[21],clk,pp_level2[21]); 

csa64 gadd1(pp_level3[0],pp_level3[1],pp_level2ff[0],pp_level2ff[1],pp_level2ff[2]);
csa64 gadd2(pp_level3[2],pp_level3[3],pp_level2ff[3],pp_level2ff[4],pp_level2ff[5]);
csa64 gadd3(pp_level3[4],pp_level3[5],pp_level2ff[6],pp_level2ff[7],pp_level2ff[8]);
csa64 gadd4(pp_level3[6],pp_level3[7],pp_level2ff[9],pp_level2ff[10],pp_level2ff[11]);
csa64 gadd5(pp_level3[8],pp_level3[9],pp_level2ff[12],pp_level2ff[13],pp_level2ff[14]);
csa64 gadd6(pp_level3[10],pp_level3[11],pp_level2ff[15],pp_level2ff[16],pp_level2ff[17]);
csa64 gadd7(pp_level3[12],pp_level3[13],pp_level2ff[18],pp_level2ff[19],pp_level2ff[20]);
assign pp_level3[14]=pp_level2ff[21];

dflipflop64 h0(pp_level3ff[0],clk,pp_level3[0]);
dflipflop64 h1(pp_level3ff[1],clk,pp_level3[1]); 
dflipflop64 h2(pp_level3ff[2],clk,pp_level3[2]); 
dflipflop64 h3(pp_level3ff[3],clk,pp_level3[3]); 
dflipflop64 h4(pp_level3ff[4],clk,pp_level3[4]); 
dflipflop64 h5(pp_level3ff[5],clk,pp_level3[5]); 
dflipflop64 h6(pp_level3ff[6],clk,pp_level3[6]); 
dflipflop64 h7(pp_level3ff[7],clk,pp_level3[7]); 
dflipflop64 h8(pp_level3ff[8],clk,pp_level3[8]); 
dflipflop64 h9(pp_level3ff[9],clk,pp_level3[9]); 
dflipflop64 h10(pp_level3ff[10],clk,pp_level3[10]); 
dflipflop64 h11(pp_level3ff[11],clk,pp_level3[11]); 
dflipflop64 h12(pp_level3ff[12],clk,pp_level3[12]); 
dflipflop64 h13(pp_level3ff[13],clk,pp_level3[13]); 
dflipflop64 h14(pp_level3ff[14],clk,pp_level3[14]);

csa64 hadd1(pp_level4[0],pp_level4[1],pp_level3ff[0],pp_level3ff[1],pp_level3ff[2]);
csa64 hadd2(pp_level4[2],pp_level4[3],pp_level3ff[3],pp_level3ff[4],pp_level3ff[5]);
csa64 hadd3(pp_level4[4],pp_level4[5],pp_level3ff[6],pp_level3ff[7],pp_level3ff[8]);
csa64 hadd4(pp_level4[6],pp_level4[7],pp_level3ff[9],pp_level3ff[10],pp_level3ff[11]);
csa64 hadd5(pp_level4[8],pp_level4[9],pp_level3ff[12],pp_level3ff[13],pp_level3ff[14]);

dflipflop64 i0(pp_level4ff[0],clk,pp_level4[0]);
dflipflop64 i1(pp_level4ff[1],clk,pp_level4[1]); 
dflipflop64 i2(pp_level4ff[2],clk,pp_level4[2]); 
dflipflop64 i3(pp_level4ff[3],clk,pp_level4[3]); 
dflipflop64 i4(pp_level4ff[4],clk,pp_level4[4]); 
dflipflop64 i5(pp_level4ff[5],clk,pp_level4[5]); 
dflipflop64 i6(pp_level4ff[6],clk,pp_level4[6]); 
dflipflop64 i7(pp_level4ff[7],clk,pp_level4[7]); 
dflipflop64 i8(pp_level4ff[8],clk,pp_level4[8]); 
dflipflop64 i9(pp_level4ff[9],clk,pp_level4[9]); 

csa64 iadd1(pp_level5[0],pp_level5[1],pp_level4ff[0],pp_level4ff[1],pp_level4ff[2]);
csa64 iadd2(pp_level5[2],pp_level5[3],pp_level4ff[3],pp_level4ff[4],pp_level4ff[5]);
csa64 iadd3(pp_level5[4],pp_level5[5],pp_level4ff[6],pp_level4ff[7],pp_level4ff[8]);
assign pp_level5[6]=pp_level4ff[9];

dflipflop64 j0(pp_level5ff[0],clk,pp_level5[0]);
dflipflop64 j1(pp_level5ff[1],clk,pp_level5[1]); 
dflipflop64 j2(pp_level5ff[2],clk,pp_level5[2]); 
dflipflop64 j3(pp_level5ff[3],clk,pp_level5[3]); 
dflipflop64 j4(pp_level5ff[4],clk,pp_level5[4]); 
dflipflop64 j5(pp_level5ff[5],clk,pp_level5[5]); 
dflipflop64 j6(pp_level5ff[6],clk,pp_level5[6]); 

csa64 jadd1(pp_level6[0],pp_level6[1],pp_level5ff[0],pp_level5ff[1],pp_level5ff[2]);
csa64 jadd2(pp_level6[2],pp_level6[3],pp_level5ff[3],pp_level5ff[4],pp_level5ff[5]);
assign pp_level6[4]=pp_level5ff[6];

dflipflop64 k0(pp_level6ff[0],clk,pp_level6[0]);
dflipflop64 k1(pp_level6ff[1],clk,pp_level6[1]); 
dflipflop64 k2(pp_level6ff[2],clk,pp_level6[2]); 
dflipflop64 k3(pp_level6ff[3],clk,pp_level6[3]); 
dflipflop64 k4(pp_level6ff[4],clk,pp_level6[4]); 

csa64 kadd1(pp_level7[0],pp_level7[1],pp_level6ff[0],pp_level6ff[1],pp_level6ff[2]);
assign pp_level7[2]=pp_level6ff[3];
assign pp_level7[3]=pp_level6ff[4];

dflipflop64 l0(pp_level7ff[0],clk,pp_level7[0]);
dflipflop64 l1(pp_level7ff[1],clk,pp_level7[1]); 
dflipflop64 l2(pp_level7ff[2],clk,pp_level7[2]); 
dflipflop64 l3(pp_level7ff[3],clk,pp_level7[3]); 

csa64 ladd1(pp_level8[0],pp_level8[1],pp_level7ff[0],pp_level7ff[1],pp_level7ff[2]);
assign pp_level8[2]=pp_level7ff[3];

dflipflop64 m0(pp_level8ff[0],clk,pp_level8[0]);
dflipflop64 m1(pp_level8ff[1],clk,pp_level8[1]); 
dflipflop64 m2(pp_level8ff[2],clk,pp_level8[2]); 

csa64 madd1(pp_level9[0],pp_level9[1],pp_level8ff[0],pp_level8ff[1],pp_level8ff[2]);

dflipflop64 n0(pp_level9ff[0],clk,pp_level9[0]);
dflipflop64 n1(pp_level9ff[1],clk,pp_level9[1]); 

cla32 adder1(cout1,out[31:0],pp_level9ff[0][31:0],pp_level9ff[1][31:0],0);
cla32 adder2(cout2,out[63:32],pp_level9ff[0][63:32],pp_level9ff[1][63:32],cout1);
endmodule

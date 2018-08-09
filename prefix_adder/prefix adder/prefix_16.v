module prefix16(s,cout,x,y,c);
input[15:0]x,y;input c;
output[15:0]s;output cout;
wire[15:0]p,g,a;
wire[15:0]w1;
wire [63:0]w2;

assign p = x ^ y;
assign g = x & y;
assign a = g | p;
assign w1[0]=c;

//level 1
dot d1(w1[1],g[0],a[0],c);
circle c1(w2[1],w2[2],g[2],a[2],g[1],a[1]);
circle c2(w2[3],w2[4],g[4],a[4],g[3],a[3]);
circle c3(w2[5],w2[6],g[6],a[6],g[5],a[5]);
circle c4(w2[7],w2[8],g[8],a[8],g[7],a[7]);
circle c5(w2[9],w2[10],g[10],a[10],g[9],a[9]);
circle c6(w2[11],w2[12],g[12],a[12],g[11],a[11]);
circle c7(w2[13],w2[14],g[14],a[14],g[13],a[13]);

//level 2
dot d2(w1[2],g[1],a[1],w1[1]);
dot d3(w1[3],w2[1],w2[2],w1[1]);
circle c8(w2[15],w2[16],g[5],a[5],w2[3],w2[4]);
circle c9(w2[17],w2[18],w2[5],w2[6],w2[3],w2[4]);
circle c10(w2[19],w2[20],g[9],a[9],w2[7],w2[8]);
circle c11(w2[21],w2[22],w2[9],w2[10],w2[7],w2[8]);
circle c12(w2[23],w2[24],g[13],a[13],w2[11],w2[12]);
circle c13(w2[25],w2[26],w2[13],w2[14],w2[11],w2[12]);

//level 3
dot d4(w1[4],g[3],a[3],w1[3]);
dot d5(w1[5],w2[3],w2[4],w1[3]);
dot d6(w1[6],w2[15],w2[16],w1[3]);
dot d7(w1[7],w2[17],w2[18],w1[3]);
circle c14(w2[27],w2[28],g[7],a[7],w2[17],w2[18]);
circle c15(w2[29],w2[30],w2[7],w2[8],w2[17],w2[18]);
circle c16(w2[31],w2[32],w2[19],w2[20],w2[17],w2[18]);
circle c17(w2[33],w2[34],w2[21],w2[22],w2[17],w2[18]);
circle c18(w2[35],w2[36],g[11],a[11],w2[21],w2[22]);
circle c19(w2[37],w2[38],w2[11],w2[12],w2[21],w2[22]);
circle c20(w2[39],w2[40],w2[23],w2[24],w2[21],w2[22]);
circle c21(w2[41],w2[42],w2[25],w2[26],w2[21],w2[22]);

//level 4
dot d8(w1[8],w2[27],w2[28],w1[7]);
dot d9(w1[9],w2[29],w2[30],w1[7]);
dot d10(w1[10],w2[31],w2[32],w1[7]);
dot d11(w1[11],w2[33],w2[34],w1[7]);
dot d12(w1[12],w2[35],w2[36],w1[7]);
dot d13(w1[13],w2[37],w2[38],w1[7]);
dot d14(w1[14],w2[39],w2[40],w1[7]);
dot d15(w1[15],w2[41],w2[42],w1[7]);

dot d16(cout,g[15],a[15],w1[15]);

assign s = w1 ^ p;

endmodule

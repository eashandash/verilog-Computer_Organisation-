module pre32p(s,cout,x,y,c,clk);
input[31:0]x,y;input c,clk;
output[31:0]s;output cout;
wire[31:0]p,g,a;
wire[31:0]w1;
wire [100:0]w2;
wire [100:0]l1,l2,l3,l4,l5,l6;
wire [32:0]l,p1,p2,p3,p4;
assign p = x ^ y;
assign g = x & y;
assign a = g | p;
assign w1[0]=c;

//LEVEL 1
dot d1(w1[1],g[0],a[0],c);
circle c1(w2[1],w2[2],g[2],a[2],g[1],a[1]);
circle c2(w2[3],w2[4],g[4],a[4],g[3],a[3]);
circle c3(w2[5],w2[6],g[6],a[6],g[5],a[5]);
circle c4(w2[7],w2[8],g[8],a[8],g[7],a[7]);
circle c5(w2[9],w2[10],g[10],a[10],g[9],a[9]);
circle c6(w2[11],w2[12],g[12],a[12],g[11],a[11]);
circle c7(w2[13],w2[14],g[14],a[14],g[13],a[13]);
circle c8(w2[15],w2[16],g[16],a[16],g[15],a[15]);
circle c9(w2[17],w2[18],g[18],a[18],g[17],a[17]);
circle c10(w2[19],w2[20],g[20],a[20],g[19],a[19]);
circle c11(w2[21],w2[22],g[22],a[22],g[21],a[21]);
circle c12(w2[23],w2[24],g[24],a[24],g[23],a[23]);
circle c13(w2[25],w2[26],g[26],a[26],g[25],a[25]);
circle c14(w2[27],w2[28],g[28],a[28],g[27],a[27]);
circle c15(w2[29],w2[30],g[30],a[30],g[29],a[29]);

dff f1(l1[0],w1[0],clk);
dff f2(l1[1],w1[1],clk);
dff f3(l1[2],g[1],clk);
dff f4(l1[3],a[1],clk);
dff f5(l1[4],w2[1],clk);
dff f6(l1[5],w2[2],clk);
dff f7(l1[6],g[3],clk);
dff f8(l1[7],a[3],clk);
dff f9(l1[8],w2[3],clk);
dff f10(l1[9],w2[4],clk);
dff f11(l1[10],g[5],clk);
dff f12(l1[11],a[5],clk);
dff f13(l1[12],w2[5],clk);
dff f14(l1[13],w2[6],clk);
dff f15(l1[14],g[7],clk);
dff f16(l1[15],a[7],clk);
dff f17(l1[16],w2[7],clk);
dff f18(l1[17],w2[8],clk);
dff f19(l1[18],g[9],clk);
dff f20(l1[19],a[9],clk);
dff f21(l1[20],w2[9],clk);
dff f22(l1[21],w2[10],clk);
dff f23(l1[22],g[11],clk);
dff f24(l1[23],a[11],clk);
dff f25(l1[24],w2[11],clk);
dff f26(l1[25],w2[12],clk);
dff f27(l1[26],g[13],clk);
dff f28(l1[27],a[13],clk);
dff f29(l1[28],w2[13],clk);
dff f30(l1[29],w2[14],clk);
dff f31(l1[30],g[15],clk);
dff f32(l1[31],a[15],clk);
dff f33(l1[32],w2[15],clk);
dff f34(l1[33],w2[16],clk);
dff f35(l1[34],g[17],clk);
dff f36(l1[35],a[17],clk);
dff f37(l1[36],w2[17],clk);
dff f38(l1[37],w2[18],clk);
dff f39(l1[38],g[19],clk);
dff f40(l1[39],a[19],clk);
dff f41(l1[40],w2[19],clk);
dff f42(l1[41],w2[20],clk);
dff f43(l1[42],g[21],clk);
dff f44(l1[43],a[21],clk);
dff f45(l1[44],w2[21],clk);
dff f46(l1[45],w2[22],clk);
dff f47(l1[46],g[23],clk);
dff f48(l1[47],a[23],clk);
dff f49(l1[48],w2[23],clk);
dff f50(l1[49],w2[24],clk);
dff f51(l1[50],g[25],clk);
dff f52(l1[51],a[25],clk);
dff f53(l1[52],w2[25],clk);
dff f54(l1[53],w2[26],clk);
dff f55(l1[54],g[27],clk);
dff f56(l1[55],a[27],clk);
dff f57(l1[56],w2[27],clk);
dff f58(l1[57],w2[28],clk);
dff f59(l1[58],g[29],clk);
dff f60(l1[59],a[29],clk);
dff f61(l1[60],w2[29],clk);
dff f62(l1[61],w2[30],clk);
dff f63(l1[62],g[31],clk);
dff f64(l1[63],a[31],clk);

dff f65(l[0],p[0],clk);
dff f66(l[1],p[1],clk);
dff f67(l[2],p[2],clk);
dff f68(l[3],p[3],clk);
dff f69(l[4],p[4],clk);
dff f70(l[5],p[5],clk);
dff f71(l[6],p[6],clk);
dff f72(l[7],p[7],clk);
dff f73(l[8],p[8],clk);
dff f74(l[9],p[9],clk);
dff f75(l[10],p[10],clk);
dff f76(l[11],p[11],clk);
dff f77(l[12],p[12],clk);
dff f78(l[13],p[13],clk);
dff f79(l[14],p[14],clk);
dff f80(l[15],p[15],clk);
dff f81(l[16],p[16],clk);
dff f82(l[17],p[17],clk);
dff f83(l[18],p[18],clk);
dff f84(l[19],p[19],clk);
dff f85(l[20],p[20],clk);
dff f86(l[21],p[21],clk);
dff f87(l[22],p[22],clk);
dff f88(l[23],p[23],clk);
dff f89(l[24],p[24],clk);
dff f90(l[25],p[25],clk);
dff f91(l[26],p[26],clk);
dff f92(l[27],p[27],clk);
dff f93(l[28],p[28],clk);
dff f94(l[29],p[29],clk);
dff f95(l[30],p[30],clk);
dff f96(l[31],p[31],clk);

//LEVEL 2
dot d2(w1[2],l1[2],l1[3],l1[1]);
dot d3(w1[3],l1[4],l1[5],l1[1]);
circle c16(w2[31],w2[32],l1[10],l1[11],l1[8],l1[9]);
circle c17(w2[33],w2[34],l1[12],l1[13],l1[8],l1[9]);
circle c18(w2[35],w2[36],l1[18],l1[19],l1[16],l1[17]);
circle c19(w2[37],w2[38],l1[20],l1[21],l1[16],l1[17]);
circle c20(w2[39],w2[40],l1[26],l1[27],l1[24],l1[25]);
circle c21(w2[41],w2[42],l1[28],l1[29],l1[24],l1[25]);
circle c22(w2[43],w2[44],l1[34],l1[35],l1[32],l1[33]);
circle c23(w2[45],w2[46],l1[36],l1[37],l1[32],l1[33]);
circle c24(w2[47],w2[48],l1[42],l1[43],l1[40],l1[41]);
circle c25(w2[49],w2[50],l1[44],l1[45],l1[40],l1[41]);
circle c26(w2[51],w2[52],l1[50],l1[51],l1[48],l1[49]);
circle c27(w2[53],w2[54],l1[52],l1[53],l1[48],l1[49]);
circle c28(w2[55],w2[56],l1[58],l1[59],l1[56],l1[57]);
circle c29(w2[57],w2[58],l1[60],l1[61],l1[56],l1[57]);

dff b1(l2[0],l1[0],clk);
dff b2(l2[1],l1[1],clk);
dff b3(l2[2],w1[2],clk);
dff b4(l2[3],w1[3],clk);
dff b5(l2[4],l1[6],clk);
dff b6(l2[5],l1[7],clk);
dff b7(l2[6],l1[8],clk);
dff b8(l2[7],l1[9],clk);
dff b9(l2[8],w2[31],clk);
dff b10(l2[9],w2[32],clk);
dff b11(l2[10],w2[33],clk);
dff b12(l2[11],w2[34],clk);
dff b13(l2[12],l1[14],clk);
dff b14(l2[13],l1[15],clk);
dff b15(l2[14],l1[16],clk);
dff b16(l2[15],l1[17],clk);
dff b17(l2[16],w2[35],clk);
dff b18(l2[17],w2[36],clk);
dff b19(l2[18],w2[37],clk);
dff b20(l2[19],w2[38],clk);
dff b21(l2[20],l1[22],clk);
dff b22(l2[21],l1[23],clk);
dff b23(l2[22],l1[24],clk);
dff b24(l2[23],l1[25],clk);
dff b25(l2[24],w2[39],clk);
dff b26(l2[25],w2[40],clk);
dff b27(l2[26],w2[41],clk);
dff b28(l2[27],w2[42],clk);
dff b29(l2[28],l1[30],clk);
dff b30(l2[29],l1[31],clk);
dff b31(l2[30],l1[32],clk);
dff b32(l2[31],l1[33],clk);
dff b33(l2[32],w2[43],clk);
dff b34(l2[33],w2[44],clk);
dff b35(l2[34],w2[45],clk);
dff b36(l2[35],w2[46],clk);
dff b37(l2[36],l1[38],clk);
dff b38(l2[37],l1[39],clk);
dff b39(l2[38],l1[40],clk);
dff b40(l2[39],l1[41],clk);
dff b41(l2[40],w2[47],clk);
dff b42(l2[41],w2[48],clk);
dff b43(l2[42],w2[49],clk);
dff b44(l2[43],w2[50],clk);
dff b45(l2[44],l1[46],clk);
dff b46(l2[45],l1[47],clk);
dff b47(l2[46],l1[48],clk);
dff b48(l2[47],l1[49],clk);
dff b49(l2[48],w2[51],clk);
dff b50(l2[49],w2[52],clk);
dff b51(l2[50],w2[53],clk);
dff b52(l2[51],w2[54],clk);
dff b53(l2[52],l1[54],clk);
dff b54(l2[53],l1[55],clk);
dff b55(l2[54],l1[56],clk);
dff b56(l2[55],l1[57],clk);
dff b57(l2[56],w2[55],clk);
dff b58(l2[57],w2[56],clk);
dff b59(l2[58],w2[57],clk);
dff b60(l2[59],w2[58],clk);
dff b61(l2[60],l1[62],clk);
dff b62(l2[61],l1[63],clk);

dff b65 (p1[0],l[0],clk);
dff b66 (p1[1],l[1],clk);
dff b67 (p1[2],l[2],clk);
dff b68 (p1[3],l[3],clk);
dff b69 (p1[4],l[4],clk);
dff b70 (p1[5],l[5],clk);
dff b71 (p1[6],l[6],clk);
dff b72 (p1[7],l[7],clk);
dff b73 (p1[8],l[8],clk);
dff b74 (p1[9],l[9],clk);
dff b75 (p1[10],l[10],clk);
dff b76 (p1[11],l[11],clk);
dff b77 (p1[12],l[12],clk);
dff b78 (p1[13],l[13],clk);
dff b79 (p1[14],l[14],clk);
dff b80 (p1[15],l[15],clk);
dff b81 (p1[16],l[16],clk);
dff b82 (p1[17],l[17],clk);
dff b83 (p1[18],l[18],clk);
dff b84 (p1[19],l[19],clk);
dff b85 (p1[20],l[20],clk);
dff b86 (p1[21],l[21],clk);
dff b87 (p1[22],l[22],clk);
dff b88 (p1[23],l[23],clk);
dff b89 (p1[24],l[24],clk);
dff b90 (p1[25],l[25],clk);
dff b91 (p1[26],l[26],clk);
dff b92 (p1[27],l[27],clk);
dff b93 (p1[28],l[28],clk);
dff b94 (p1[29],l[29],clk);
dff b95 (p1[30],l[30],clk);
dff b96 (p1[31],l[31],clk);

//LEVEL 3
dot d4(w1[4],l2[4],l2[5],l2[3]);
dot d5(w1[5],l2[6],l2[7],l2[3]);
dot d6(w1[6],l2[8],l2[9],l2[3]);
dot d7(w1[7],l2[10],l2[11],l2[3]);
circle c30(w2[59],w2[60],l2[20],l2[21],l2[18],l2[19]);
circle c31(w2[61],w2[62],l2[22],l2[23],l2[18],l2[19]);
circle c32(w2[63],w2[64],l2[24],l2[25],l2[18],l2[19]);
circle c33(w2[65],w2[66],l2[26],l2[27],l2[18],l2[19]);
circle c34(w2[67],w2[68],l2[36],l2[37],l2[34],l2[35]);
circle c35(w2[69],w2[70],l2[38],l2[39],l2[34],l2[35]);
circle c36(w2[71],w2[72],l2[40],l2[41],l2[34],l2[35]);
circle c37(w2[73],w2[74],l2[42],l2[43],l2[34],l2[35]);
circle c38(w2[75],w2[76],l2[52],l2[53],l2[50],l2[51]);
circle c39(w2[77],w2[78],l2[54],l2[55],l2[50],l2[51]);
circle c40(w2[79],w2[80],l2[56],l2[57],l2[50],l2[51]);
circle c41(w2[81],w2[82],l2[58],l2[59],l2[50],l2[51]);

dff m1(l3[0],l2[0],clk);
dff m2(l3[1],l2[1],clk);
dff m3(l3[2],l2[2],clk);
dff m4(l3[3],l2[3],clk);
dff m5(l3[4],w1[4],clk);
dff m6(l3[5],w1[5],clk);
dff m7(l3[6],w1[6],clk);
dff m8(l3[7],w1[7],clk);
dff m9(l3[8],l2[12],clk);
dff m10(l3[9],l2[13],clk);
dff m11(l3[10],l2[14],clk);
dff m12(l3[11],l2[15],clk);
dff m13(l3[12],l2[16],clk);
dff m14(l3[13],l2[17],clk);
dff m15(l3[14],l2[18],clk);
dff m16(l3[15],l2[19],clk);
dff m17(l3[16],w2[59],clk);
dff m18(l3[17],w2[60],clk);
dff m19(l3[18],w2[61],clk);
dff m20(l3[19],w2[62],clk);
dff m21(l3[20],w2[63],clk);
dff m22(l3[21],w2[64],clk);
dff m23(l3[22],w2[65],clk);
dff m24(l3[23],w2[66],clk);
dff m25(l3[24],l2[28],clk);
dff m26(l3[25],l2[29],clk);
dff m27(l3[26],l2[30],clk);
dff m28(l3[27],l2[31],clk);
dff m29(l3[28],l2[32],clk);
dff m30(l3[29],l2[33],clk);
dff m31(l3[30],l2[34],clk);
dff m32(l3[31],l2[35],clk);
dff m33(l3[32],w2[67],clk);
dff m34(l3[33],w2[68],clk);
dff m35(l3[34],w2[69],clk);
dff m36(l3[35],w2[70],clk);
dff m37(l3[36],w2[71],clk);
dff m38(l3[37],w2[72],clk);
dff m39(l3[38],w2[73],clk);
dff m40(l3[39],w2[74],clk);
dff m41(l3[40],l2[44],clk);
dff m42(l3[41],l2[45],clk);
dff m43(l3[42],l2[46],clk);
dff m44(l3[43],l2[47],clk);
dff m45(l3[44],l2[48],clk);
dff m46(l3[45],l2[49],clk);
dff m47(l3[46],l2[50],clk);
dff m48(l3[47],l2[51],clk);
dff m49(l3[48],w2[75],clk);
dff m50(l3[49],w2[76],clk);
dff m51(l3[50],w2[77],clk);
dff m52(l3[51],w2[78],clk);
dff m53(l3[52],w2[79],clk);
dff m54(l3[53],w2[80],clk);
dff m55(l3[54],w2[81],clk);
dff m56(l3[55],w2[82],clk);
dff m57(l3[56],l2[60],clk);
dff m58(l3[57],l2[61],clk);

dff m65 (p2[0],p1[0],clk);
dff m66 (p2[1],p1[1],clk);
dff m67 (p2[2],p1[2],clk);
dff m68 (p2[3],p1[3],clk);
dff m69 (p2[4],p1[4],clk);
dff m70 (p2[5],p1[5],clk);
dff m71 (p2[6],p1[6],clk);
dff m72 (p2[7],p1[7],clk);
dff m73 (p2[8],p1[8],clk);
dff m74 (p2[9],p1[9],clk);
dff m75 (p2[10],p1[10],clk);
dff m76 (p2[11],p1[11],clk);
dff m77 (p2[12],p1[12],clk);
dff m78 (p2[13],p1[13],clk);
dff m79 (p2[14],p1[14],clk);
dff m80 (p2[15],p1[15],clk);
dff m81 (p2[16],p1[16],clk);
dff m82 (p2[17],p1[17],clk);
dff m83 (p2[18],p1[18],clk);
dff m84 (p2[19],p1[19],clk);
dff m85 (p2[20],p1[20],clk);
dff m86 (p2[21],p1[21],clk);
dff m87 (p2[22],p1[22],clk);
dff m88 (p2[23],p1[23],clk);
dff m89 (p2[24],p1[24],clk);
dff m90 (p2[25],p1[25],clk);
dff m91 (p2[26],p1[26],clk);
dff m92 (p2[27],p1[27],clk);
dff m93 (p2[28],p1[28],clk);
dff m94 (p2[29],p1[29],clk);
dff m95 (p2[30],p1[30],clk);
dff m96 (p2[31],p1[31],clk);

//LEVEL 4
dot d8(w1[8],l3[8],l3[9],l3[7]);
dot d9(w1[9],l3[10],l3[11],l3[7]);
dot d10(w1[10],l3[12],l3[13],l3[7]);
dot d11(w1[11],l3[14],l3[15],l3[7]);
dot d12(w1[12],l3[16],l3[17],l3[7]);
dot d13(w1[13],l3[18],l3[19],l3[7]);
dot d14(w1[14],l3[20],l3[21],l3[7]);
dot d15(w1[15],l3[22],l3[23],l3[7]);
circle c42(w2[83],w2[84],l3[40],l3[41],l3[38],l3[39]);
circle c43(w2[85],w2[86],l3[42],l3[43],l3[38],l3[39]);
circle c44(w2[87],w2[88],l3[44],l3[45],l3[38],l3[39]);
circle c45(w2[89],w2[90],l3[46],l3[47],l3[38],l3[39]);
circle c46(w2[91],w2[92],l3[48],l3[49],l3[38],l3[39]);
circle c47(w2[93],w2[94],l3[50],l3[51],l3[38],l3[39]);
circle c48(w2[95],w2[96],l3[52],l3[53],l3[38],l3[39]);
circle c49(w2[97],w2[98],l3[54],l3[55],l3[38],l3[39]);

dff n1(l4[0],l3[0],clk);
dff n2(l4[1],l3[1],clk);
dff n3(l4[2],l3[2],clk);
dff n4(l4[3],l3[3],clk);
dff n5(l4[4],l3[4],clk);
dff n6(l4[5],l3[5],clk);
dff n7(l4[6],l3[6],clk);
dff n8(l4[7],l3[7],clk);
dff n9(l4[8],w1[8],clk);
dff n10(l4[9],w1[9],clk);
dff n11(l4[10],w1[10],clk);
dff n12(l4[11],w1[11],clk);
dff n13(l4[12],w1[12],clk);
dff n14(l4[13],w1[13],clk);
dff n15(l4[14],w1[14],clk);
dff n16(l4[15],w1[15],clk);
dff n17(l4[16],l3[24],clk);
dff n18(l4[17],l3[25],clk);
dff n19(l4[18],l3[26],clk);
dff n20(l4[19],l3[27],clk);
dff n21(l4[20],l3[28],clk);
dff n22(l4[21],l3[29],clk);
dff n23(l4[22],l3[30],clk);
dff n24(l4[23],l3[31],clk);
dff n25(l4[24],l3[32],clk);
dff n26(l4[25],l3[33],clk);
dff n27(l4[26],l3[34],clk);
dff n28(l4[27],l3[35],clk);
dff n29(l4[28],l3[36],clk);
dff n30(l4[29],l3[37],clk);
dff n31(l4[30],l3[38],clk);
dff n32(l4[31],l3[39],clk);
dff n33(l4[32],w2[83],clk);
dff n34(l4[33],w2[84],clk);
dff n35(l4[34],w2[85],clk);
dff n36(l4[35],w2[86],clk);
dff n37(l4[36],w2[87],clk);
dff n38(l4[37],w2[88],clk);
dff n39(l4[38],w2[89],clk);
dff n40(l4[39],w2[90],clk);
dff n41(l4[40],w2[91],clk);
dff n42(l4[41],w2[92],clk);
dff n43(l4[42],w2[93],clk);
dff n44(l4[43],w2[94],clk);
dff n45(l4[44],w2[95],clk);
dff n46(l4[45],w2[96],clk);
dff n47(l4[46],w2[97],clk);
dff n48(l4[47],w2[98],clk);
dff n49(l4[48],l3[56],clk);
dff n50(l4[49],l3[57],clk);

dff n65 (p3[0],p2[0],clk);
dff n66 (p3[1],p2[1],clk);
dff n67 (p3[2],p2[2],clk);
dff n68 (p3[3],p2[3],clk);
dff n69 (p3[4],p2[4],clk);
dff n70 (p3[5],p2[5],clk);
dff n71 (p3[6],p2[6],clk);
dff n72 (p3[7],p2[7],clk);
dff n73 (p3[8],p2[8],clk);
dff n74 (p3[9],p2[9],clk);
dff n75 (p3[10],p2[10],clk);
dff n76 (p3[11],p2[11],clk);
dff n77 (p3[12],p2[12],clk);
dff n78 (p3[13],p2[13],clk);
dff n79 (p3[14],p2[14],clk);
dff n80 (p3[15],p2[15],clk);
dff n81 (p3[16],p2[16],clk);
dff n82 (p3[17],p2[17],clk);
dff n83 (p3[18],p2[18],clk);
dff n84 (p3[19],p2[19],clk);
dff n85 (p3[20],p2[20],clk);
dff n86 (p3[21],p2[21],clk);
dff n87 (p3[22],p2[22],clk);
dff n88 (p3[23],p2[23],clk);
dff n89 (p3[24],p2[24],clk);
dff n90 (p3[25],p2[25],clk);
dff n91 (p3[26],p2[26],clk);
dff n92 (p3[27],p2[27],clk);
dff n93 (p3[28],p2[28],clk);
dff n94 (p3[29],p2[29],clk);
dff n95 (p3[30],p2[30],clk);
dff n96 (p3[31],p2[31],clk);

//LEVEL 5
dot d16(w1[16],l4[16],l4[17],l4[15]);
dot d17(w1[17],l4[18],l4[19],l4[15]);
dot d18(w1[18],l4[20],l4[21],l4[15]);
dot d19(w1[19],l4[22],l4[23],l4[15]);
dot d20(w1[20],l4[24],l4[25],l4[15]);
dot d21(w1[21],l4[26],l4[27],l4[15]);
dot d22(w1[22],l4[28],l4[29],l4[15]);
dot d23(w1[23],l4[30],l4[31],l4[15]);
dot d24(w1[24],l4[32],l4[33],l4[15]);
dot d25(w1[25],l4[34],l4[35],l4[15]);
dot d26(w1[26],l4[36],l4[37],l4[15]);
dot d27(w1[27],l4[38],l4[39],l4[15]);
dot d28(w1[28],l4[40],l4[41],l4[15]);
dot d29(w1[29],l4[42],l4[43],l4[15]);
dot d30(w1[30],l4[44],l4[45],l4[15]);
dot d31(w1[31],l4[46],l4[47],l4[15]);

dff z1(l5[0],l4[0],clk);
dff z2(l5[1],l4[1],clk);
dff z3(l5[2],l4[2],clk);
dff z4(l5[3],l4[3],clk);
dff z5(l5[4],l4[4],clk);
dff z6(l5[5],l4[5],clk);
dff z7(l5[6],l4[6],clk);
dff z8(l5[7],l4[7],clk);
dff z9(l5[8],l4[8],clk);
dff z10(l5[9],l4[9],clk);
dff z11(l5[10],l4[10],clk);
dff z12(l5[11],l4[11],clk);
dff z13(l5[12],l4[12],clk);
dff z14(l5[13],l4[13],clk);
dff z15(l5[14],l4[14],clk);
dff z16(l5[15],l4[15],clk);
dff z17(l5[16],w1[16],clk);
dff z18(l5[17],w1[17],clk);
dff z19(l5[18],w1[18],clk);
dff z20(l5[19],w1[19],clk);
dff z21(l5[20],w1[20],clk);
dff z22(l5[21],w1[21],clk);
dff z23(l5[22],w1[22],clk);
dff z24(l5[23],w1[23],clk);
dff z25(l5[24],w1[24],clk);
dff z26(l5[25],w1[25],clk);
dff z27(l5[26],w1[26],clk);
dff z28(l5[27],w1[27],clk);
dff z29(l5[28],w1[28],clk);
dff z30(l5[29],w1[29],clk);
dff z31(l5[30],w1[30],clk);
dff z32(l5[31],w1[31],clk);
dff z33(l5[32],l4[48],clk);
dff z34(l5[33],l4[49],clk);

dff z65 (p4[0],p3[0],clk);
dff z66 (p4[1],p3[1],clk);
dff z67 (p4[2],p3[2],clk);
dff z68 (p4[3],p3[3],clk);
dff z69 (p4[4],p3[4],clk);
dff z70 (p4[5],p3[5],clk);
dff z71 (p4[6],p3[6],clk);
dff z72 (p4[7],p3[7],clk);
dff z73 (p4[8],p3[8],clk);
dff z74 (p4[9],p3[9],clk);
dff z75 (p4[10],p3[10],clk);
dff z76 (p4[11],p3[11],clk);
dff z77 (p4[12],p3[12],clk);
dff z78 (p4[13],p3[13],clk);
dff z79 (p4[14],p3[14],clk);
dff z80 (p4[15],p3[15],clk);
dff z81 (p4[16],p3[16],clk);
dff z82 (p4[17],p3[17],clk);
dff z83 (p4[18],p3[18],clk);
dff z84 (p4[19],p3[19],clk);
dff z85 (p4[20],p3[20],clk);
dff z86 (p4[21],p3[21],clk);
dff z87 (p4[22],p3[22],clk);
dff z88 (p4[23],p3[23],clk);
dff z89 (p4[24],p3[24],clk);
dff z90 (p4[25],p3[25],clk);
dff z91 (p4[26],p3[26],clk);
dff z92 (p4[27],p3[27],clk);
dff z93 (p4[28],p3[28],clk);
dff z94 (p4[29],p3[29],clk);
dff z95 (p4[30],p3[30],clk);
dff z96 (p4[31],p3[31],clk);

dot d32(cout,l5[32],l5[33],l5[31]);
assign s[31:0] = l5[31:0] ^ p4[31:0];
endmodule

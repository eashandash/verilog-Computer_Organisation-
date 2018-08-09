//right shift and rotate


module shifter(a,clk,sel,rotate,b);

input [31:0]a;
input [4:0]sel;
input rotate,clk;

output [31:0]b;

wire rotate1,rotate2,rotate3,rotate4;
wire [31:0]a1,a2,a3,a4;
wire [4:0]sel1,sel2,sel3,sel4;

//level 1
not_pipelined_mux_2x1 l1(0,a[0],rotate,L11);

mux_2x1 l11(a[31],L11,sel[0],a1[31],clk);
mux_2x1 l12(a[30],a[31],sel[0],a1[30],clk);
mux_2x1 l13(a[29],a[30],sel[0],a1[29],clk);
mux_2x1 l14(a[28],a[29],sel[0],a1[28],clk);
mux_2x1 l15(a[27],a[28],sel[0],a1[27],clk);
mux_2x1 l16(a[26],a[27],sel[0],a1[26],clk);
mux_2x1 l17(a[25],a[26],sel[0],a1[25],clk);
mux_2x1 l18(a[24],a[25],sel[0],a1[24],clk);
mux_2x1 l19(a[23],a[24],sel[0],a1[23],clk);
mux_2x1 l110(a[22],a[23],sel[0],a1[22],clk);
mux_2x1 l111(a[21],a[22],sel[0],a1[21],clk);
mux_2x1 l112(a[20],a[21],sel[0],a1[20],clk);
mux_2x1 l113(a[19],a[20],sel[0],a1[19],clk);
mux_2x1 l114(a[18],a[19],sel[0],a1[18],clk);
mux_2x1 l115(a[17],a[18],sel[0],a1[17],clk);
mux_2x1 l116(a[16],a[17],sel[0],a1[16],clk);
mux_2x1 l117(a[15],a[16],sel[0],a1[15],clk);
mux_2x1 l118(a[14],a[15],sel[0],a1[14],clk);
mux_2x1 l119(a[13],a[14],sel[0],a1[13],clk);
mux_2x1 l120(a[12],a[13],sel[0],a1[12],clk);
mux_2x1 l121(a[11],a[12],sel[0],a1[11],clk);
mux_2x1 l122(a[10],a[11],sel[0],a1[10],clk);
mux_2x1 l123(a[9],a[10],sel[0],a1[9],clk);
mux_2x1 l124(a[8],a[9],sel[0],a1[8],clk);
mux_2x1 l125(a[7],a[8],sel[0],a1[7],clk);
mux_2x1 l126(a[6],a[7],sel[0],a1[6],clk);
mux_2x1 l127(a[5],a[6],sel[0],a1[5],clk);
mux_2x1 l128(a[4],a[5],sel[0],a1[4],clk);
mux_2x1 l129(a[3],a[4],sel[0],a1[3],clk);
mux_2x1 l130(a[2],a[3],sel[0],a1[2],clk);
mux_2x1 l131(a[1],a[2],sel[0],a1[1],clk);
mux_2x1 l132(a[0],a[1],sel[0],a1[0],clk);




//level 2
dff r21(rotate,clk,rotate1);

not_pipelined_mux_2x1 l2(0,a1[1],rotate1,L21);
not_pipelined_mux_2x1 l02(0,a1[0],rotate1,L22);

dff d21(sel[1],clk,sel1[1]);

mux_2x1 l21(a1[31],L21,sel1[1],a2[31],clk);
mux_2x1 l22(a1[30],L22,sel1[1],a2[30],clk);
mux_2x1 l23(a1[29],a1[31],sel1[1],a2[29],clk);
mux_2x1 l24(a1[28],a1[30],sel1[1],a2[28],clk);
mux_2x1 l25(a1[27],a1[29],sel1[1],a2[27],clk);
mux_2x1 l26(a1[26],a1[28],sel1[1],a2[26],clk);
mux_2x1 l27(a1[25],a1[27],sel1[1],a2[25],clk);
mux_2x1 l28(a1[24],a1[26],sel1[1],a2[24],clk);
mux_2x1 l29(a1[23],a1[25],sel1[1],a2[23],clk);
mux_2x1 l210(a1[22],a1[24],sel1[1],a2[22],clk);
mux_2x1 l211(a1[21],a1[23],sel1[1],a2[21],clk);
mux_2x1 l212(a1[20],a1[22],sel1[1],a2[20],clk);
mux_2x1 l213(a1[19],a1[21],sel1[1],a2[19],clk);
mux_2x1 l214(a1[18],a1[20],sel1[1],a2[18],clk);
mux_2x1 l215(a1[17],a1[19],sel1[1],a2[17],clk);
mux_2x1 l216(a1[16],a1[18],sel1[1],a2[16],clk);
mux_2x1 l217(a1[15],a1[17],sel1[1],a2[15],clk);
mux_2x1 l218(a1[14],a1[16],sel1[1],a2[14],clk);
mux_2x1 l219(a1[13],a1[15],sel1[1],a2[13],clk);
mux_2x1 l220(a1[12],a1[14],sel1[1],a2[12],clk);
mux_2x1 l221(a1[11],a1[13],sel1[1],a2[11],clk);
mux_2x1 l222(a1[10],a1[12],sel1[1],a2[10],clk);
mux_2x1 l223(a1[9],a1[11],sel1[1],a2[9],clk);
mux_2x1 l224(a1[8],a1[10],sel1[1],a2[8],clk);
mux_2x1 l225(a1[7],a1[9],sel1[1],a2[7],clk);
mux_2x1 l226(a1[6],a1[8],sel1[1],a2[6],clk);
mux_2x1 l227(a1[5],a1[7],sel1[1],a2[5],clk);
mux_2x1 l228(a1[4],a1[6],sel1[1],a2[4],clk);
mux_2x1 l229(a1[3],a1[5],sel1[1],a2[3],clk);
mux_2x1 l230(a1[2],a1[4],sel1[1],a2[2],clk);
mux_2x1 l231(a1[1],a1[3],sel1[1],a2[1],clk);
mux_2x1 l232(a1[0],a1[2],sel1[1],a2[0],clk);




//level 3
dff r31(rotate1,clk,rotate2);

not_pipelined_mux_2x1 l3(0,a2[3],rotate2,L31);
not_pipelined_mux_2x1 l03(0,a2[2],rotate2,L32);
not_pipelined_mux_2x1 l003(0,a2[1],rotate2,L33);
not_pipelined_mux_2x1 l0003(0,a2[0],rotate2,L34);

dff d31(sel[2],clk,sel1[2]);
dff d32(sel1[2],clk,sel2[2]);

mux_2x1 l31(a2[31],L31,sel2[2],a3[31],clk);
mux_2x1 l32(a2[30],L32,sel2[2],a3[30],clk);
mux_2x1 l33(a2[29],L33,sel2[2],a3[29],clk);
mux_2x1 l34(a2[28],L34,sel2[2],a3[28],clk);
mux_2x1 l35(a2[27],a2[31],sel2[2],a3[27],clk);
mux_2x1 l36(a2[26],a2[30],sel2[2],a3[26],clk);
mux_2x1 l37(a2[25],a2[29],sel2[2],a3[25],clk);
mux_2x1 l38(a2[24],a2[28],sel2[2],a3[24],clk);
mux_2x1 l39(a2[23],a2[27],sel2[2],a3[23],clk);
mux_2x1 l310(a2[22],a2[26],sel2[2],a3[22],clk);
mux_2x1 l311(a2[21],a2[25],sel2[2],a3[21],clk);
mux_2x1 l312(a2[20],a2[24],sel2[2],a3[20],clk);
mux_2x1 l313(a2[19],a2[23],sel2[2],a3[19],clk);
mux_2x1 l314(a2[18],a2[22],sel2[2],a3[18],clk);
mux_2x1 l315(a2[17],a2[21],sel2[2],a3[17],clk);
mux_2x1 l316(a2[16],a2[20],sel2[2],a3[16],clk);
mux_2x1 l317(a2[15],a2[19],sel2[2],a3[15],clk);
mux_2x1 l318(a2[14],a2[18],sel2[2],a3[14],clk);
mux_2x1 l319(a2[13],a2[17],sel2[2],a3[13],clk);
mux_2x1 l320(a2[12],a2[16],sel2[2],a3[12],clk);
mux_2x1 l321(a2[11],a2[15],sel2[2],a3[11],clk);
mux_2x1 l322(a2[10],a2[14],sel2[2],a3[10],clk);
mux_2x1 l323(a2[9],a2[13],sel2[2],a3[9],clk);
mux_2x1 l324(a2[8],a2[12],sel2[2],a3[8],clk);
mux_2x1 l325(a2[7],a2[11],sel2[2],a3[7],clk);
mux_2x1 l326(a2[6],a2[10],sel2[2],a3[6],clk);
mux_2x1 l327(a2[5],a2[9],sel2[2],a3[5],clk);
mux_2x1 l328(a2[4],a2[8],sel2[2],a3[4],clk);
mux_2x1 l329(a2[3],a2[7],sel2[2],a3[3],clk);
mux_2x1 l330(a2[2],a2[6],sel2[2],a3[2],clk);
mux_2x1 l331(a2[1],a2[5],sel2[2],a3[1],clk);
mux_2x1 l332(a2[0],a2[4],sel2[2],a3[0],clk);

//level 4
dff r41(rotate2,clk,rotate3);

not_pipelined_mux_2x1 l4(0,a3[7],rotate3,L41);
not_pipelined_mux_2x1 l04(0,a3[6],rotate3,L42);
not_pipelined_mux_2x1 l004(0,a3[5],rotate3,L43);
not_pipelined_mux_2x1 l0004(0,a3[4],rotate3,L44);
not_pipelined_mux_2x1 l00004(0,a3[3],rotate3,L45);
not_pipelined_mux_2x1 l000004(0,a3[2],rotate3,L46);
not_pipelined_mux_2x1 l0000004(0,a3[1],rotate3,L47);
not_pipelined_mux_2x1 l00000004(0,a3[0],rotate3,L48);

dff d41(sel[3],clk,sel1[3]);
dff d42(sel1[3],clk,sel2[3]);
dff d43(sel2[3],clk,sel3[3]);


mux_2x1 l41(a3[31],L41,sel3[3],a4[31],clk);
mux_2x1 l42(a3[30],L42,sel3[3],a4[30],clk);
mux_2x1 l43(a3[29],L43,sel3[3],a4[29],clk);
mux_2x1 l44(a3[28],L44,sel3[3],a4[28],clk);
mux_2x1 l45(a3[27],L45,sel3[3],a4[27],clk);
mux_2x1 l46(a3[26],L46,sel3[3],a4[26],clk);
mux_2x1 l47(a3[25],L47,sel3[3],a4[25],clk);
mux_2x1 l48(a3[24],L48,sel3[3],a4[24],clk);
mux_2x1 l49(a3[23],a3[31],sel3[3],a4[23],clk);
mux_2x1 l410(a3[22],a3[30],sel3[3],a4[22],clk);
mux_2x1 l411(a3[21],a3[29],sel3[3],a4[21],clk);
mux_2x1 l412(a3[20],a3[28],sel3[3],a4[20],clk);
mux_2x1 l413(a3[19],a3[27],sel3[3],a4[19],clk);
mux_2x1 l414(a3[18],a3[26],sel3[3],a4[18],clk);
mux_2x1 l415(a3[17],a3[25],sel3[3],a4[17],clk);
mux_2x1 l416(a3[16],a3[24],sel3[3],a4[16],clk);
mux_2x1 l417(a3[15],a3[23],sel3[3],a4[15],clk);
mux_2x1 l418(a3[14],a3[22],sel3[3],a4[14],clk);
mux_2x1 l419(a3[13],a3[21],sel3[3],a4[13],clk);
mux_2x1 l420(a3[12],a3[20],sel3[3],a4[12],clk);
mux_2x1 l421(a3[11],a3[19],sel3[3],a4[11],clk);
mux_2x1 l422(a3[10],a3[18],sel3[3],a4[10],clk);
mux_2x1 l423(a3[9],a3[17],sel3[3],a4[9],clk);
mux_2x1 l424(a3[8],a3[16],sel3[3],a4[8],clk);
mux_2x1 l425(a3[7],a3[15],sel3[3],a4[7],clk);
mux_2x1 l426(a3[6],a3[14],sel3[3],a4[6],clk);
mux_2x1 l427(a3[5],a3[13],sel3[3],a4[5],clk);
mux_2x1 l428(a3[4],a3[12],sel3[3],a4[4],clk);
mux_2x1 l429(a3[3],a3[11],sel3[3],a4[3],clk);
mux_2x1 l430(a3[2],a3[10],sel3[3],a4[2],clk);
mux_2x1 l431(a3[1],a3[9],sel3[3],a4[1],clk);
mux_2x1 l432(a3[0],a3[8],sel3[3],a4[0],clk);




//level 5
dff r51(rotate3,clk,rotate4);

not_pipelined_mux_2x1 l5(0,a4[15],rotate4,L51);
not_pipelined_mux_2x1 l05(0,a4[14],rotate4,L52);
not_pipelined_mux_2x1 l005(0,a4[13],rotate4,L53);
not_pipelined_mux_2x1 l0005(0,a4[12],rotate4,L54);
not_pipelined_mux_2x1 l00005(0,a4[11],rotate4,L55);
not_pipelined_mux_2x1 l000005(0,a4[10],rotate4,L56);
not_pipelined_mux_2x1 l0000005(0,a4[9],rotate4,L57);
not_pipelined_mux_2x1 l000000005(0,a4[8],rotate4,L58);
not_pipelined_mux_2x1 l0000000005(0,a4[7],rotate4,L59);
not_pipelined_mux_2x1 l00000000005(0,a4[6],rotate4,L510);
not_pipelined_mux_2x1 l000000000005(0,a4[5],rotate4,L511);
not_pipelined_mux_2x1 l0000000000005(0,a4[4],rotate4,L512);
not_pipelined_mux_2x1 l00000000000005(0,a4[3],rotate4,L513);
not_pipelined_mux_2x1 l000000000000005(0,a4[2],rotate4,L514);
not_pipelined_mux_2x1 l0000000000000005(0,a4[1],rotate4,L515);
not_pipelined_mux_2x1 l00000000000000005(0,a4[0],rotate4,L516);

dff d51(sel[4],clk,sel1[4]);
dff d52(sel1[4],clk,sel2[4]);
dff d53(sel2[4],clk,sel3[4]);
dff d54(sel3[4],clk,sel4[4]);

mux_2x1 l51(a4[31],L51,sel4[4],b[31],clk);
mux_2x1 l52(a4[30],L52,sel4[4],b[30],clk);
mux_2x1 l53(a4[29],L53,sel4[4],b[29],clk);
mux_2x1 l54(a4[28],L54,sel4[4],b[28],clk);
mux_2x1 l55(a4[27],L55,sel4[4],b[27],clk);
mux_2x1 l56(a4[26],L56,sel4[4],b[26],clk);
mux_2x1 l57(a4[25],L57,sel4[4],b[25],clk);
mux_2x1 l58(a4[24],L58,sel4[4],b[24],clk);
mux_2x1 l59(a4[23],L59,sel4[4],b[23],clk);
mux_2x1 l510(a4[22],L510,sel4[4],b[22],clk);
mux_2x1 l511(a4[21],L511,sel4[4],b[21],clk);
mux_2x1 l512(a4[20],L512,sel4[4],b[20],clk);
mux_2x1 l513(a4[19],L513,sel4[4],b[19],clk);
mux_2x1 l514(a4[18],L514,sel4[4],b[18],clk);
mux_2x1 l515(a4[17],L515,sel4[4],b[17],clk);
mux_2x1 l516(a4[16],L516,sel4[4],b[16],clk);
mux_2x1 l517(a4[15],a4[31],sel4[4],b[15],clk);
mux_2x1 l518(a4[14],a4[30],sel4[4],b[14],clk);
mux_2x1 l519(a4[13],a4[29],sel4[4],b[13],clk);
mux_2x1 l520(a4[12],a4[28],sel4[4],b[12],clk);
mux_2x1 l521(a4[11],a4[27],sel4[4],b[11],clk);
mux_2x1 l522(a4[10],a4[26],sel4[4],b[10],clk);
mux_2x1 l523(a4[9],a4[25],sel4[4],b[9],clk);
mux_2x1 l524(a4[8],a4[24],sel4[4],b[8],clk);
mux_2x1 l525(a4[7],a4[23],sel4[4],b[7],clk);
mux_2x1 l526(a4[6],a4[22],sel4[4],b[6],clk);
mux_2x1 l527(a4[5],a4[21],sel4[4],b[5],clk);
mux_2x1 l528(a4[4],a4[20],sel4[4],b[4],clk);
mux_2x1 l529(a4[3],a4[19],sel4[4],b[3],clk);
mux_2x1 l530(a4[2],a4[18],sel4[4],b[2],clk);
mux_2x1 l531(a4[1],a4[17],sel4[4],b[1],clk);
mux_2x1 l532(a4[0],a4[16],sel4[4],b[0],clk);




endmodule // shifter




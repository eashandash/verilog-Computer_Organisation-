module cla(a,b,cin,s,cout);
input [7:0] a,b;
input cin;
output [7:0]s;
output cout;

wire [7:0]p,g,c;

assign p[7:0]=a[7:0]^b[7:0];
assign g[7:0]=a[7:0]&b[7:0];

assign c[0]=cin;
assign c[1]=g[0]|(p[0]&c[0]);
assign c[2]=g[1]|(p[1]&g[0])|(p[1]&p[0]&c[0]);
assign c[3]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&c[0]);
assign c[4]=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&c[0]);
assign c[5]=g[4]|(p[4]&g[3])|(p[4]&p[3]&g[2])|(p[4]&p[3]&p[2]&g[1])|(p[4]&p[3]&p[2]&p[1]&g[0])|(p[4]&p[3]&p[2]&p[1]&p[0]&c[0]);
assign c[6]=g[5]|(p[5]&g[4])|(p[5]&p[4]&g[3])|(p[5]&p[4]&p[3]&g[2])|(p[5]&p[4]&p[3]&p[2]&g[1])|(p[5]&p[4]&p[3]&p[2]&p[1]&g[0])|(p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&c[0]);
assign c[7]=g[6]|(p[6]&g[5])|(p[6]&p[5]&g[4])|(p[6]&p[5]&p[4]&g[3])|(p[6]&p[5]&p[4]&p[3]&g[2])|(p[6]&p[5]&p[4]&p[3]&p[2]&g[1])|(p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])|(p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&c[0]);
assign cout=g[7]|(p[7]&g[6])|(p[7]&p[6]&g[5])|(p[7]&p[6]&p[5]&g[4])|(p[7]&p[6]&p[5]&p[4]&g[3])|(p[7]&p[6]&p[5]&p[4]&p[3]&g[2])|(p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1])|(p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])|(p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&c[0]);
assign s[7:0]=p[7:0]^c[7:0];
endmodule





module rca4(a,b,c,s,cout);
input [3:0]a,b;
input c;
output [3:0]s;
output cout;
fuladder fa0(s[0],cout,a[0],b[0],c);
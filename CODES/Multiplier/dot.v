module dot(cout,g1,a1,cin);

input g1, a1, cin;
output cout;

assign cout= g1 | (a1 & cin);

endmodule

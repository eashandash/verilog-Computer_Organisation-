module circle(gout,aout,gl,al,gr,ar);

input gl,al,gr,ar;
output gout,aout;

assign gout= gl | ( al & gr);
assign aout= al & ar;

endmodule

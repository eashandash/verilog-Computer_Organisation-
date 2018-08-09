module mux_2x1(a,b,sel,out,clk);

input a,b,sel,clk;
output out;
wire OUT;

assign OUT= ~sel&a | sel&b;

dff d0(OUT,clk,out);

endmodule // 2x1_mux

module dff(d,clk,q);
input d, clk;
output reg q;

always @ (posedge clk)
begin
q <= d;
end
endmodule

module not_pipelined_mux_2x1(a,b,sel,out);

input a,b,sel;
output out;

assign out= ~sel&a | sel&b;


endmodule // 2x1_mux

module dff(q,clk,d);
input d,clk;
output q;
reg q;


initial 
begin
q=0;
end


always@(posedge clk)
q <=d;
endmodule

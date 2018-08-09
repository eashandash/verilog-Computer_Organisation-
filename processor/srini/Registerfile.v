module Register(rsrc1 , rsrc2 , rdst , in ,out1 , out2  , read  );

input [4:0] rsrc1 , rsrc2 , rdst ;
output [63:0] out1 , out2 ;
reg [63:0] out1 , out2 ;
input [63:0] in ;
input read , write ;
reg  [63:0 ]  REGISTER [0:31];

always @ (*) 
begin 

        if(read) 
		begin 
                
                out1 = REGISTER[rsrc1];
                out2 = REGISTER[rsrc2];
                
        end 
        
        else 
		begin 
        
                REGISTER [rdst] = in ;
               #1 $display($time,".      reg[%d] = %d\n",rdst,REGISTER[rdst]);
        end

end


endmodule

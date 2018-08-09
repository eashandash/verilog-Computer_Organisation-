
`include "memory.v"
`include "registers.v"
`include "alu.v"

module processor(clk,WData);



input clk;
reg [31:0] din,a,b;
reg [4:0]sbits;
wire [31:0]rd1,rd2;
wire [63:0]out;
reg [31:0]outr;
wire [31:0]dout;
reg rd,wr,rrd,wrr;

reg [4:0] rsrc1,rsrc2,rdst;
output [31:0]WData;
reg [31:0]WData;
integer f , d , e , w, o ; 

reg [3:0]pc;                         
reg [3:0]op,opcode;                  
reg [4:0]mar;                      
reg [16:0]ir;                        
reg [31:0]k=32'b0;
imemory memory1(mar,k,1,0,dout);     

registers reg1(rsrc1,rsrc2,rdst, WData, rrd, wrr, rd1, rd2);   

alu  alu1(out,cout,a,b,cin,sbits,opcode,clk);



initial begin 

pc = 4'd0;

f = 1 ; 
d = 0 ; 
e = 0 ; 
o=0;
w = 0 ;
rd = 1 ;
wr=0;
end 






always @(posedge clk) begin // instruction fetch
            
  #2 if(f) begin 
               
  mar = pc ;
  rd=1;
  rrd=0;
  wrr=0;
  ir = dout;  
  pc=pc+1; 
  f = 0;
  d = 1 ;
  w=0;
  e=0;
  $display($time," fetching IR =  %b\t,pc:=  %b",ir,pc);
  end 
end







always @(posedge clk) begin //decode
        
   #4 if (d) begin 
    rd = 1 ;
    op = ir [15:12];  
    rdst   = ir [3:0]; 
    rsrc1  = ir [7:4];  
    rsrc2  = ir [11:8]; 
    e  = 0;
    d = 0;
    w=0;
    o=1;     
    end
end 





always @(posedge clk) begin
        
    #6 if (o) begin         
    rd=0;
    assign a=rd2;
    assign b=rd1;        
    rrd=1;
    e=1;
    o=0;
    $display($time,"\noperands:   %b\t,  %b",a,b);            
    end
end






always @(posedge clk) begin //execute
        
    #8 if (e ) begin      
      assign outr=out;
      opcode = op;
      w = 1;
      e = 0; 
      $display($time,"\nresult: %b\n",outr);                             
      end
end 






always @(posedge clk) begin //write      
   #20 if (w) begin               
                
   wrr=1;
   WData = outr[31:0];
   rrd=0;
   w=0;            
   #2 f=1;     
   end
end 
endmodule

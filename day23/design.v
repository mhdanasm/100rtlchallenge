module d_ff(input d,clk,rst,output reg q);
always @(posedge clk or negedge rst)
if(~rst)
q<=0;
else
q<=d;
endmodule

module t_ff( input in,clk,rst,
             output out  );
    wire t1,t2;
    d_ff a1(t1,clk,rst, t2);
    xor a2(t1,in,t2);
    
    assign out=t2;
            
endmodule


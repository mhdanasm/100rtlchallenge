module d_ff( input clk,d,rst,
             output reg q
    );
    always@(posedge clk)begin
    if(rst) q<=0;
    else
    q<=d;
    end
endmodule

module pipo #(parameter Bitwidth=8)(input [Bitwidth-1:0] in,
                                     input clk,rst,output [Bitwidth-1:0] out);
 generate
genvar i;
for (i = 0; i < Bitwidth; i = i + 1) begin
d_ff a1(clk,in[i],rst,out[i]);
end
endgenerate        
                                      
endmodule

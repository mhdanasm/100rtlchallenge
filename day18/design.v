module d_ff( input clk,d,
             output reg q
    );
    always@(posedge clk)
    q<=d;
endmodule

module pipo #(parameter Bitwidth=8)(input [Bitwidth-1:0] in,
                                     input clk,output [Bitwidth-1:0] out);
 generate
genvar i;
for (i = 0; i < Bitwidth; i = i + 1) begin
d_ff a1(clk,in[i],out[i]);
end
endgenerate        
                                      
endmodule

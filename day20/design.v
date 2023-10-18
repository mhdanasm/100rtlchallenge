module d_ff #(parameter Bitwidth=8)(input [Bitwidth-1:0] in,
                                     input clk,rst,output reg [Bitwidth-1:0] out);
    always@(negedge clk)begin
    if(rst) out<=8'h34;
    else
    out<=in;
    end       
                                      
endmodule

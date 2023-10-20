module d_ff #(parameter Bitwidth=1)(input [Bitwidth-1:0] in,
                                     input clk,rst,output reg [Bitwidth-1:0] out);
    always@(posedge clk or posedge rst)begin
    if(rst) out<=8'h00;
    else
    out<=in;
    end       
                                      
endmodule

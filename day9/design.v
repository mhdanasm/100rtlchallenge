module mux #(parameter Bitwidth=100)( input [Bitwidth-1:0] a,b,input sel,
            output [Bitwidth-1:0] out);
assign out=sel?b:a;
endmodule

module mux( input [255:0] in,
            input [7:0] sel,
            output reg y
    );
    
    always @(*)
    y=in[sel];
    
endmodule



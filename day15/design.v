module fa( input a,b,c,
output sum,carr
 );
// assign {carr,sum}=a+b+c;
wire w1,w2,w3;
xor a1(sum,a,b,c);
and a2(w1,a,b),
a4 (w2,a,c),
a3 (w3,b,c);
or a5(carr,w1,w2,w3);


endmodule

module ripple_adder#(parameter Bitwidth=8)( input [Bitwidth-1:0] A,B,
                     output[Bitwidth-1:0] sum,
                     output overflow );
    wire [Bitwidth:0]c;                 
assign c[0]=0;

    generate
        genvar i;
        for (i = 0; i < Bitwidth; i = i + 1) begin
         fa a1(A[i],B[i],c[i],sum[i],c[i+1]);
        end
    endgenerate
    
 assign overflow =(A[7]&B[7]&~sum[7])|(~A[7]&~B[7]&sum[7]) ;
    
endmodule

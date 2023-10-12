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

module ripple_adder( input [2:0] A,B,
                     input cin,
                     output[2:0] sum,
                     output carry );
    wire c0,c1;                 
    fa a1(A[0],B[0],cin,sum[0],c0),
       a2(A[1],B[1],c0,sum[1],c1),
       a3(A[2],B[2],c1,sum[2],carry);
endmodule

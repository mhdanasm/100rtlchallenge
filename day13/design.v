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

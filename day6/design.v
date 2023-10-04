module A( input x,y, output z);
  assign z=(x^y)&x;
endmodule

module B( input x,y, output z);
  xnor a1(z,x,y); 
endmodule

module C(input x,
         input y,
         output z
    );
    wire z1,z2,z3,z4,z5,z6;
    A A1(x,y,z1);
    B B1(x,y,z2);
    A A2(x,y,z3);
    B B2(x,y,z4);
    or a(z5,z1,z2);
    and b(z6,z3,z4);
    xor c(z,z5,z6);
endmodule

module day1( input in1,
                   in2,
                   in3,
            output out);
wire w1;
  xnor a1(w1,in1,in2);
  xor a2(out,w1,in3);
endmodule


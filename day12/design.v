module ha(
input A,B,output sum,carry
    );
    xor a1(sum,A,B);
    and a2(carry,A,B);
endmodule



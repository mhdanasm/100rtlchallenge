module day15_tb;
reg  [99:0] a;
reg [99:0] b;
wire [99:0] s;
wire carry;
  ripple_adder uut (a,b,s,carry); //instantiation

initial begin
repeat(10) begin
a=$random;b=$random;
#10;
end
    $finish;
end
endmodule


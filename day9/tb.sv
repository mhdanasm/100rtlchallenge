module tb();
   reg [99:0] a;reg[99:0]b;reg sel;
   wire [99:0] out;
    
    mux a1(a,b,sel,out);
initial begin
repeat(10) begin
a=$random;
b=$random;
sel={$random}%2;
#50;
end
end
endmodule


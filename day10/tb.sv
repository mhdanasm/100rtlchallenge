module tb();
   reg [15:0] a,b,c,d,e,f,g,h,i;reg [3:0]sel;
   wire [15:0] out;
    
    mux a1(a,b,c,d,e,f,g,h,i,sel,out);
initial begin
repeat(10) begin
a=$random;
b=$random;
sel=$random;
c=$random;
d=$random;
e=$random;
f=$random;
g=$random;
h=$random;
i=$random;
#50;
end
end
endmodule

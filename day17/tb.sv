module tb( );
reg clk,d;
wire q;

d_ff a1(clk,d,q);

always #5 clk=~clk;

initial begin
clk=0;
repeat(10)begin
#3
d={$random}%2;
#7;
end
end
endmodule


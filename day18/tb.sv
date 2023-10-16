module tb( );
reg clk;reg [7:0] in;
wire[7:0] out;

pipo a1(in,clk,out);

always #5 clk=~clk;

initial begin
clk=0;
repeat(10)begin
#3
in=$random;
#7;
end
end
endmodule

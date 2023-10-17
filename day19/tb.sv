module tb( );
reg rst,clk;reg [7:0] in;
wire[7:0] out;

pipo a1(in,clk,rst,out);

always #5 clk=~clk;

initial begin
clk=0;rst=1;
repeat(2)begin
#3
in=$random;
#7;
end
rst=0;
repeat(5)begin
#3
in=$random;
#7;
end
rst=1;
repeat(2)begin
#3
in=$random;
#7;
end

end
endmodule

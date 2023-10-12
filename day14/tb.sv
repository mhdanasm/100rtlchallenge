module tb();

reg [2:0] a,b;
reg cin;
wire [2:0] sum;
wire carry;

ripple_adder a3(a,b,cin,sum,carry);

initial begin
repeat(10) begin
a=$random;
b=$random;
cin={$random}%2;
#50;
end
$finish;
end
endmodule


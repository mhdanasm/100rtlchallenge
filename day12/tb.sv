module tb();

reg a,b;
wire sum,carry;

ha a3(a,b,sum,carry);

initial begin
repeat(10) begin
{a,b}={$random}%4;
#50;
end
end
endmodule

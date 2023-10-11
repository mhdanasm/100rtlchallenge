module tb();

reg a,b,c;
wire sum,carry;

fa a3(a,b,c,sum,carry);

initial begin
repeat(10) begin
{a,b,c}={$random}%8;
#50;
end
$finish;
end
endmodule


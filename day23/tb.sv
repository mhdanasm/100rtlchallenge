module tb();

reg clk,in,rst;
wire out;

t_ff a1(in,clk,rst,out);

 always #5 clk=~clk;
 
 initial begin
 clk=0;in=0;rst=0;
 #3;
 rst=1;
  repeat(10) begin
  in={$random}%2;
  #5;
  end
  $finish;
  end

endmodule


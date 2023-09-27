module tb;
  reg in1,in2,in3;
  wire out;
  day1 a1(in1,in2,in3,out);
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
  initial begin
    in1=0;in2=0;in3=0;
    #5
    in1=1;in2=0;in3=0;
    #5
    in1=1;in2=1;in3=0;
    #5 in3=1;
    #5 $finish;
  end
  
  always @(in1,in2,in3) begin
    if(out==(~(in1^in2))^in3)
      $display("\n\n\nsucces\n\n\ntime=%0t\n",$time);
    else
      $display("\n\n\nfail\n\n\ntime=%0t\n",$time);
  end
  
  
endmodule

`timescale 1ns/1ns
module tb;
  reg x,y;
  wire z;
  
  B a2(x,y,z);
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
  initial begin
    x=0;y=0;
    #200 x=1;
    #200 x=0;y=1;
    #200 x=1;
    #200
    $finish;
  end
  
endmodule

module tb;
  reg p1a,p1b,p1c,p1d,p2a,p2b,p2c,p2d;
  wire p1y,p2y;
  integer c1=0,c2=0;
  integer err_count=0;
  day2 a1(p1a,p1b,p1c,p1d,p2a,p2b,p2c,p2d,p1y,p2y);
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
  initial begin
    repeat (5)begin
      #5 p1a={$random} % 2;p1b={$random} % 2;p1c={$random} % 2;
      p1d={$random} % 2;p2a={$random} % 2;p2b={$random} % 2;
      p2c={$random} % 2;p2d={$random} % 2;
    end
    $display("\nerror count=%0d time=%0t\n",err_count,$time);
 $finish;
  end
  
  always @(p1a,p1b,p1c,p1d) begin
    c1=p1a+p1b+p1c+p1d;
    c1=c1%2;
    if(p1y==!c1)
      $display("\nsucces1 time=%0t\n",$time);
    else begin
      $display("\nfail1 time=%0t\n",$time);
      err_count++;
    end
  end
  
    always @(p2a,p2b,p2c,p2d) begin
    c2=p2a+p2b+p2c+p2d;
    c2=c2%2;
    if(p1y==!c1)
      $display("\nsucces2 time=%0t\n",$time);
    else begin
      $display("\nfail2 time=%0t\n",$time);
      err_count++;
    end
  end
  
endmodule

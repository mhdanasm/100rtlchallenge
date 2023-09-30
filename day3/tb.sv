module tb;
  reg x1,x2,x3;
  wire f;
  reg [2:0] c1;
  integer err_count=0;
  day3 a1(x3,x2,x1,f);
  
    covergroup cg @(x3,x2,x1);
    coverpoint {x3,x2,x1};
    endgroup

  cg cg_ins;
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
  initial begin
    cg_ins=new();
    repeat (20)begin
      #2 x3={$random} % 2;x2={$random} % 2;x1={$random} % 2;
    end
    $display("\nerror count=%0d time=%0t\n",err_count,$time);
    $display("\n coverage=%0.2f %%\n",cg_ins.get_inst_coverage());
 $finish;
  end
  
  always @(x3,x2,x1) begin
    c1={x3,x2,x1};
    c1=(c1==2)|(c1==3)|(c1==5)|(c1==7);
    if(f==c1)
      $display("\nsucces1 time=%0t\n",$time);
    else begin
      $display("\nfail1 time=%0t\n",$time);
      err_count++;
    end
  end
  

  
endmodule

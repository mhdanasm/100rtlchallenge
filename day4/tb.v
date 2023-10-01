module tb;
  reg x,y;
  wire z;
  reg [1:0] c1;
  integer err_count=0;
  A a1(x,y,z);
  
  covergroup cg @(x,y);
    coverpoint {x,y};
    endgroup

  cg cg_ins;
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
  initial begin
    cg_ins=new();
    repeat (20)begin
      #2 x={$random} % 2;y={$random} % 2;
    end
    $display("\nerror count=%0d time=%0t\n",err_count,$time);
    $display("\n coverage=%0.2f %%\n",cg_ins.get_inst_coverage());
 $finish;
  end
  
  always @(x,y) begin
    c1={x,y};
    c1=(c1==2);
    if(z==c1[0])
      $display("\nsucces1 time=%0t\n",$time);
    else begin
      $display("\nfail1 time=%0t\n",$time);
      err_count++;
    end
  end
  

  
endmodule

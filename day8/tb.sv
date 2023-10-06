module tb;
  reg [2:0] people;
  wire [1:0] pop_count;
  reg [3:0] i;
  fa a2(people,pop_count);
  

  
  initial begin
    for( i=0;i<=7;i=i+1) begin
      people=i;#50;
    end
    $finish;
  end
  

endmodule

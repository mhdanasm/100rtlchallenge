module tb;
  reg ring,vibrate_mode;
  wire ringer,motor;

  ring_ctrl a2(ring,vibrate_mode,ringer,motor);
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
  initial begin
    ring=0;vibrate_mode=0;
    #200 ring=1;
    #200 ring=0;vibrate_mode=1;
    #200 ring=1;
    #200
    $finish;
  end
  
endmodule

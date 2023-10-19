module tb(   );
 reg d,en;
 wire q;
 
 d_latch a1(d,en,q);
 
 always #5 en=~en;
 
 initial begin
 d=0;en=0;
 #7 d=1;
 #5 d=0;
 #8 d=1;
 end
endmodule

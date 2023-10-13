module day15_tb;
reg  [7:0] a;
reg [7:0] b;
wire [7:0] s;
wire overflow;
  ripple_adder uut (a,b,s,overflow); //instantiation

initial begin
    a = 8'd51; b = 8'd65;    //both positive but sum less than 127
     #10                     //over flow not occured
    a = 8'd124;  b = 8'd12;  //both positive but sum greater than 127
      #10                   //overflow occured
    
    a = -8'd46;  b = -8'd99;  //both negative but sum below -127
      #10                    //overflow occured 
    
    a = -8'd60;  b = 8'd40;   //one positive and one negative but sum within -127 to +127 
     #10                     //overflow not occured
    $finish;
end
endmodule

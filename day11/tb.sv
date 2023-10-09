module tb();
   reg [255:0] in;reg [7:0]sel;
   wire out;
   integer i=0; 
    mux a1(in,sel,out);
initial begin
repeat(10) begin
in=i+1;
sel=i;
#50;
sel=i+1;
i=i+1;
end
end
endmodule

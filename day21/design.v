module d_latch( input d,en,
                output reg q   
    );
    
    always @(*)
    if(en)
    q<=d;
endmodule

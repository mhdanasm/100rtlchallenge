module fa( input [2:0] people,
           output [1:0] pop_count
    );
    wire t1,t2,t3;
    xor a1(t1,people[0],people[1]),
        a2(pop_count[0],t1,people[2]);
     and a3(t2,t1,people[2]),
         a4(t3,people[0],people[1]);
     or a5(pop_count[1],t2,t3);        
endmodule

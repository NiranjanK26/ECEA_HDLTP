module Boolean (x,a,b,c);
    input  a,b,c;
    output x;

    assign x= a&b | a&c | a&b&c ;

endmodule 
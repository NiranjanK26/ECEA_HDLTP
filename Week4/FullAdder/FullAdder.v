module Fulladder (S,Cy,a,b,c);
    input a,b,c;
    output S,Cy;

    assign S = a^b^c;
    assign Cy = (a & b) | (b & c) | (c & a);
    
endmodule
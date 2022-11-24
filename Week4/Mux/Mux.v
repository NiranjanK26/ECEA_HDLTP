module Mux (S,D0,D1,Y);
    input S , D0 , D1;
    output Y;
    wire w1;

    not not1(w1,S);
    assign Y = (S & D1) | (w1 & D0);
    
endmodule
module Mux_tb ;

    reg S,D0,D1;
    wire Y;
    integer i;
    
    
        

    Mux uut(S,D0,D1,Y);
    initial begin

    $dumpfile("Mux_tb.vcd");
    $dumpvars(0,Mux_tb);

    $monitor($time , "S=%b D0=%b D1=%b Y=%b" , S,D0,D1,Y);

    for (i=0 ; i<8 ; i=i+1) begin
        #10 {S,D0,D1} = i;
    end
    #100 $finish;
    end
    
endmodule
`include "Fulladder.v"

module Fulladder_tb;

reg a,b;
reg c;
wire S,Cy;
integer i;

Fulladder uut(S,Cy,a,b,c);

initial begin
    $dumpfile("Fulladder_tb.vcd");
    $dumpvars(0,Fulladder_tb);

    $monitor($time , "a=%1b b=%1b c=%1b S=%1b Cy=%1b",a,b,c,S,Cy);
    for (i=0 ; i<8;i=i+1) begin
        #10{a,b,c} = i;
    end
    #100 $finish;
end
endmodule
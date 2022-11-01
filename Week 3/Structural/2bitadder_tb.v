`include "2bitadder.v"

module bit2adder_tb;

reg [1:0]a,b;
reg cin;
integer i;
wire [1:0] sum;
wire  cout;

bit2adder uut(a,b,sum,cout,cin);

initial begin
    $dumpfile("bit2adder_tb.vcd");
    $dumpvars(0,bit2adder_tb);
    
    $monitor($time , "a = %2b b = %2b cin = %1b sum = %2b cout=%1b",a,b,cin,sum,cout);
    for(i=0 ; i<32 ; i=i+1) begin
        #10 {a,b,cin} = i;
    end
    #100 $finish;
end

endmodule





    
        



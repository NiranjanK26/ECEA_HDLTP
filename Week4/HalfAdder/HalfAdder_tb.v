module HalfAdder_tb;
    reg a,b,c;
    wire sum,carry;
    integer i;

    HalfAdder uut(a,b,sum,carry);

    initial begin

    $dumpfile("HalfAdder.vcd");
    $dumpvars(0,HalfAdder_tb);

    $monitor($time , "a=%b b=%b sum=%b carry=%b",a,b,sum,carry);

    for (i=0 ; i<4 ; i=i+1)
    begin
        #10 {a,b} = i;
    end
    #1000 $finish;

    end

endmodule

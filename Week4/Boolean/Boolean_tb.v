module Boolean_tb;

    reg a,b,c;
    wire x;
    integer i;

    Boolean uut(x,a,b,c);

    initial  begin

    $dumpfile("Boolean_tb.vcd");
    $dumpvars(0,Boolean_tb);

    $monitor ($time , "a = %b b=%b c=%b x=%b",a,b,c,x);

    for (i=0 ; i<8 ;i=i+1) begin
        #10 {a,b,c} = i;
    end
    #100 $finish;

    end

endmodule

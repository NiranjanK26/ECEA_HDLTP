
module decoder_tb;

    reg [1:0]in;
    wire [3:0] out;
    integer i;

    decoder uut(in,out);

    initial begin

        $dumpfile("decoder.vcd");
        $dumpvars(0,decoder_tb);

        $monitor($time, "in=%2b  out=%4b",in,out);

        for (i=0;i<4;i=i+1)
        begin
            #10 {in} = i;
        end
        #500 $finish;
    end
    
endmodule
// Code your testbench here
// or browse Examples

module bitadder_tb;

reg [1:0]a,b;
reg cin;
wire [1:0] sum;
wire cout;

  bitadder uut(a,b,cin,cout,sum);

initial begin
    $dumpfile("bitadder_tb.vcd");
    $dumpvars(0, bitadder_tb);

    a = 01;
    b=  11;
    cin =0;
    #20



  	$display(sum);
  	$display(cout);
    $display("Complete");


end
endmodule
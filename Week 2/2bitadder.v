// Code your design here
module bitadder ( a,b,cin,cout,sum);
    input [1:0] a,b;
    input cin;
    output cout;
    output [1:0] sum;
    assign {cout,sum} = a + b + cin;

    
endmodule
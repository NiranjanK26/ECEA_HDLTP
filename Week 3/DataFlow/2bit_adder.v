module bit2adder(a,b,sum,cout,cin);
    input  [1:0]a,b; 
    input  cin;
    output [1:0]sum;
    output cout;

    assign {cout,sum} = a+b+cin ;


endmodule
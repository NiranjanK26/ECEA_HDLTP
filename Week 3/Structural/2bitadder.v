module bit2adder(a,b,sum,cout,cin);
    input  [1:0]a,b; 
    input  cin;
    output [1:0]sum;
    output cout;
    wire  w,w1,w2,w3,w4,w5,w6,w7,w8,w9;
// sum's first digit
    xor xor1(w,a[0],b[0]);
    xor xor2(sum[0],w,cin);

// carry of first 1 bit adder
    and and1(w1,a[0],b[0]);
    and and2(w2,b[0],cin);
    and and3(w3,a[0],cin);

    or or1(w4,w1,w2);
    or or2(w5,w4,w3);

// sum of 2nd digit
    xor xor3(w6,a[1],b[1]);
    xor xor4(sum[1],w6,w5);
// cout 
    and and4(w7,a[1],b[1]);
    and and5(w8,b[1],w5);
    and and6(w9,a[1],w5);

    or or3(w10,w7,w8);
    or or4(cout,w10,w9);


endmodule
module HalfAdder (a,b,sum,carry);
    input a,b,c;
    output sum,carry ;

    assign sum = a ^ b;
    assign carry = a & b; 
    
endmodule
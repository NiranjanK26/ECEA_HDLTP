module decoder (in,out);
    input [1:0]in;
    output reg [3:0]out;

    always @(*) begin
        if (in == 0)
        out = 4'b0001;
    else if (in == 1)
        out = 4'b0010;
    else if (in == 2)
        out = 4'b0100;
    else if (in ==3)
        out= 4'b1000;
    
    end
    
    
    
endmodule
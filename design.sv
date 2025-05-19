module magnitude_comparator (input [1:0] a,input [1:0] b, output reg lower, output reg greater,output reg equal );
always @ (a or b) begin
    lower = 0;
    greater = 0;
    equal = 0;
    if (a < b) begin
        lower = 1;
    end else if (a > b) begin
        greater = 1;
    end else begin
        equal = 1;
    end
end
endmodule

module tb_magnitude_comparator;
    reg [1:0] a, b; 
    wire lower, greater, equal; 
    magnitude_comparator uut ( .a(a), .b(b), .lower(lower), .greater(greater), .equal(equal));
    initial begin
        $dumpfile("dumpfile.vcd");
    	$dumpvars(1);
        a = 2'b00; b = 2'b00;
        #100;
        #100; a = 2'b10; b = 2'b01; // a > b
        #100; a = 2'b01; b = 2'b10; // a < b
        #100; a = 2'b11; b = 2'b11; // a == b
        #100;
        $finish;
    end
    initial begin
        #100;
        $monitor("a = %b, b = %b, lower = %b, greater = %b, equal = %b", a, b, lower, greater, equal);
    end
endmodule

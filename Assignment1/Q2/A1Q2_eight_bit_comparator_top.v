module eight_bit_comparator_top;
    reg [7:0] A;
    reg [7:0] B;

    wire less_out, equal_out, greater_out;

    eight_bit_comparator Comparator(A, B, less_out, equal_out, greater_out);

    always @(A or B or less_out or equal_out or greater_out) begin
        if(equal_out == 1'b1) begin
            $display("At time = %d, %d is equal to %d", $time, A, B);
        end
        else if(less_out == 1'b1) begin
            $display("At time = %d, %d is less than %d", $time, A, B);
        end
        else begin
            $display("At time = %d, %d is greater than %d", $time, A, B);
        end
    end

    initial begin
        A = 12; B = 13;
        #2
        A = 24; B = 11;
        #2
        A = 45; B = 1;
        #2
        A = 67; B = 28;
        #2
        A = 29; B = 88;
        #2
        A = 24; B = 24;
        #2
        A = 77; B = 11;
        #2
        A = 24; B = 90;
        #2
        A = 33; B = 67;
        #2
        A = 24; B = 9;
    end
endmodule
`include "A1Q2_eight_bit_comparator.v"
module eight_bit_comparator_top;
    reg [7:0] A;
    reg [7:0] B;

    wire less_out, equal_out, greater_out;

    eight_bit_comparator Comparator(A, B, less_out, equal_out, greater_out); //instantiating eight bit comparator here.

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
        #5
        A = 24; B = 11;
        #5
        A = 45; B = 1;
        #5
        A = 67; B = 28;
        #5
        A = 29; B = 88;
        #5
        A = 24; B = 24;
        #5
        A = 77; B = 11;
        #5
        A = 24; B = 90;
        #5
        A = 33; B = 67;
        #5
        A = 24; B = 9;
        #5
        A = 125; B = 29;
        #5
        A = 71; B = 49;
        #5
        A = 55; B = 30;
        #5
        A = 86; B = 24;
        #5
        A = 62; B = 62;
    end
endmodule
`include "A1Q2_eight_bit_comparator.v"
module eight_bit_comparator_testbench;
    reg [7:0] A;
    reg [7:0] B;

    wire less_out, equal_out, greater_out;

    eight_bit_comparator Comparator(A, B, less_out, equal_out, greater_out); //instantiating eight bit comparator here.

    initial begin
        $monitor("At time = %t, inputs are %d and %d and less_out, equal_out and greater_out are %d, %d and %d respectively.",$time, A, B, less_out, equal_out,greater_out);
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
        $finish;
    end
endmodule
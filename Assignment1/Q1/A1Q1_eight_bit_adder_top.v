`include "A1Q1_eight_bit_adder.v"
module eight_bit_adder_top;
    reg [7:0] A;
    reg [7:0] B;
    reg Cin;

    wire [7:0] Sum;
    wire Carry;
    eight_bit_adder Adder(A, B, Cin, Sum, Carry); //instantiating eight bit adder here

    always @(A or B or Cin or Sum or Carry) begin
        $display("At time = %d, the inputs are = %d and %d and the carry_input is %d and the sum = %d, carry_out = %d",$time, A, B, Cin, Sum, Carry);
    end
/*
    initial begin
        #80
        $finish;
    end
*/
    initial begin
        A = 0; B = 1; Cin = 0;
        #5
        A = 2; B = 4; Cin = 0;
        #5
        A = 3; B = 5; Cin = 1;
        #5
        A = 30; B = 51; Cin = 1;
        #5
        A = 13; B = 25; Cin = 1;
        #5
        A = 45; B = 5; Cin = 0;
        #5
        A = 56; B = 12; Cin = 1;
        #5
        A = 17; B = 24; Cin = 0;
        #5
        A = 12; B = 72; Cin = 1;
        #5
        A = 111; B = 25; Cin = 0;
        #5
        A = 56; B = 34; Cin = 0;
        #5
        A = 101; B = 26; Cin = 1;
        #5
        A = 4; B = 123; Cin = 1;
        #5
        A = 39; B = 92; Cin = 0;
        #5
        A = 28; B = 74; Cin = 0;
    end
endmodule

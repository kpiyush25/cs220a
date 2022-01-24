`include "A1Q3_2_to_4_decoder.v"
module DECODER_3x8 (
    OUT,IN
);
    input [2 : 0] IN;
    input EN;
    output [7 : 0] OUT;
    wire A2N;

    // The parallel inputs IN1 & IN0 are applied to each 2 to 4 decoder. 
    assign A2N = ~IN[2];
    // The input, IN2 is directly connected to Enable, EN of upper 2 to 4 decoder in order to get the outputs, OUT7 to OUT4. 
    // These are the higher four min terms.
    DECODER_2x4 DECODER1 (OUT[7:4],IN[1:0],IN[2]);
    // The complement of input IN2 is connected to Enable, EN of lower 2 to 4 decoder in order to get the outputs, OUT3 to OUT0. 
    // These are the lower four min terms. 
    DECODER_2x4 DECODER2 (OUT[3:0],IN[1:0],A2N);
endmodule
`include "A1Q3_2_to_4_decoder.v"
module DECODER_3x8 (
    OUT,IN
);
    input [2 : 0] IN;
    input EN;
    output [7 : 0] OUT;
    wire A2N;

    assign A2N = ~IN[2];
    DECODER_2x4 DECODER1 (OUT[7:4],IN[1:0],IN[2]);
    DECODER_2x4 DECODER2 (OUT[3:0],IN[1:0],A2N);
endmodule
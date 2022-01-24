module DECODER_2x4 (
    OUT, IN, EN
);
    input [1 : 0] IN;
    input EN;
    output [3 : 0] OUT;
    assign OUT[0] = (~IN[0]) & (~IN[1]) & EN;
    assign OUT[1] = IN[0] & (~ IN[1]) & EN;
    assign OUT[2] = (~IN[0]) & IN[1] & EN; 
    assign OUT[3] = IN[0] & IN[1] & EN;
endmodule

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
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
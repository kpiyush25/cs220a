module DECODER_2x4 (
    OUT, IN, EN
);
    input [1 : 0] IN;
    // Enable must be 1 for 2x4 Decoder to give correct values.
    input EN;
    output [3 : 0] OUT;

    // The following assignment has been derived from K-Map of 2x4 decoder. Enabled has been added to ensure that decoder can be controlled externally.
    //Enable    Inputs      Outputs
    // EN	    I1	I0	O3	O2	O1	O0
    // 0	    x	x	0	0	0	0
    // 1	    0	0	0	0	0	1
    // 1	    0	1	0	0	1	0
    // 1	    1	0	0	1	0	0
    // 1	    1	1	1	0	0	0
    assign OUT[0] = (~IN[0]) & (~IN[1]) & EN;
    assign OUT[1] = IN[0] & (~ IN[1]) & EN;
    assign OUT[2] = (~IN[0]) & IN[1] & EN; 
    assign OUT[3] = IN[0] & IN[1] & EN;
endmodule
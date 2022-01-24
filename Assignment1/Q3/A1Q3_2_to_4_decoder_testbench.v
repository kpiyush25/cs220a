`include "A1Q3_2_to_4_decoder.v"

module TESTBENCH ();
    reg [1 : 0] IN;
    reg EN;
    wire[3 : 0] OUT;
    DECODER_2x4 DEC(OUT, IN, EN);
    initial 
    begin
        EN = 1'b1;       
        IN = 2'b00;
        #5;
        IN = 2'b01;
        #5;
        IN = 2'b10;
        #5;
        IN = 2'b11;
        #5;
        $finish;
    end
    initial 
    begin
        $monitor("[%2d] INPUT=%2b OUTPUT=%4b ENABLE=%1b",$time,IN,OUT,EN);
    end

endmodule
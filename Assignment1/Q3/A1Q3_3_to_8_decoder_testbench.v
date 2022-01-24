`include "A1Q3_3_to_8_decoder.v"

module TESTBENCH ();
    reg [2 : 0] IN;
    wire[7 : 0] OUT;
    DECODER_3x8 DEC(OUT, IN);

    initial 
    begin
        IN = 3'b000;
        #5;
        IN = 3'b001;
        #5;
        IN = 3'b010;
        #5;
        IN = 3'b011;
        #5;
        IN = 3'b100;
        #5;
        IN = 3'b101;
        #5;
        IN = 3'b110;
        #5;
        IN = 3'b111;
        #5;
        $finish;
    end

    initial 
    begin
        $monitor("[%2d] INPUT=%3b OUTPUT=%8b", $time, IN,OUT);
    end

endmodule

module PRIORITY_ENCODER_8x3(OUT, IN);

output [2 : 0] OUT;
input [7 : 0] IN;

assign OUT = (IN[0] == 1'b1) ? 3'b000 : 
(IN[1] == 1'b1) ? 3'b001 : 
(IN[2] == 1'b1) ? 3'b010 : 
(IN[3] == 1'b1) ? 3'b011 : 
(IN[4] == 1'b1) ? 3'b100 : 
(IN[5] == 1'b1) ? 3'b101 : 
(IN[6] == 1'b1) ? 3'b110 : 
(IN[7] == 1'b1) ? 3'b111 : 3'bxxx;

endmodule
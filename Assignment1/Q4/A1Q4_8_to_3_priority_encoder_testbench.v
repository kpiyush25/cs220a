`include "8_to_3_priority_encoder.v"

module TESTBENCH ();
	reg [7 : 0] IN;
	wire[2 : 0] OUT;
	PRIORITY_ENCODER_8x3 ENC(OUT, IN);
	initial 
	begin
		IN = 8'b11001100;
		#5;
		IN = 8'b01100110;
		#5;
		IN = 8'b00110011;
		#5;
		IN = 8'b00010010;
		#5;
		IN = 8'b00001001;
		#5;
		IN = 8'b00000100;
		#5;
		IN = 8'b00000011;
		#5;
		IN = 8'b00000001;
		#5;
		IN = 8'b00000000;
		#5;
		$finish;
	end
	initial 
	begin
    	$monitor("[%2d] INPUT=%8b OUTPUT=%d", $time, IN,OUT);
	end

endmodule
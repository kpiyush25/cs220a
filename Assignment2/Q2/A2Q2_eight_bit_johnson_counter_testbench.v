`include "A2Q2_eight_bit_johnson_counter.v"
module A2Q2_eight_bit_johnson_counter_testbench;
    reg clk;
    reg reset;
    wire [7:0] out;

    A2Q2_eight_bit_johnson_counter uut(clk, reset, out); // uut or unit under test
    always #1 clk = ~clk; // toggling the clock after every 1 time unit, hence time period is 2 time units.
    always @(posedge clk) begin
        reset <= 1;
    end
    
    initial begin
        clk <= 0;
        reset <= 0; // correspond to output being 0 as defined in the A2Q2_eight_bit_johnson_counter.v file.

        $monitor("At time = %t, out is %b",$time, out);
        #33
        $finish;
    end
endmodule
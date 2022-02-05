`include "A2Q2_eight_bit_johnson_counter.v"
module A2Q2_eight_bit_johnson_counter_testbench;
    reg clk;
    reg reset;
    wire [7:0] out;

    A2Q2_eight_bit_johnson_counter uut(clk, reset, out); // uut or unit under test
    always #1 clk = ~clk; // toggling the clock after every 1 time unit
    
    initial begin
        clk <= 0;
        reset <=0;

        $monitor("At time = %t, out is %b",$time, out);
        repeat(1) @(posedge clk);
        reset <= 1;
        repeat(16) @(posedge clk);
        $finish;
    end
endmodule
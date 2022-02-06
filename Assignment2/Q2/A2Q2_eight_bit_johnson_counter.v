module A2Q2_eight_bit_johnson_counter(clk, reset, out);
    input clk;
    input reset;
    output [7:0] out;
    reg [7:0] out;

    integer i;
    always @(posedge clk) begin
        if(reset) begin
            out[7] <= ~(out[0]); // complement of output of last flip-flop being fed as input to 1st flip-flop
            for(i = 0; i < 7; i = i + 1) begin
                out[i] <= out[i + 1];
            end
        end
        else begin
            out <= 0; 
            // We can choose any value of "out" here from which the output starts. We have chosen it to be 0 here.
        end
    end
endmodule
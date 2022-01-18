module eight_bit_comparator(x, y, less_out, equal_out, greater_out);
    input [7:0] x;
    input [7:0] y;

    output less_out, equal_out, greater_out;
    wire less_out, equal_out, greater_out;

    wire [6:0] intermediate_l;
    wire [6:0] intermediate_e;
    wire [6:0] intermediate_g;

    one_bit_comparator FA0(x[7], y[7], 1'b0, 1'b1, 1'b0, intermediate_l[0], intermediate_e[0], intermediate_g[0]);
    one_bit_comparator FA1(x[6], y[6], intermediate_l[0], intermediate_e[0], intermediate_g[0], intermediate_l[1], intermediate_e[1], intermediate_g[1]);
    one_bit_comparator FA2(x[5], y[5], intermediate_l[1], intermediate_e[1], intermediate_g[1], intermediate_l[2], intermediate_e[2], intermediate_g[2]);
    one_bit_comparator FA3(x[4], y[4], intermediate_l[2], intermediate_e[2], intermediate_g[2], intermediate_l[3], intermediate_e[3], intermediate_g[3]);
    one_bit_comparator FA4(x[3], y[3], intermediate_l[3], intermediate_e[3], intermediate_g[3], intermediate_l[4], intermediate_e[4], intermediate_g[4]);
    one_bit_comparator FA5(x[2], y[2], intermediate_l[4], intermediate_e[4], intermediate_g[4], intermediate_l[5], intermediate_e[5], intermediate_g[5]);
    one_bit_comparator FA6(x[1], y[1], intermediate_l[5], intermediate_e[5], intermediate_g[5], intermediate_l[6], intermediate_e[6], intermediate_g[6]);
    one_bit_comparator FA7(x[0], y[0], intermediate_l[6], intermediate_e[6], intermediate_g[6], less_out, equal_out, greater_out);
    
    //Here, I was doing one mistake earlier(putting x[0],y[0] in FA0 and so on but it was wrong.. So what is there in this file is correct finally.)
endmodule
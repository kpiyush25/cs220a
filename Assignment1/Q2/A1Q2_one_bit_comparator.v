module one_bit_comparator(x, y, less_in, equal_in, greater_in, less_out, equal_out, greater_out);
    input x, y, less_in, equal_in, greater_in;
    output less_out, equal_out, greater_out;
    wire less_out, equal_out, greater_out;

    assign greater_out = greater_in | (equal_in & x & ~y);
    assign equal_out = equal_in & ~(x^y);
    assign less_out = less_in | (equal_in & ~x & y);
endmodule
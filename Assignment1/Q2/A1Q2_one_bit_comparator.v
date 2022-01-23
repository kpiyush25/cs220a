module one_bit_comparator(x, y, less_in, equal_in, greater_in, less_out, equal_out, greater_out);
    /*
        less_in, equal_in and greater_in are the inputs for less than, equal to and greater than ports respectively.
        Similarly less_out, equal_out and greater_out are the outputs for less than, equal to and greater than ports respectively.
    */
    input x, y, less_in, equal_in, greater_in;
    output less_out, equal_out, greater_out;
    wire less_out, equal_out, greater_out;

    /*
        greater_out will be 1 when either greater_in is 1 or when equal_in is 1, x is 1 and y is 0.
        equal_out will be 1 when equal_in is 1 and both the x and y are same(either both 0 or both 1).
        less_out will be 1 when either less_in is 1 or when equal_in is 1, x is 0 and y is 1.
    */
    assign greater_out = greater_in | (equal_in & x & ~y);
    assign equal_out = equal_in & ~(x^y);
    assign less_out = less_in | (equal_in & ~x & y);
endmodule
module one_bit_full_adder(a, b, cin, sum, cout);
    input a, b, cin; // here cin is the variable for carry input
    output cout, sum; // here cout is the variable for carry output
    wire cout, sum;

    /*  The sum comes out to be "xor" of all three inputs while the cout comes out to be "or" of the 
        intermediate outputs that we get by doing "and" of the inputs taken two at a time.
    */
    assign sum = a^b^cin;
    assign cout = ((a&b) | (b&cin) | (cin&a));

endmodule

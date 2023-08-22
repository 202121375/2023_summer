module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

wire carry0, carry1, carry2;

half_adder ha0(
    .a(a),
    .b(b),
    .sum(carry0),
    .cout(carry1)
);

half_adder ha1(
    .a(carry0),
    .b(cin),
    .sum(sum),
    .cout(carry2)
);

assign cout = carry1 | carry2;

endmodule
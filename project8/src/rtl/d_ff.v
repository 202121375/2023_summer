module d_ff(
    clk,
    d,
    q,
    qb
);

    input clk;
    input d;
    input q;
    output qb;

    assign qb = (d==1'b0 && q==1'b0)? 1'b0:
                (d==1'b0 && q==1'b1)? 1'b0:
                (d==1'b1 && q==1'b0)? 1'b1:
                                      1'b1;
endmodule
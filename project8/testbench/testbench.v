`timescale 1ns/100ps
`define T_CLK 10

module testbench;
    reg clk;
    reg d;
    reg q;
    wire qb;

    d_ff uut_d_ff(
        .clk(clk),
        .d(d),
        .q(q),
        .qb(qb)
        );

    initial begin
        clk = 1'b1;
    end

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        d=1'b0;
        q=1'b0;
        #5

        d=1'b1;
        q=1'b0;
        #5

        d=1'b1;
        q=1'b1;
        #5

        d=1'b0;
        q=1'b1;
        #5

        d=1'b0;
        q=1'b0;
        #5

        d=1'b1;
        q=1'b0;
        #5

        $stop;
    end
endmodule
`timescale 1ns/100ps
`define T_CLK 10

module testbench;

    reg clk;
    reg s;
    reg r;
    wire q;
    wire qb;

    sr_ff uut_sr_ff(
        .clk(clk),
        .s(s),
        .r(r),
        .q(q),
        .qb(qb)
    );

    initial begin
        clk = 1'b1;
    end

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        s=1'b0;
        r=1'b0;
        #5

        s=1'b0;
        r=1'b1;
        #5

        s=1'b1;
        r=1'b0;
        #5

        s=1'b1;
        r=1'b1;
        #5

        s=1'b0;
        r=1'b0;
        #5

        s=1'b1;
        r=1'b1;
        #5

        s=1'b1;
        r=1'b0;
        #5

        s=1'b0;
        r=1'b1;
        #5

        $stop;
    end

endmodule
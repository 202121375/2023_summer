module sr_ff(
    clk,
    s,
    r,
    q,
    qb
);

    input clk;
    input s;
    input r;
    output q;
    output qb;

    reg q;
    reg qb;

    always @(*) begin

        if(s == 1'b0 && r == 1'b0)begin
            q = q;
            qb = qb;
        end

        if(s == 1'b1 && r == 1'b0)begin
            q = 1'b0;
            qb = 1'b1;
        end

        if(s == 1'b0 && r == 1'b1)begin
            q = 1'b1;
            qb = 1'b0;
        end

        if(s == 1'b1 && r == 1'b1)begin
            q = 1'b0;
            qb = 1'b0;
        end
    end
endmodule
module demux_gate(
    in,
    sel0,
    sel1,
    out0,
    out1,
    out2,
    out3
);
    input in;
    input sel0;
    input sel1;
    output out0;
    output out1;
    output out2;
    output out3;

    reg out0;
    reg out1;
    reg out2;
    reg out3;

    always @(*) begin
        if(sel0==1'b0 && sel1==1'b0)begin
            out0=in;
            out1=1'b0;
            out2=1'b0;
            out3=1'b0;
        end
        if(sel0==1'b1 && sel1==1'b0)begin
            out0=1'b0;
            out1=in;
            out2=1'b0;
            out3=1'b0;
        end
        else if(sel0==1'b0 && sel1==1'b1)begin
            out0=1'b0;
            out1=1'b0;
            out2=in;
            out3=1'b0;
        end
        else if(sel0==1'b1 && sel1==1'b1)begin
            out0=1'b0;
            out1=1'b0;
            out2=1'b0;
            out3=in;
        end
        else if(sel0==1'b0 && sel1==1'b0)begin
            out0=in;
            out1=1'b0;
            out2=1'b0;
            out3=1'b0;
        end
        else begin
            out0=1'b0;
            out1=1'b0;
            out2=1'b0;
            out3=1'b0;
        end
    end
endmodule
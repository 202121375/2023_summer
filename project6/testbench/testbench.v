module testbench;
    reg in;
    reg sel0;
    reg sel1;
    wire out0;
    wire out1;
    wire out2;
    wire out3;

    demux_gate utt_demux_gate(
        .in(in),
        .sel0(sel0),
        .sel1(sel1),
        .out0(out0),
        .out1(out1),
        .out2(out2),
        .out3(out3)
    );
    initial begin
        in = 1'b1;

        sel0=1'b0;
        sel1=1'b0;
        #5

        sel0=1'b1;
        sel1=1'b0;
        #5

        sel0=1'b0;
        sel1=1'b1;
        #5

        sel0=1'b1;
        sel1=1'b1;
        #5

        $stop;
    end
endmodule

module testbench;

    reg [1:0]i0;
    reg [1:0]i1;
    reg [1:0]i2;
    reg [1:0]i3;
    reg sel0;
    reg sel1;
    wire [1:0]out;

    mux_gate utt_mux_gate(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel0(sel0),
        .sel1(sel1),
        .out(out)
    ); 

    initial begin
        i0 = 2'b00;
        i1 = 2'b01;
        i2 = 2'b10;
        i3 = 2'b11;

        sel0 = 1'b0;
        sel1 = 1'b0;
        #5

        sel0 = 1'b1;
        sel1 = 1'b0;
        #5

        sel0 = 1'b0;
        sel1 = 1'b1;
        #5

        sel0 = 1'b1;
        sel1 = 1'b1;
        #5

        $stop;
    end
endmodule
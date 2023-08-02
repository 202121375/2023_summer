module testbench;
    reg [1:0]num;
    wire decoder_00;
    wire decoder_01;
    wire decoder_02;
    wire decoder_03;

    decoder_gate utt_decoder_gate(
        .decoder_00(decoder_00),
        .decoder_01(decoder_01),
        .decoder_02(decoder_02),
        .decoder_03(decoder_03),
        .num(num)
    );

    initial begin
        num = 2'b00;
        #5

        num = 2'b01;
        #5

        num = 2'b10;
        #5

        num = 2'b11;
        #5

        $stop;
    end
endmodule
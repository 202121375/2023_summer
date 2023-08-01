module testbench;
    reg encoder_00;
    reg encoder_01;
    reg encoder_02;
    reg encoder_03;
    wire [1:0]num;

    encoder_gate uut_encoder_gate(
        .encoder_00(encoder_00),
        .encoder_01(encoder_01),
        .encoder_02(encoder_02),
        .encoder_03(encoder_03),
        .num(num)
    );

    initial begin
        encoder_00=1'b1;
        encoder_01=1'b0;
        encoder_02=1'b0;
        encoder_03=1'b0;
        #5

        encoder_00=1'b0;
        encoder_01=1'b1;
        encoder_02=1'b0;
        encoder_03=1'b0;
        #5

        encoder_00=1'b0;
        encoder_01=1'b0;
        encoder_02=1'b1;
        encoder_03=1'b0;
        #5

        encoder_00=1'b0;
        encoder_01=1'b0;
        encoder_02=1'b0;
        encoder_03=1'b1;
        #5

        $stop;
    end
endmodule
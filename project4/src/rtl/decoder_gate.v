module decoder_gate(
    num,
    decoder_00,
    decoder_01,
    decoder_02,
    decoder_03
    );

    input [1:0]num;
    output decoder_00;
    output decoder_01;
    output decoder_02;
    output decoder_03;

    reg decoder_00;
    reg decoder_01;
    reg decoder_02;
    reg decoder_03;

    always @(*) begin
       if(num == 2'b00) begin
        decoder_00 = 1'b1;
        decoder_01 = 1'b0;
        decoder_02 = 1'b0;
        decoder_03 = 1'b0;
       end

       else if(num == 2'b01)begin
        decoder_00 = 1'b0;
        decoder_01 = 1'b1;
        decoder_02 = 1'b0;
        decoder_03 = 1'b0;
       end

       else if(num == 2'b10)begin
        decoder_00 = 1'b0;
        decoder_01 = 1'b0;
        decoder_02 = 1'b1;
        decoder_03 = 1'b0;
       end

       else if(num == 2'b11)begin
        decoder_00 = 1'b0;
        decoder_01 = 1'b0;
        decoder_02 = 1'b0;
        decoder_03 = 1'b1;
       end
       else begin
            decoder_00 = 1'b0;
            decoder_01 = 1'b0;
            decoder_02 = 1'b0;
            decoder_03 = 1'b0;
    end
    end
endmodule
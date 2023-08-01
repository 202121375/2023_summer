module encoder_gate(
    num,
    encoder_00,
    encoder_01,
    encoder_02,
    encoder_03
);

    input encoder_00;
    input encoder_01;
    input encoder_02;
    input encoder_03;

    output [1:0]num;
    reg [1:0]num;

    always @(*) begin
    if(encoder_00==1'b1)
        num = 2'b00;

    else if(encoder_01==1'b1)
        num = 2'b01;

    else if(encoder_02==1'b1)
        num = 2'b10;

    else (encoder_03==1'b1)
        num = 2'b11;
    end
endmodule
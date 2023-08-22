module parity(
    clk,
    in,
    even,
    odd
);
    input clk;
    input [2:0]in;
    output even;
    output odd;

    reg even;
    reg odd;

    always @(*) begin
        if(in == 3'b000) begin
            even = 1'b0;
            odd = 1'b1;
        end    

        else if (in == 3'b001) begin
            even = 1'b1;
            odd = 1'b0;
        end

        else if (in == 3'b010) begin
            even = 1'b1;
            odd = 1'b0;
        end

        else if (in == 3'b011) begin
            even = 1'b0;
            odd = 1'b1;
        end

        else if (in == 3'b100) begin
            even = 1'b1;
            odd = 1'b0;
        end

        else if (in == 3'b101) begin
            even = 1'b0;
            odd = 1'b1;
        end

        else if (in == 3'b110) begin
            even = 1'b0;
            odd = 1'b1;
        end

        else if (in == 3'b111) begin
            even = 1'b1;
            odd = 1'b0;
        end

        else begin
            even = 1'b0;
            odd= 1'b0;
        end
    end
endmodule
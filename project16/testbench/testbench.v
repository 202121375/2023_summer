`timescale 1ns/100ps
`define T_CLK 10

module testbench;

    reg clk;
    reg [2:0]in;
    wire even;
    wire odd;

    parity uut_parity(
        .clk(clk),
        .in(in),
        .even(even),
        .odd(odd)
    );

    initial begin
        clk=1'b1; 
    end

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        in = 3'b000;
        #10

        in = 3'b001;
        #10

        in = 3'b010;
        #10

        in = 3'b011;
        #10

        in = 3'b100;
        #10

        in = 3'b101;
        #10

        in = 3'b110;
        #10

        in = 3'b111;
        #10

        $stop;
    end
endmodule
`timescale 1ns/100ps
`define T_CLK 10

module testbench;

    reg clk;
    reg n_rst;
    reg trig;
    wire [3:0]out;

    binary uut_binary(
        .clk(clk),
        .n_rst(n_rst),
        .trig(trig),
        .out(out)
    );

    initial begin
        clk=1'b1;
        n_rst=1'b0;
        #10
        n_rst = !n_rst; 
    end

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        trig=1'b0;
        wait(n_rst==1'b1);

        trig = 1'b1;
        #10

        trig = 1'b1;
        #10

        trig = 1'b1;
        #10
        trig = 1'b1;
        #10
        trig = 1'b1;
        #10
        trig = 1'b1;
        #10
        trig = 1'b1;
        #10

        trig = 1'b0;
        #10
        trig = 1'b0;
        #10
        trig = 1'b0;
        #10
        trig = 1'b0;
        #10
        trig = 1'b0;
        #10
        trig = 1'b0;
        #10
        trig = 1'b0;
        #10

        $stop;
    end
endmodule
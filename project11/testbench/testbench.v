`timescale 1ns/100ps
`define T_CLK 10

module testbench;
    reg clk;
    reg n_rst;
    reg in;
    wire [3:0]out;

    shift_reg uut_shift_reg(
        .clk(clk),
        .n_rst(n_rst),
        .in(in),
        .out(out)
    );

    initial begin
        clk=1'b1;
        n_rst=1'b0;
        #10 n_rst = !n_rst;
    end

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        in=1'b0;
        wait(n_rst==1'b1);
        
        in=1'b1;
        #10 
        
        in = 1'b0;
        #30

        $stop;
    end
endmodule
module testbench;
    reg clk;
    reg reset;
    wire [3:0] q;

ring_cnt uut_ring_cnt(
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    reset = 1'b0;
    #10 reset = 1'b1;

    repeat (10) @ (posedge clk) begin
        #10;
    end 

    $stop;
end
endmodule
module shift_reg(
    clk,
    n_rst,
    in,
    out
);

    input clk;
    input n_rst;
    input in;
    output [3:0]out;

    reg [3:0]out;

    always @(posedge clk or negedge n_rst) begin
       if(!n_rst) begin
        out <= 4'b0;
       end

       else begin
        out[0]<=in;
        out[1]<=out[0];
        out[2]<=out[1];
        out[3]<=out[2];
       end
    end
endmodule
module binary(
    clk,
    n_rst,
    trig,
    out
);

    input clk;
    input n_rst;
    input trig;
    output [2:0]out;

    reg [2:0]out;

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            out <= 3'b000;
        end

        else begin
            if (trig == 1'b1) begin
                out<= (out-1'b1);
            end
            else begin
                out <= (out+1'b1);
            end
        end
    end                                                                                                                                                                                                                                                       
endmodule
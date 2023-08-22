module alu(
    input clk,
    input n_rst,
    input a,
    input b,
    input [4:0]oper,
    input [3:0]dtype,
    output parser_done,
    output result,
    output alu_done,
    output reg alu_out
);
    always@(posedge clk or negedge n_rst) begin
        case(oper)
        5'b00000 : 
        endcase
    end
endmodule
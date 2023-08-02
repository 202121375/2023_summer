module mux_gate(
    i0,
    i1,
    i2,
    i3,
    sel0,
    sel1,
    out
);

input i0;
input i1;
input i2;
input i3;
input sel0;
input sel1;
output [1:0]out;

assign out = (sel0==1'b0 && sel1==1'b0)?2'b00:
             (sel0==1'b1 && sel1==1'b0)?2'b01:
             (sel0==1'b0 && sel1==1'b1)?2'b10:
                                        2'b11;

endmodule
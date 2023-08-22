module testbench;
    reg [3:0] a; 
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;

rca uut_rca(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    cin = 0;
    a = 4'b0110;
    b = 4'b1100;
    #10;

    a = 4'b1110;
    b = 4'b1000;
    #10;

    a = 4'b0111;
    b = 4'b1110;
    #10;

    a = 4'b0010;
    b = 4'b1001;
    #10;

    $stop;
end
endmodule 
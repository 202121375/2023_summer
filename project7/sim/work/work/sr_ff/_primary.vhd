library verilog;
use verilog.vl_types.all;
entity sr_ff is
    port(
        clk             : in     vl_logic;
        s               : in     vl_logic;
        r               : in     vl_logic;
        q               : out    vl_logic;
        qb              : out    vl_logic
    );
end sr_ff;

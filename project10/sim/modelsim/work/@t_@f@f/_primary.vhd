library verilog;
use verilog.vl_types.all;
entity T_FF is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        T               : in     vl_logic;
        Q               : out    vl_logic
    );
end T_FF;

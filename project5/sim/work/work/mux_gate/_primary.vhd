library verilog;
use verilog.vl_types.all;
entity mux_gate is
    port(
        i0              : in     vl_logic;
        i1              : in     vl_logic;
        i2              : in     vl_logic;
        i3              : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        \out\           : out    vl_logic_vector(1 downto 0)
    );
end mux_gate;

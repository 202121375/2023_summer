library verilog;
use verilog.vl_types.all;
entity demux_gate is
    port(
        \in\            : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        out0            : out    vl_logic;
        out1            : out    vl_logic;
        out2            : out    vl_logic;
        out3            : out    vl_logic
    );
end demux_gate;

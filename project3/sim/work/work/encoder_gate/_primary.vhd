library verilog;
use verilog.vl_types.all;
entity encoder_gate is
    port(
        num             : out    vl_logic_vector(1 downto 0);
        encoder_00      : in     vl_logic;
        encoder_01      : in     vl_logic;
        encoder_02      : in     vl_logic;
        encoder_03      : in     vl_logic
    );
end encoder_gate;

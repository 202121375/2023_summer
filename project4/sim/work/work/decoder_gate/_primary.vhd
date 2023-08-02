library verilog;
use verilog.vl_types.all;
entity decoder_gate is
    port(
        num             : in     vl_logic_vector(1 downto 0);
        decoder_00      : out    vl_logic;
        decoder_01      : out    vl_logic;
        decoder_02      : out    vl_logic;
        decoder_03      : out    vl_logic
    );
end decoder_gate;

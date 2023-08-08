library verilog;
use verilog.vl_types.all;
entity binary is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        trig            : in     vl_logic;
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end binary;

library verilog;
use verilog.vl_types.all;
entity shift_reg is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end shift_reg;

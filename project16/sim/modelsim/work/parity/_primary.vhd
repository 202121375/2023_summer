library verilog;
use verilog.vl_types.all;
entity parity is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(2 downto 0);
        even            : out    vl_logic;
        odd             : out    vl_logic
    );
end parity;

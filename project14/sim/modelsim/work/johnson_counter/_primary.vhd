library verilog;
use verilog.vl_types.all;
entity johnson_counter is
    port(
        q               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        rst_n           : in     vl_logic
    );
end johnson_counter;

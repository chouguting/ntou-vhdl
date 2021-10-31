library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counter is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        cascade_in      : in     vl_logic;
        cascade_out     : out    vl_logic;
        Cout            : out    vl_logic_vector(3 downto 0)
    );
end BCD_cascading_counter;

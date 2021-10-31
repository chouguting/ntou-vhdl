library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counting_0_to_99 is
    port(
        cascade_out     : out    vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        cascade_in      : in     vl_logic;
        Cout            : out    vl_logic_vector(7 downto 0)
    );
end BCD_cascading_counting_0_to_99;

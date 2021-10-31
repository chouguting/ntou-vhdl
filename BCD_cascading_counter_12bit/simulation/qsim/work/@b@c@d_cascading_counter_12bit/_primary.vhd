library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counter_12bit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        casin           : in     vl_logic;
        count           : out    vl_logic_vector(11 downto 0);
        casout          : out    vl_logic
    );
end BCD_cascading_counter_12bit;

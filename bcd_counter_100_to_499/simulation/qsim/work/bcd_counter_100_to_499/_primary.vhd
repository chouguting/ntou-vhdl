library verilog;
use verilog.vl_types.all;
entity bcd_counter_100_to_499 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        output_num      : out    vl_logic_vector(11 downto 0)
    );
end bcd_counter_100_to_499;

library verilog;
use verilog.vl_types.all;
entity counter_20_to_A0 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        up_or_down      : in     vl_logic;
        output_num      : out    vl_logic_vector(7 downto 0)
    );
end counter_20_to_A0;

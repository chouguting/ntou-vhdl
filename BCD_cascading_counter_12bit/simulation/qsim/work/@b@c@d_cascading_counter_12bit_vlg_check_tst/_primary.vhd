library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counter_12bit_vlg_check_tst is
    port(
        casout          : in     vl_logic;
        count           : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end BCD_cascading_counter_12bit_vlg_check_tst;

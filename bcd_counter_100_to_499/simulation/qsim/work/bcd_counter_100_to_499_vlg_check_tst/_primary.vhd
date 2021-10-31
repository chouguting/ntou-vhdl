library verilog;
use verilog.vl_types.all;
entity bcd_counter_100_to_499_vlg_check_tst is
    port(
        output_num      : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end bcd_counter_100_to_499_vlg_check_tst;

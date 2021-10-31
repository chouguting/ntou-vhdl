library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counter_vlg_check_tst is
    port(
        cascade_out     : in     vl_logic;
        Cout            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end BCD_cascading_counter_vlg_check_tst;

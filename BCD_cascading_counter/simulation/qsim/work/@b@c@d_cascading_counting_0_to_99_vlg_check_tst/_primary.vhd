library verilog;
use verilog.vl_types.all;
entity BCD_cascading_counting_0_to_99_vlg_check_tst is
    port(
        cascade_out     : in     vl_logic;
        Cout            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end BCD_cascading_counting_0_to_99_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity step_wave_vlg_check_tst is
    port(
        F_out           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end step_wave_vlg_check_tst;

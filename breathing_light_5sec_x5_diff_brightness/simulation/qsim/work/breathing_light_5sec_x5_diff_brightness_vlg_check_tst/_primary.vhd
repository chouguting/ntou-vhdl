library verilog;
use verilog.vl_types.all;
entity breathing_light_5sec_x5_diff_brightness_vlg_check_tst is
    port(
        light_out       : in     vl_logic_vector(4 downto 0);
        pwm0            : in     vl_logic_vector(7 downto 0);
        pwm1            : in     vl_logic_vector(7 downto 0);
        pwm2            : in     vl_logic_vector(7 downto 0);
        pwm3            : in     vl_logic_vector(7 downto 0);
        pwm4            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end breathing_light_5sec_x5_diff_brightness_vlg_check_tst;

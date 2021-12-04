library verilog;
use verilog.vl_types.all;
entity breathing_light_5sec_vlg_check_tst is
    port(
        clk_102Hz       : in     vl_logic;
        div_490196_counter: in     vl_logic_vector(18 downto 0);
        led_counter     : in     vl_logic_vector(8 downto 0);
        light_out       : in     vl_logic;
        pwm_counter     : in     vl_logic_vector(7 downto 0);
        pwm_num         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end breathing_light_5sec_vlg_check_tst;

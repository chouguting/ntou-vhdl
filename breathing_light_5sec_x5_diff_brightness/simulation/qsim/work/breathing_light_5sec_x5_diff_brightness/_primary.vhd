library verilog;
use verilog.vl_types.all;
entity breathing_light_5sec_x5_diff_brightness is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        light_out       : out    vl_logic_vector(4 downto 0);
        pwm4            : out    vl_logic_vector(7 downto 0);
        pwm3            : out    vl_logic_vector(7 downto 0);
        pwm2            : out    vl_logic_vector(7 downto 0);
        pwm1            : out    vl_logic_vector(7 downto 0);
        pwm0            : out    vl_logic_vector(7 downto 0)
    );
end breathing_light_5sec_x5_diff_brightness;

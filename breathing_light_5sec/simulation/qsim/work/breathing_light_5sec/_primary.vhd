library verilog;
use verilog.vl_types.all;
entity breathing_light_5sec is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        light_out       : out    vl_logic;
        clk_102Hz       : out    vl_logic;
        div_490196_counter: out    vl_logic_vector(18 downto 0);
        pwm_num         : out    vl_logic_vector(7 downto 0);
        pwm_counter     : out    vl_logic_vector(7 downto 0);
        led_counter     : out    vl_logic_vector(8 downto 0)
    );
end breathing_light_5sec;

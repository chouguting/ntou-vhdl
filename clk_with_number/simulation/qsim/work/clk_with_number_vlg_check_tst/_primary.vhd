library verilog;
use verilog.vl_types.all;
entity clk_with_number_vlg_check_tst is
    port(
        decoded_out     : in     vl_logic_vector(7 downto 0);
        onesec_out      : in     vl_logic_vector(9 downto 0);
        temp            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end clk_with_number_vlg_check_tst;

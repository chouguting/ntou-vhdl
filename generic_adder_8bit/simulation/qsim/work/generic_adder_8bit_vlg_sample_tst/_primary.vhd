library verilog;
use verilog.vl_types.all;
entity generic_adder_8bit_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        c_in            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end generic_adder_8bit_vlg_sample_tst;

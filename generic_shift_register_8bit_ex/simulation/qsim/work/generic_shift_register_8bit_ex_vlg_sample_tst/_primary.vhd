library verilog;
use verilog.vl_types.all;
entity generic_shift_register_8bit_ex_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        D_in            : in     vl_logic;
        L_R             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end generic_shift_register_8bit_ex_vlg_sample_tst;

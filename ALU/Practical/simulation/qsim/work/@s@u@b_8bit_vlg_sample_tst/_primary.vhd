library verilog;
use verilog.vl_types.all;
entity SUB_8bit_vlg_sample_tst is
    port(
        DATA_A          : in     vl_logic_vector(7 downto 0);
        DATA_B          : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end SUB_8bit_vlg_sample_tst;

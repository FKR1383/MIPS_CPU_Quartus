library verilog;
use verilog.vl_types.all;
entity Booth_Multiplier_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        DATA_A          : in     vl_logic_vector(7 downto 0);
        DATA_B          : in     vl_logic_vector(7 downto 0);
        ENABLE          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Booth_Multiplier_vlg_sample_tst;

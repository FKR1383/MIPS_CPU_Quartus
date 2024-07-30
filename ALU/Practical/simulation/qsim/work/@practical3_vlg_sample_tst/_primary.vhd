library verilog;
use verilog.vl_types.all;
entity Practical3_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        CLOCK           : in     vl_logic;
        ENABLE          : in     vl_logic;
        OPCODE          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Practical3_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity MIPS_CPU_vlg_sample_tst is
    port(
        ALU_ENABLE      : in     vl_logic;
        CLOCK           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MIPS_CPU_vlg_sample_tst;

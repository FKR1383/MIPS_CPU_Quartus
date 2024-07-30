library verilog;
use verilog.vl_types.all;
entity Control_Multi_Cycle_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        FUNCT           : in     vl_logic_vector(2 downto 0);
        OPCODE          : in     vl_logic_vector(3 downto 0);
        STATE           : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Control_Multi_Cycle_vlg_sample_tst;

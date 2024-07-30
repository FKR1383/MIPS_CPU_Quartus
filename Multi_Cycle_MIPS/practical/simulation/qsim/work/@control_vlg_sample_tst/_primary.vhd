library verilog;
use verilog.vl_types.all;
entity Control_vlg_sample_tst is
    port(
        ENABLE          : in     vl_logic;
        Funct           : in     vl_logic_vector(2 downto 0);
        OP_CODE         : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Control_vlg_sample_tst;

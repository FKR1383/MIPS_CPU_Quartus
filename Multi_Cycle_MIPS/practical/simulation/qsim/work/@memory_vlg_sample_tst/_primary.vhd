library verilog;
use verilog.vl_types.all;
entity Memory_vlg_sample_tst is
    port(
        Address         : in     vl_logic_vector(7 downto 0);
        CLOCK           : in     vl_logic;
        MemRead         : in     vl_logic;
        MemWrite        : in     vl_logic;
        WriteData       : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Memory_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity DataMemory_vlg_check_tst is
    port(
        ReadData        : in     vl_logic_vector(15 downto 0);
        WriteData       : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end DataMemory_vlg_check_tst;

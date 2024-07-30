library verilog;
use verilog.vl_types.all;
entity RegisterFile_vlg_check_tst is
    port(
        REGISTER4TEST   : in     vl_logic_vector(7 downto 0);
        RegOut1         : in     vl_logic_vector(7 downto 0);
        RegOut2         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end RegisterFile_vlg_check_tst;

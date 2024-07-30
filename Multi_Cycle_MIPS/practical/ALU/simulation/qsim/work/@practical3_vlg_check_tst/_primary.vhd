library verilog;
use verilog.vl_types.all;
entity Practical3_vlg_check_tst is
    port(
        DECODE          : in     vl_logic_vector(15 downto 0);
        \OUT\           : in     vl_logic_vector(7 downto 0);
        READY           : in     vl_logic;
        ZERO            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Practical3_vlg_check_tst;

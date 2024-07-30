library verilog;
use verilog.vl_types.all;
entity Booth_Multiplier_vlg_check_tst is
    port(
        OUTPUT          : in     vl_logic_vector(7 downto 0);
        READY           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Booth_Multiplier_vlg_check_tst;

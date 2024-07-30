library verilog;
use verilog.vl_types.all;
entity Booth_Multiplier is
    port(
        READY           : out    vl_logic;
        CLOCK           : in     vl_logic;
        ENABLE          : in     vl_logic;
        OUTPUT          : out    vl_logic_vector(7 downto 0);
        DATA_B          : in     vl_logic_vector(7 downto 0);
        DATA_A          : in     vl_logic_vector(7 downto 0)
    );
end Booth_Multiplier;

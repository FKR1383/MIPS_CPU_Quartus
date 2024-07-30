library verilog;
use verilog.vl_types.all;
entity OR8bit is
    port(
        \OUT\           : out    vl_logic_vector(7 downto 0);
        DATA_B          : in     vl_logic_vector(7 downto 0);
        DATA_A          : in     vl_logic_vector(7 downto 0)
    );
end OR8bit;

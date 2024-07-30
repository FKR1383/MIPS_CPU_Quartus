library verilog;
use verilog.vl_types.all;
entity \SUB-8bit\ is
    port(
        S               : out    vl_logic_vector(7 downto 0);
        DATA_A          : in     vl_logic_vector(7 downto 0);
        DATA_B          : in     vl_logic_vector(7 downto 0)
    );
end \SUB-8bit\;

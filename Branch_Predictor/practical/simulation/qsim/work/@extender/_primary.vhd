library verilog;
use verilog.vl_types.all;
entity Extender is
    port(
        IMM_EXTEND      : out    vl_logic_vector(7 downto 0);
        IMM             : in     vl_logic_vector(5 downto 0);
        ZERO_EXTEND     : in     vl_logic
    );
end Extender;

library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        REGISTER4TEST   : out    vl_logic_vector(7 downto 0);
        CLOCK           : in     vl_logic;
        WriteReg        : in     vl_logic;
        Register3       : in     vl_logic_vector(2 downto 0);
        Data            : in     vl_logic_vector(7 downto 0);
        RegOut1         : out    vl_logic_vector(7 downto 0);
        Register1       : in     vl_logic_vector(2 downto 0);
        RegOut2         : out    vl_logic_vector(7 downto 0);
        Register2       : in     vl_logic_vector(2 downto 0)
    );
end RegisterFile;

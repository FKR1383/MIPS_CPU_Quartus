library verilog;
use verilog.vl_types.all;
entity RegisterFile_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        Data            : in     vl_logic_vector(7 downto 0);
        Register1       : in     vl_logic_vector(2 downto 0);
        Register2       : in     vl_logic_vector(2 downto 0);
        Register3       : in     vl_logic_vector(2 downto 0);
        WriteReg        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RegisterFile_vlg_sample_tst;

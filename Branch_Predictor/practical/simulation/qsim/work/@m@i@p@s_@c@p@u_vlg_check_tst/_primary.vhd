library verilog;
use verilog.vl_types.all;
entity MIPS_CPU_vlg_check_tst is
    port(
        ALU_result      : in     vl_logic_vector(7 downto 0);
        BACK            : in     vl_logic;
        Block_four      : in     vl_logic_vector(15 downto 0);
        Block_one       : in     vl_logic_vector(15 downto 0);
        Block_three     : in     vl_logic_vector(15 downto 0);
        Block_two       : in     vl_logic_vector(15 downto 0);
        Branch_Select   : in     vl_logic;
        FLUSH           : in     vl_logic;
        FLUSH_JUMP      : in     vl_logic;
        HIT             : in     vl_logic;
        JRAL            : in     vl_logic;
        Operand1        : in     vl_logic_vector(7 downto 0);
        Operand2        : in     vl_logic_vector(7 downto 0);
        PC_OUT          : in     vl_logic_vector(7 downto 0);
        Read_Data       : in     vl_logic_vector(15 downto 0);
        Reg1            : in     vl_logic_vector(7 downto 0);
        Reg2            : in     vl_logic_vector(7 downto 0);
        TAKEN           : in     vl_logic;
        Write_Data      : in     vl_logic_vector(7 downto 0);
        Write_Register  : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end MIPS_CPU_vlg_check_tst;

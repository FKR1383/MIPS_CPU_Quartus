library verilog;
use verilog.vl_types.all;
entity MIPS_CPU_vlg_check_tst is
    port(
        Address         : in     vl_logic_vector(7 downto 0);
        ALU_result_OUT  : in     vl_logic_vector(7 downto 0);
        Branch          : in     vl_logic;
        Instruction_OUT : in     vl_logic_vector(15 downto 0);
        JAL             : in     vl_logic;
        Jump            : in     vl_logic;
        Operand2_OUT    : in     vl_logic_vector(7 downto 0);
        PC_OUT          : in     vl_logic_vector(7 downto 0);
        Read_Data_OUT   : in     vl_logic_vector(15 downto 0);
        Reg1_OUT        : in     vl_logic_vector(7 downto 0);
        Reg2_OUT        : in     vl_logic_vector(7 downto 0);
        Write_Data_OUT  : in     vl_logic_vector(7 downto 0);
        Write_Register_OUT: in     vl_logic_vector(2 downto 0);
        WriteData       : in     vl_logic_vector(15 downto 0);
        ZERO            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MIPS_CPU_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity InstructionMemory_vlg_check_tst is
    port(
        ReadData        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end InstructionMemory_vlg_check_tst;

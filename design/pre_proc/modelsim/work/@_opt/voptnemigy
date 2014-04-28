library verilog;
use verilog.vl_types.all;
entity pre_proc is
    generic(
        mult_f          : integer := 26000
    );
    port(
        clk             : in     vl_logic;
        ce              : in     vl_logic;
        audio_in        : in     vl_logic_vector(15 downto 0);
        pre_proc_audio  : out    vl_logic_vector(15 downto 0)
    );
end pre_proc;

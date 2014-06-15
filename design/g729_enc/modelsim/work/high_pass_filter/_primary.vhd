library verilog;
use verilog.vl_types.all;
entity high_pass_filter is
    port(
        clk             : in     vl_logic;
        ce              : in     vl_logic;
        rst_n           : in     vl_logic;
        audio_in        : in     vl_logic_vector(15 downto 0);
        pre_proc_audio  : out    vl_logic_vector(15 downto 0)
    );
end high_pass_filter;

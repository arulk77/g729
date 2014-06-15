library verilog;
use verilog.vl_types.all;
entity dwn_sampler is
    generic(
        SAMPLE_RATE     : integer := 10
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sys_ce          : in     vl_logic;
        sys_async_rst_n : out    vl_logic;
        sys_audio_sample: in     vl_logic_vector(31 downto 0);
        dwn_smp_audio_sample: out    vl_logic_vector(31 downto 0);
        dwn_smp_smp_vld : out    vl_logic
    );
end dwn_sampler;

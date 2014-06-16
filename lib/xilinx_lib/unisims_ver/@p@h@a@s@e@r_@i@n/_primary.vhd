library verilog;
use verilog.vl_types.all;
entity PHASER_IN is
    generic(
        CLKOUT_DIV      : integer := 4;
        DQS_BIAS_MODE   : string  := "FALSE";
        EN_ISERDES_RST  : string  := "FALSE";
        FINE_DELAY      : integer := 0;
        FREQ_REF_DIV    : string  := "NONE";
        MEMREFCLK_PERIOD: real    := 0.000000;
        OUTPUT_CLK_SRC  : string  := "PHASE_REF";
        PHASEREFCLK_PERIOD: real    := 0.000000;
        REFCLK_PERIOD   : real    := 0.000000;
        SEL_CLK_OFFSET  : integer := 5;
        SYNC_IN_DIV_RST : string  := "FALSE"
    );
    port(
        COUNTERREADVAL  : out    vl_logic_vector(5 downto 0);
        FINEOVERFLOW    : out    vl_logic;
        ICLK            : out    vl_logic;
        ICLKDIV         : out    vl_logic;
        ISERDESRST      : out    vl_logic;
        RCLK            : out    vl_logic;
        COUNTERLOADEN   : in     vl_logic;
        COUNTERLOADVAL  : in     vl_logic_vector(5 downto 0);
        COUNTERREADEN   : in     vl_logic;
        DIVIDERST       : in     vl_logic;
        EDGEADV         : in     vl_logic;
        FINEENABLE      : in     vl_logic;
        FINEINC         : in     vl_logic;
        FREQREFCLK      : in     vl_logic;
        MEMREFCLK       : in     vl_logic;
        PHASEREFCLK     : in     vl_logic;
        RANKSEL         : in     vl_logic_vector(1 downto 0);
        RST             : in     vl_logic;
        SYNCIN          : in     vl_logic;
        SYSCLK          : in     vl_logic
    );
end PHASER_IN;

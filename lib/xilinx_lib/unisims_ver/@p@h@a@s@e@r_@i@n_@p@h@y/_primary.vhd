library verilog;
use verilog.vl_types.all;
entity PHASER_IN_PHY is
    generic(
        BURST_MODE      : string  := "FALSE";
        CLKOUT_DIV      : integer := 4;
        DQS_AUTO_RECAL  : integer := 1;
        DQS_BIAS_MODE   : string  := "FALSE";
        DQS_FIND_PATTERN: integer := 1;
        FINE_DELAY      : integer := 0;
        FREQ_REF_DIV    : string  := "NONE";
        MEMREFCLK_PERIOD: real    := 0.000000;
        OUTPUT_CLK_SRC  : string  := "PHASE_REF";
        PHASEREFCLK_PERIOD: real    := 0.000000;
        REFCLK_PERIOD   : real    := 0.000000;
        SEL_CLK_OFFSET  : integer := 5;
        SYNC_IN_DIV_RST : string  := "FALSE";
        WR_CYCLES       : string  := "FALSE"
    );
    port(
        COUNTERREADVAL  : out    vl_logic_vector(5 downto 0);
        DQSFOUND        : out    vl_logic;
        DQSOUTOFRANGE   : out    vl_logic;
        FINEOVERFLOW    : out    vl_logic;
        ICLK            : out    vl_logic;
        ICLKDIV         : out    vl_logic;
        ISERDESRST      : out    vl_logic;
        PHASELOCKED     : out    vl_logic;
        RCLK            : out    vl_logic;
        WRENABLE        : out    vl_logic;
        BURSTPENDINGPHY : in     vl_logic;
        COUNTERLOADEN   : in     vl_logic;
        COUNTERLOADVAL  : in     vl_logic_vector(5 downto 0);
        COUNTERREADEN   : in     vl_logic;
        ENCALIBPHY      : in     vl_logic_vector(1 downto 0);
        FINEENABLE      : in     vl_logic;
        FINEINC         : in     vl_logic;
        FREQREFCLK      : in     vl_logic;
        MEMREFCLK       : in     vl_logic;
        PHASEREFCLK     : in     vl_logic;
        RANKSELPHY      : in     vl_logic_vector(1 downto 0);
        RST             : in     vl_logic;
        RSTDQSFIND      : in     vl_logic;
        SYNCIN          : in     vl_logic;
        SYSCLK          : in     vl_logic
    );
end PHASER_IN_PHY;

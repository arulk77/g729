library verilog;
use verilog.vl_types.all;
entity MMCM_BASE is
    generic(
        BANDWIDTH       : string  := "OPTIMIZED";
        CLKFBOUT_MULT_F : real    := 5.000000;
        CLKFBOUT_PHASE  : real    := 0.000000;
        CLKIN1_PERIOD   : real    := 0.000000;
        CLKOUT0_DIVIDE_F: real    := 1.000000;
        CLKOUT0_DUTY_CYCLE: real    := 0.500000;
        CLKOUT0_PHASE   : real    := 0.000000;
        CLKOUT1_DIVIDE  : integer := 1;
        CLKOUT1_DUTY_CYCLE: real    := 0.500000;
        CLKOUT1_PHASE   : real    := 0.000000;
        CLKOUT2_DIVIDE  : integer := 1;
        CLKOUT2_DUTY_CYCLE: real    := 0.500000;
        CLKOUT2_PHASE   : real    := 0.000000;
        CLKOUT3_DIVIDE  : integer := 1;
        CLKOUT3_DUTY_CYCLE: real    := 0.500000;
        CLKOUT3_PHASE   : real    := 0.000000;
        CLKOUT4_CASCADE : string  := "FALSE";
        CLKOUT4_DIVIDE  : integer := 1;
        CLKOUT4_DUTY_CYCLE: real    := 0.500000;
        CLKOUT4_PHASE   : real    := 0.000000;
        CLKOUT5_DIVIDE  : integer := 1;
        CLKOUT5_DUTY_CYCLE: real    := 0.500000;
        CLKOUT5_PHASE   : real    := 0.000000;
        CLKOUT6_DIVIDE  : integer := 1;
        CLKOUT6_DUTY_CYCLE: real    := 0.500000;
        CLKOUT6_PHASE   : real    := 0.000000;
        CLOCK_HOLD      : string  := "FALSE";
        DIVCLK_DIVIDE   : integer := 1;
        REF_JITTER1     : real    := 0.010000;
        STARTUP_WAIT    : string  := "FALSE"
    );
    port(
        CLKFBOUT        : out    vl_logic;
        CLKFBOUTB       : out    vl_logic;
        CLKOUT0         : out    vl_logic;
        CLKOUT0B        : out    vl_logic;
        CLKOUT1         : out    vl_logic;
        CLKOUT1B        : out    vl_logic;
        CLKOUT2         : out    vl_logic;
        CLKOUT2B        : out    vl_logic;
        CLKOUT3         : out    vl_logic;
        CLKOUT3B        : out    vl_logic;
        CLKOUT4         : out    vl_logic;
        CLKOUT5         : out    vl_logic;
        CLKOUT6         : out    vl_logic;
        LOCKED          : out    vl_logic;
        CLKFBIN         : in     vl_logic;
        CLKIN1          : in     vl_logic;
        PWRDWN          : in     vl_logic;
        RST             : in     vl_logic
    );
end MMCM_BASE;

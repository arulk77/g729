library verilog;
use verilog.vl_types.all;
entity PLL_BASE is
    generic(
        BANDWIDTH       : string  := "OPTIMIZED";
        CLKFBOUT_MULT   : integer := 1;
        CLKFBOUT_PHASE  : real    := 0.000000;
        CLKIN_PERIOD    : real    := 0.000000;
        CLKOUT0_DIVIDE  : integer := 1;
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
        CLKOUT4_DIVIDE  : integer := 1;
        CLKOUT4_DUTY_CYCLE: real    := 0.500000;
        CLKOUT4_PHASE   : real    := 0.000000;
        CLKOUT5_DIVIDE  : integer := 1;
        CLKOUT5_DUTY_CYCLE: real    := 0.500000;
        CLKOUT5_PHASE   : real    := 0.000000;
        CLK_FEEDBACK    : string  := "CLKFBOUT";
        COMPENSATION    : string  := "SYSTEM_SYNCHRONOUS";
        DIVCLK_DIVIDE   : integer := 1;
        REF_JITTER      : real    := 0.100000;
        RESET_ON_LOSS_OF_LOCK: string  := "FALSE"
    );
    port(
        CLKFBOUT        : out    vl_logic;
        CLKOUT0         : out    vl_logic;
        CLKOUT1         : out    vl_logic;
        CLKOUT2         : out    vl_logic;
        CLKOUT3         : out    vl_logic;
        CLKOUT4         : out    vl_logic;
        CLKOUT5         : out    vl_logic;
        LOCKED          : out    vl_logic;
        CLKFBIN         : in     vl_logic;
        CLKIN           : in     vl_logic;
        RST             : in     vl_logic
    );
end PLL_BASE;

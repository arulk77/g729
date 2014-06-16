library verilog;
use verilog.vl_types.all;
entity PLLE2_ADV is
    generic(
        BANDWIDTH       : string  := "OPTIMIZED";
        COMPENSATION    : string  := "ZHOLD";
        STARTUP_WAIT    : string  := "FALSE";
        CLKOUT0_DIVIDE  : integer := 1;
        CLKOUT1_DIVIDE  : integer := 1;
        CLKOUT2_DIVIDE  : integer := 1;
        CLKOUT3_DIVIDE  : integer := 1;
        CLKOUT4_DIVIDE  : integer := 1;
        CLKOUT5_DIVIDE  : integer := 1;
        DIVCLK_DIVIDE   : integer := 1;
        CLKFBOUT_MULT   : integer := 5;
        CLKFBOUT_PHASE  : real    := 0.000000;
        CLKIN1_PERIOD   : real    := 0.000000;
        CLKIN2_PERIOD   : real    := 0.000000;
        CLKOUT0_DUTY_CYCLE: real    := 0.500000;
        CLKOUT0_PHASE   : real    := 0.000000;
        CLKOUT1_DUTY_CYCLE: real    := 0.500000;
        CLKOUT1_PHASE   : real    := 0.000000;
        CLKOUT2_DUTY_CYCLE: real    := 0.500000;
        CLKOUT2_PHASE   : real    := 0.000000;
        CLKOUT3_DUTY_CYCLE: real    := 0.500000;
        CLKOUT3_PHASE   : real    := 0.000000;
        CLKOUT4_DUTY_CYCLE: real    := 0.500000;
        CLKOUT4_PHASE   : real    := 0.000000;
        CLKOUT5_DUTY_CYCLE: real    := 0.500000;
        CLKOUT5_PHASE   : real    := 0.000000;
        REF_JITTER1     : real    := 0.010000;
        REF_JITTER2     : real    := 0.010000
    );
    port(
        CLKFBOUT        : out    vl_logic;
        CLKOUT0         : out    vl_logic;
        CLKOUT1         : out    vl_logic;
        CLKOUT2         : out    vl_logic;
        CLKOUT3         : out    vl_logic;
        CLKOUT4         : out    vl_logic;
        CLKOUT5         : out    vl_logic;
        DO              : out    vl_logic_vector(15 downto 0);
        DRDY            : out    vl_logic;
        LOCKED          : out    vl_logic;
        CLKFBIN         : in     vl_logic;
        CLKIN1          : in     vl_logic;
        CLKIN2          : in     vl_logic;
        CLKINSEL        : in     vl_logic;
        DADDR           : in     vl_logic_vector(6 downto 0);
        DCLK            : in     vl_logic;
        DEN             : in     vl_logic;
        DI              : in     vl_logic_vector(15 downto 0);
        DWE             : in     vl_logic;
        PWRDWN          : in     vl_logic;
        RST             : in     vl_logic
    );
end PLLE2_ADV;

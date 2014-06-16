library verilog;
use verilog.vl_types.all;
entity GTHE2_COMMON is
    generic(
      --BIAS_CFG        : integer type with unrepresentable value!
        COMMON_CFG      : integer := 28;
        QPLL_CFG        : integer := 4718977;
        QPLL_CLKOUT_CFG : integer := 0;
        QPLL_COARSE_FREQ_OVRD: integer := 16;
        QPLL_COARSE_FREQ_OVRD_EN: integer := 0;
        QPLL_CP         : integer := 31;
        QPLL_CP_MONITOR_EN: integer := 0;
        QPLL_DMONITOR_SEL: integer := 0;
        QPLL_FBDIV      : integer := 0;
        QPLL_FBDIV_MONITOR_EN: integer := 0;
        QPLL_FBDIV_RATIO: integer := 0;
        QPLL_INIT_CFG   : integer := 6;
        QPLL_LOCK_CFG   : integer := 488;
        QPLL_LPF        : integer := 15;
        QPLL_REFCLK_DIV : integer := 2;
        QPLL_RP_COMP    : integer := 0;
        QPLL_VTRL_RESET : integer := 0;
        RCAL_CFG        : integer := 0;
        RSVD_ATTR0      : integer := 0;
        RSVD_ATTR1      : integer := 0;
        SIM_QPLLREFCLK_SEL: integer := 1;
        SIM_RESET_SPEEDUP: string  := "TRUE";
        SIM_VERSION     : string  := "1.1"
    );
    port(
        DRPDO           : out    vl_logic_vector(15 downto 0);
        DRPRDY          : out    vl_logic;
        PMARSVDOUT      : out    vl_logic_vector(15 downto 0);
        QPLLDMONITOR    : out    vl_logic_vector(7 downto 0);
        QPLLFBCLKLOST   : out    vl_logic;
        QPLLLOCK        : out    vl_logic;
        QPLLOUTCLK      : out    vl_logic;
        QPLLOUTREFCLK   : out    vl_logic;
        QPLLREFCLKLOST  : out    vl_logic;
        REFCLKOUTMONITOR: out    vl_logic;
        BGBYPASSB       : in     vl_logic;
        BGMONITORENB    : in     vl_logic;
        BGPDB           : in     vl_logic;
        BGRCALOVRD      : in     vl_logic_vector(4 downto 0);
        BGRCALOVRDENB   : in     vl_logic;
        DRPADDR         : in     vl_logic_vector(7 downto 0);
        DRPCLK          : in     vl_logic;
        DRPDI           : in     vl_logic_vector(15 downto 0);
        DRPEN           : in     vl_logic;
        DRPWE           : in     vl_logic;
        GTGREFCLK       : in     vl_logic;
        GTNORTHREFCLK0  : in     vl_logic;
        GTNORTHREFCLK1  : in     vl_logic;
        GTREFCLK0       : in     vl_logic;
        GTREFCLK1       : in     vl_logic;
        GTSOUTHREFCLK0  : in     vl_logic;
        GTSOUTHREFCLK1  : in     vl_logic;
        PMARSVD         : in     vl_logic_vector(7 downto 0);
        QPLLLOCKDETCLK  : in     vl_logic;
        QPLLLOCKEN      : in     vl_logic;
        QPLLOUTRESET    : in     vl_logic;
        QPLLPD          : in     vl_logic;
        QPLLREFCLKSEL   : in     vl_logic_vector(2 downto 0);
        QPLLRESET       : in     vl_logic;
        QPLLRSVD1       : in     vl_logic_vector(15 downto 0);
        QPLLRSVD2       : in     vl_logic_vector(4 downto 0);
        RCALENB         : in     vl_logic
    );
end GTHE2_COMMON;

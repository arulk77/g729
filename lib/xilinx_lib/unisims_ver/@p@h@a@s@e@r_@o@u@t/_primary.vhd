library verilog;
use verilog.vl_types.all;
entity PHASER_OUT is
    generic(
        CLKOUT_DIV      : integer := 4;
        COARSE_BYPASS   : string  := "FALSE";
        COARSE_DELAY    : integer := 0;
        EN_OSERDES_RST  : string  := "FALSE";
        FINE_DELAY      : integer := 0;
        MEMREFCLK_PERIOD: real    := 0.000000;
        OCLKDELAY_INV   : string  := "FALSE";
        OCLK_DELAY      : integer := 0;
        OUTPUT_CLK_SRC  : string  := "PHASE_REF";
        PHASEREFCLK_PERIOD: real    := 0.000000;
        PO              : integer := 0;
        REFCLK_PERIOD   : real    := 0.000000;
        SYNC_IN_DIV_RST : string  := "FALSE"
    );
    port(
        COARSEOVERFLOW  : out    vl_logic;
        COUNTERREADVAL  : out    vl_logic_vector(8 downto 0);
        FINEOVERFLOW    : out    vl_logic;
        OCLK            : out    vl_logic;
        OCLKDELAYED     : out    vl_logic;
        OCLKDIV         : out    vl_logic;
        OSERDESRST      : out    vl_logic;
        COARSEENABLE    : in     vl_logic;
        COARSEINC       : in     vl_logic;
        COUNTERLOADEN   : in     vl_logic;
        COUNTERLOADVAL  : in     vl_logic_vector(8 downto 0);
        COUNTERREADEN   : in     vl_logic;
        DIVIDERST       : in     vl_logic;
        EDGEADV         : in     vl_logic;
        FINEENABLE      : in     vl_logic;
        FINEINC         : in     vl_logic;
        FREQREFCLK      : in     vl_logic;
        MEMREFCLK       : in     vl_logic;
        PHASEREFCLK     : in     vl_logic;
        RST             : in     vl_logic;
        SELFINEOCLKDELAY: in     vl_logic;
        SYNCIN          : in     vl_logic;
        SYSCLK          : in     vl_logic
    );
end PHASER_OUT;

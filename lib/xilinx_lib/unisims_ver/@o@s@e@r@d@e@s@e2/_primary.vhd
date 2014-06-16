library verilog;
use verilog.vl_types.all;
entity OSERDESE2 is
    generic(
        DATA_RATE_OQ    : string  := "DDR";
        DATA_RATE_TQ    : string  := "DDR";
        DATA_WIDTH      : integer := 4;
        INIT_OQ         : integer := 0;
        INIT_TQ         : integer := 0;
        SERDES_MODE     : string  := "MASTER";
        SRVAL_OQ        : integer := 0;
        SRVAL_TQ        : integer := 0;
        TBYTE_CTL       : string  := "FALSE";
        TBYTE_SRC       : string  := "FALSE";
        TRISTATE_WIDTH  : integer := 4
    );
    port(
        OFB             : out    vl_logic;
        OQ              : out    vl_logic;
        SHIFTOUT1       : out    vl_logic;
        SHIFTOUT2       : out    vl_logic;
        TBYTEOUT        : out    vl_logic;
        TFB             : out    vl_logic;
        TQ              : out    vl_logic;
        CLK             : in     vl_logic;
        CLKDIV          : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        D4              : in     vl_logic;
        D5              : in     vl_logic;
        D6              : in     vl_logic;
        D7              : in     vl_logic;
        D8              : in     vl_logic;
        OCE             : in     vl_logic;
        RST             : in     vl_logic;
        SHIFTIN1        : in     vl_logic;
        SHIFTIN2        : in     vl_logic;
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        TBYTEIN         : in     vl_logic;
        TCE             : in     vl_logic
    );
end OSERDESE2;

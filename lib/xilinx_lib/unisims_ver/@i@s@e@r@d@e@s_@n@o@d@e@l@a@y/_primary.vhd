library verilog;
use verilog.vl_types.all;
entity ISERDES_NODELAY is
    generic(
        BITSLIP_ENABLE  : string  := "FALSE";
        DATA_RATE       : string  := "DDR";
        DATA_WIDTH      : integer := 4;
        INIT_Q1         : integer := 0;
        INIT_Q2         : integer := 0;
        INIT_Q3         : integer := 0;
        INIT_Q4         : integer := 0;
        INTERFACE_TYPE  : string  := "MEMORY";
        NUM_CE          : integer := 2;
        SERDES_MODE     : string  := "MASTER"
    );
    port(
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Q4              : out    vl_logic;
        Q5              : out    vl_logic;
        Q6              : out    vl_logic;
        SHIFTOUT1       : out    vl_logic;
        SHIFTOUT2       : out    vl_logic;
        BITSLIP         : in     vl_logic;
        CE1             : in     vl_logic;
        CE2             : in     vl_logic;
        CLK             : in     vl_logic;
        CLKB            : in     vl_logic;
        CLKDIV          : in     vl_logic;
        D               : in     vl_logic;
        OCLK            : in     vl_logic;
        RST             : in     vl_logic;
        SHIFTIN1        : in     vl_logic;
        SHIFTIN2        : in     vl_logic
    );
end ISERDES_NODELAY;

library verilog;
use verilog.vl_types.all;
entity ISERDES is
    generic(
        BITSLIP_ENABLE  : string  := "FALSE";
        DATA_RATE       : string  := "DDR";
        DATA_WIDTH      : integer := 4;
        INIT_Q1         : integer := 0;
        INIT_Q2         : integer := 0;
        INIT_Q3         : integer := 0;
        INIT_Q4         : integer := 0;
        INTERFACE_TYPE  : string  := "MEMORY";
        IOBDELAY        : string  := "NONE";
        IOBDELAY_TYPE   : string  := "DEFAULT";
        IOBDELAY_VALUE  : integer := 0;
        NUM_CE          : integer := 2;
        SERDES_MODE     : string  := "MASTER";
        SRVAL_Q1        : integer := 0;
        SRVAL_Q2        : integer := 0;
        SRVAL_Q3        : integer := 0;
        SRVAL_Q4        : integer := 0
    );
    port(
        O               : out    vl_logic;
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
        CLKDIV          : in     vl_logic;
        D               : in     vl_logic;
        DLYCE           : in     vl_logic;
        DLYINC          : in     vl_logic;
        DLYRST          : in     vl_logic;
        OCLK            : in     vl_logic;
        REV             : in     vl_logic;
        SHIFTIN1        : in     vl_logic;
        SHIFTIN2        : in     vl_logic;
        SR              : in     vl_logic
    );
end ISERDES;

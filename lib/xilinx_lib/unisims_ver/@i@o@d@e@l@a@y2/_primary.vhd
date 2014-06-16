library verilog;
use verilog.vl_types.all;
entity IODELAY2 is
    generic(
        COUNTER_WRAPAROUND: string  := "WRAPAROUND";
        DATA_RATE       : string  := "SDR";
        DELAY_SRC       : string  := "IO";
        IDELAY2_VALUE   : integer := 0;
        IDELAY_MODE     : string  := "NORMAL";
        IDELAY_TYPE     : string  := "DEFAULT";
        IDELAY_VALUE    : integer := 0;
        ODELAY_VALUE    : integer := 0;
        SERDES_MODE     : string  := "NONE";
        SIM_TAPDELAY_VALUE: integer := 75
    );
    port(
        BUSY            : out    vl_logic;
        DATAOUT         : out    vl_logic;
        DATAOUT2        : out    vl_logic;
        DOUT            : out    vl_logic;
        TOUT            : out    vl_logic;
        CAL             : in     vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        IDATAIN         : in     vl_logic;
        INC             : in     vl_logic;
        IOCLK0          : in     vl_logic;
        IOCLK1          : in     vl_logic;
        ODATAIN         : in     vl_logic;
        RST             : in     vl_logic;
        T               : in     vl_logic
    );
end IODELAY2;

library verilog;
use verilog.vl_types.all;
entity IODELAY is
    generic(
        DELAY_SRC       : string  := "I";
        HIGH_PERFORMANCE_MODE: string  := "TRUE";
        IDELAY_TYPE     : string  := "DEFAULT";
        IDELAY_VALUE    : integer := 0;
        ODELAY_VALUE    : integer := 0;
        REFCLK_FREQUENCY: real    := 200.000000;
        SIGNAL_PATTERN  : string  := "DATA"
    );
    port(
        DATAOUT         : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        DATAIN          : in     vl_logic;
        IDATAIN         : in     vl_logic;
        INC             : in     vl_logic;
        ODATAIN         : in     vl_logic;
        RST             : in     vl_logic;
        T               : in     vl_logic
    );
end IODELAY;

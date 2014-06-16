library verilog;
use verilog.vl_types.all;
entity ODELAYE2 is
    generic(
        CINVCTRL_SEL    : string  := "FALSE";
        DELAY_SRC       : string  := "ODATAIN";
        HIGH_PERFORMANCE_MODE: string  := "FALSE";
        ODELAY_TYPE     : string  := "FIXED";
        ODELAY_VALUE    : integer := 0;
        PIPE_SEL        : string  := "FALSE";
        REFCLK_FREQUENCY: real    := 200.000000;
        SIGNAL_PATTERN  : string  := "DATA"
    );
    port(
        CNTVALUEOUT     : out    vl_logic_vector(4 downto 0);
        DATAOUT         : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        CINVCTRL        : in     vl_logic;
        CLKIN           : in     vl_logic;
        CNTVALUEIN      : in     vl_logic_vector(4 downto 0);
        INC             : in     vl_logic;
        LD              : in     vl_logic;
        LDPIPEEN        : in     vl_logic;
        ODATAIN         : in     vl_logic;
        REGRST          : in     vl_logic
    );
end ODELAYE2;

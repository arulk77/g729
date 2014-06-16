library verilog;
use verilog.vl_types.all;
entity IDELAYE2_FINEDELAY is
    generic(
        CINVCTRL_SEL    : string  := "FALSE";
        DELAY_SRC       : string  := "IDATAIN";
        FINEDELAY       : string  := "BYPASS";
        HIGH_PERFORMANCE_MODE: string  := "FALSE";
        IDELAY_TYPE     : string  := "FIXED";
        IDELAY_VALUE    : integer := 0;
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
        CNTVALUEIN      : in     vl_logic_vector(4 downto 0);
        DATAIN          : in     vl_logic;
        IDATAIN         : in     vl_logic;
        IFDLY           : in     vl_logic_vector(2 downto 0);
        INC             : in     vl_logic;
        LD              : in     vl_logic;
        LDPIPEEN        : in     vl_logic;
        REGRST          : in     vl_logic
    );
end IDELAYE2_FINEDELAY;

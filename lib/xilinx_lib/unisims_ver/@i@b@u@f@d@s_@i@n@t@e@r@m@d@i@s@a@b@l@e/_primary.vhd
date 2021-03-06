library verilog;
use verilog.vl_types.all;
entity IBUFDS_INTERMDISABLE is
    generic(
        DIFF_TERM       : string  := "FALSE";
        DQS_BIAS        : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        INTERMDISABLE   : in     vl_logic
    );
end IBUFDS_INTERMDISABLE;

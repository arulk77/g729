library verilog;
use verilog.vl_types.all;
entity IBUFDS_DIFF_OUT_IBUFDISABLE is
    generic(
        DIFF_TERM       : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic;
        IBUFDISABLE     : in     vl_logic
    );
end IBUFDS_DIFF_OUT_IBUFDISABLE;

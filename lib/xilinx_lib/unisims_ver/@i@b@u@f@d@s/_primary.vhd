library verilog;
use verilog.vl_types.all;
entity IBUFDS is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        DIFF_TERM       : string  := "FALSE";
        DQS_BIAS        : string  := "FALSE";
        IBUF_DELAY_VALUE: string  := "0";
        IBUF_LOW_PWR    : string  := "TRUE";
        IFD_DELAY_VALUE : string  := "AUTO";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS;

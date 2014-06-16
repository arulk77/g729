library verilog;
use verilog.vl_types.all;
entity IBUFGDS is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        DIFF_TERM       : string  := "FALSE";
        IBUF_DELAY_VALUE: string  := "0";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFGDS;

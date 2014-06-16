library verilog;
use verilog.vl_types.all;
entity IBUF is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        IBUF_DELAY_VALUE: string  := "0";
        IBUF_LOW_PWR    : string  := "TRUE";
        IFD_DELAY_VALUE : string  := "AUTO";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end IBUF;

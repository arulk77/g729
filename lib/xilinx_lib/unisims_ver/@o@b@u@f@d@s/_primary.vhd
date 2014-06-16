library verilog;
use verilog.vl_types.all;
entity OBUFDS is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic
    );
end OBUFDS;

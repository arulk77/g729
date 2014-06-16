library verilog;
use verilog.vl_types.all;
entity OBUFTDS is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFTDS;

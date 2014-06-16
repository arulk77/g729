library verilog;
use verilog.vl_types.all;
entity OBUFT is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        DRIVE           : integer := 12;
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFT;

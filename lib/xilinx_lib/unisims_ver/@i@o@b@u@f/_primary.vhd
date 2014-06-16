library verilog;
use verilog.vl_types.all;
entity IOBUF is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        DRIVE           : integer := 12;
        IBUF_DELAY_VALUE: string  := "0";
        IBUF_LOW_PWR    : string  := "TRUE";
        IFD_DELAY_VALUE : string  := "AUTO";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end IOBUF;

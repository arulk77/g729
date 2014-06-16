library verilog;
use verilog.vl_types.all;
entity IOBUF_DCIEN is
    generic(
        DRIVE           : integer := 12;
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        T               : in     vl_logic
    );
end IOBUF_DCIEN;
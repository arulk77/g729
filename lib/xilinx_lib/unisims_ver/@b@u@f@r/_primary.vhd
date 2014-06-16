library verilog;
use verilog.vl_types.all;
entity BUFR is
    generic(
        BUFR_DIVIDE     : string  := "BYPASS";
        SIM_DEVICE      : string  := "VIRTEX4"
    );
    port(
        O               : out    vl_logic;
        CE              : in     vl_logic;
        CLR             : in     vl_logic;
        I               : in     vl_logic
    );
end BUFR;

library verilog;
use verilog.vl_types.all;
entity IDELAY is
    generic(
        IOBDELAY_TYPE   : string  := "DEFAULT";
        IOBDELAY_VALUE  : integer := 0
    );
    port(
        O               : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        I               : in     vl_logic;
        INC             : in     vl_logic;
        RST             : in     vl_logic
    );
end IDELAY;

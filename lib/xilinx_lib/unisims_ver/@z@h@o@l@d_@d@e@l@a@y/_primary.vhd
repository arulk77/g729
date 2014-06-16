library verilog;
use verilog.vl_types.all;
entity ZHOLD_DELAY is
    generic(
        ZHOLD_FABRIC    : string  := "DEFAULT";
        ZHOLD_IFF       : string  := "DEFAULT"
    );
    port(
        DLYFABRIC       : out    vl_logic;
        DLYIFF          : out    vl_logic;
        DLYIN           : in     vl_logic
    );
end ZHOLD_DELAY;

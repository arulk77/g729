library verilog;
use verilog.vl_types.all;
entity AUTOBUF is
    generic(
        BUFFER_TYPE     : string  := "AUTO"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end AUTOBUF;

library verilog;
use verilog.vl_types.all;
entity IOBUF_LVCMOS25_S_6 is
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end IOBUF_LVCMOS25_S_6;

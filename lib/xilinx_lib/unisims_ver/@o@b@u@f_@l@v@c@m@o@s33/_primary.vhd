library verilog;
use verilog.vl_types.all;
entity OBUF_LVCMOS33 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end OBUF_LVCMOS33;
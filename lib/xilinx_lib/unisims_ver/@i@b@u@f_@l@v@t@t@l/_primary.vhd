library verilog;
use verilog.vl_types.all;
entity IBUF_LVTTL is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end IBUF_LVTTL;

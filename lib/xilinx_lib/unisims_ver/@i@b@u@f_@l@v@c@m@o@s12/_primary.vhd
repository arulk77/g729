library verilog;
use verilog.vl_types.all;
entity IBUF_LVCMOS12 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end IBUF_LVCMOS12;
library verilog;
use verilog.vl_types.all;
entity OBUFT_LVCMOS33_S_24 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFT_LVCMOS33_S_24;
library verilog;
use verilog.vl_types.all;
entity OBUFT_LVCMOS25_S_4 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFT_LVCMOS25_S_4;
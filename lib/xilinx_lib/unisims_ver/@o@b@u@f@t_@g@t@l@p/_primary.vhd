library verilog;
use verilog.vl_types.all;
entity OBUFT_GTLP is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFT_GTLP;

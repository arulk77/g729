library verilog;
use verilog.vl_types.all;
entity C_MUX_SLICE_BUFE_V7_0 is
    generic(
        C_WIDTH         : integer := 16
    );
    port(
        I               : in     vl_logic_vector;
        OE              : in     vl_logic;
        O               : out    vl_logic_vector
    );
end C_MUX_SLICE_BUFE_V7_0;

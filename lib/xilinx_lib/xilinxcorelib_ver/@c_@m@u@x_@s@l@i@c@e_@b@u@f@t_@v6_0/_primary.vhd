library verilog;
use verilog.vl_types.all;
entity C_MUX_SLICE_BUFT_V6_0 is
    generic(
        C_WIDTH         : integer := 16
    );
    port(
        I               : in     vl_logic_vector;
        T               : in     vl_logic;
        O               : out    vl_logic_vector
    );
end C_MUX_SLICE_BUFT_V6_0;

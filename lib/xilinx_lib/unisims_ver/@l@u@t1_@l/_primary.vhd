library verilog;
use verilog.vl_types.all;
entity LUT1_L is
    generic(
        INIT            : integer := 0
    );
    port(
        LO              : out    vl_logic;
        I0              : in     vl_logic
    );
end LUT1_L;

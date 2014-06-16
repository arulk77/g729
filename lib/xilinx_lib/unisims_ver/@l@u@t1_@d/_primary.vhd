library verilog;
use verilog.vl_types.all;
entity LUT1_D is
    generic(
        INIT            : integer := 0
    );
    port(
        LO              : out    vl_logic;
        O               : out    vl_logic;
        I0              : in     vl_logic
    );
end LUT1_D;
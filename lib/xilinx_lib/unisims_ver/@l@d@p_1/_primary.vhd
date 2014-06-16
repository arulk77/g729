library verilog;
use verilog.vl_types.all;
entity LDP_1 is
    generic(
        INIT            : integer := 1
    );
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        G               : in     vl_logic;
        PRE             : in     vl_logic
    );
end LDP_1;

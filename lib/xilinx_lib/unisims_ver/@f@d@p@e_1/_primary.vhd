library verilog;
use verilog.vl_types.all;
entity FDPE_1 is
    generic(
        INIT            : integer := 1
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        PRE             : in     vl_logic
    );
end FDPE_1;

library verilog;
use verilog.vl_types.all;
entity FDS_1 is
    generic(
        INIT            : integer := 1
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        S               : in     vl_logic
    );
end FDS_1;

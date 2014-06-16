library verilog;
use verilog.vl_types.all;
entity FDP is
    generic(
        INIT            : integer := 1
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        PRE             : in     vl_logic
    );
end FDP;

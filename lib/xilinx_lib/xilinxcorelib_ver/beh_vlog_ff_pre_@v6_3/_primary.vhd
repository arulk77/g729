library verilog;
use verilog.vl_types.all;
entity beh_vlog_ff_pre_V6_3 is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        PRE             : in     vl_logic
    );
end beh_vlog_ff_pre_V6_3;

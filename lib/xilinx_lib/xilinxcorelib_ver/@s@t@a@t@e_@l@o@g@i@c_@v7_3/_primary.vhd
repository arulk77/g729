library verilog;
use verilog.vl_types.all;
entity STATE_LOGIC_V7_3 is
    generic(
        INIT            : integer := 0
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic
    );
end STATE_LOGIC_V7_3;

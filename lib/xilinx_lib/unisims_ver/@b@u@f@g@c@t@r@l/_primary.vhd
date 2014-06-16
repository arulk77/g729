library verilog;
use verilog.vl_types.all;
entity BUFGCTRL is
    generic(
        INIT_OUT        : integer := 0;
        PRESELECT_I0    : string  := "FALSE";
        PRESELECT_I1    : string  := "FALSE"
    );
    port(
        O               : out    vl_logic;
        CE0             : in     vl_logic;
        CE1             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        IGNORE0         : in     vl_logic;
        IGNORE1         : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic
    );
end BUFGCTRL;

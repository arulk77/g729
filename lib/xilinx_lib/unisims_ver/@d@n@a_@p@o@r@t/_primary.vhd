library verilog;
use verilog.vl_types.all;
entity DNA_PORT is
    generic(
        SIM_DNA_VALUE   : integer := 0
    );
    port(
        DOUT            : out    vl_logic;
        CLK             : in     vl_logic;
        DIN             : in     vl_logic;
        READ            : in     vl_logic;
        SHIFT           : in     vl_logic
    );
end DNA_PORT;

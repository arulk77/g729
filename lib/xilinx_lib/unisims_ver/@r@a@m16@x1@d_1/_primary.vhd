library verilog;
use verilog.vl_types.all;
entity RAM16X1D_1 is
    generic(
        INIT            : integer := 0
    );
    port(
        DPO             : out    vl_logic;
        SPO             : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        D               : in     vl_logic;
        DPRA0           : in     vl_logic;
        DPRA1           : in     vl_logic;
        DPRA2           : in     vl_logic;
        DPRA3           : in     vl_logic;
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM16X1D_1;

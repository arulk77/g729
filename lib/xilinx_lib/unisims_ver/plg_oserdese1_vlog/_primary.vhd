library verilog;
use verilog.vl_types.all;
entity plg_oserdese1_vlog is
    generic(
        ffdcnt          : integer := 1;
        mxdcnt          : integer := 1;
        FFRST           : integer := 145
    );
    port(
        c23             : in     vl_logic;
        c45             : in     vl_logic;
        c67             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        clkdiv          : in     vl_logic;
        rst             : in     vl_logic;
        load            : out    vl_logic;
        IOCLK_GLITCH    : out    vl_logic
    );
end plg_oserdese1_vlog;

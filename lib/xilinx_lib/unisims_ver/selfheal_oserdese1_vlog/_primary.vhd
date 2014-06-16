library verilog;
use verilog.vl_types.all;
entity selfheal_oserdese1_vlog is
    generic(
        FFD             : integer := 10;
        FFCD            : integer := 10;
        MXD             : integer := 10;
        MXR1            : integer := 10
    );
    port(
        dq3             : in     vl_logic;
        dq2             : in     vl_logic;
        dq1             : in     vl_logic;
        dq0             : in     vl_logic;
        CLKDIV          : in     vl_logic;
        srint           : in     vl_logic;
        rst             : in     vl_logic;
        SHO             : out    vl_logic
    );
end selfheal_oserdese1_vlog;

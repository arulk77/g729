library verilog;
use verilog.vl_types.all;
entity dout_oserdese1_vlog is
    generic(
        FFD             : integer := 1;
        FFCD            : integer := 1;
        MXD             : integer := 1;
        MXR1            : integer := 1
    );
    port(
        data1           : in     vl_logic;
        data2           : in     vl_logic;
        CLK             : in     vl_logic;
        BUFO            : in     vl_logic;
        SR              : in     vl_logic;
        OCE             : in     vl_logic;
        OQ              : out    vl_logic;
        d2rnk2          : out    vl_logic;
        DATA_RATE_OQ    : in     vl_logic;
        INIT_OQ         : in     vl_logic;
        SRVAL_OQ        : in     vl_logic;
        DDR3_MODE       : in     vl_logic
    );
end dout_oserdese1_vlog;

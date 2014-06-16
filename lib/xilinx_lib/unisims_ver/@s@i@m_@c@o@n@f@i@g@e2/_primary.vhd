library verilog;
use verilog.vl_types.all;
entity SIM_CONFIGE2 is
    generic(
        DEVICE_ID       : integer := 0;
        ICAP_SUPPORT    : string  := "FALSE";
        ICAP_WIDTH      : string  := "X8"
    );
    port(
        CSOB            : out    vl_logic;
        DONE            : inout  vl_logic;
        CCLK            : in     vl_logic;
        CSB             : in     vl_logic;
        D               : inout  vl_logic_vector(31 downto 0);
        INITB           : inout  vl_logic;
        M               : in     vl_logic_vector(2 downto 0);
        PROGB           : in     vl_logic;
        RDWRB           : in     vl_logic
    );
end SIM_CONFIGE2;

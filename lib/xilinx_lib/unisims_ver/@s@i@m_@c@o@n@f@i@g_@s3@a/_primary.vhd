library verilog;
use verilog.vl_types.all;
entity SIM_CONFIG_S3A is
    generic(
        DEVICE_ID       : integer := 0
    );
    port(
        CSOB            : out    vl_logic;
        DONE            : inout  vl_logic;
        CCLK            : in     vl_logic;
        D               : inout  vl_logic_vector(7 downto 0);
        DCMLOCK         : in     vl_logic;
        CSIB            : in     vl_logic;
        INITB           : inout  vl_logic;
        M               : in     vl_logic_vector(2 downto 0);
        PROGB           : in     vl_logic;
        RDWRB           : in     vl_logic
    );
end SIM_CONFIG_S3A;

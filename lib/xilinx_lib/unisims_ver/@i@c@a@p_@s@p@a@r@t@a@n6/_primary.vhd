library verilog;
use verilog.vl_types.all;
entity ICAP_SPARTAN6 is
    generic(
        DEVICE_ID       : integer := 67109011;
        SIM_CFG_FILE_NAME: string  := "NONE"
    );
    port(
        BUSY            : out    vl_logic;
        O               : out    vl_logic_vector(15 downto 0);
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        WRITE           : in     vl_logic
    );
end ICAP_SPARTAN6;

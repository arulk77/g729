library verilog;
use verilog.vl_types.all;
entity ICAP_VIRTEX6 is
    generic(
        DEVICE_ID       : integer := 69484691;
        ICAP_WIDTH      : string  := "X8";
        SIM_CFG_FILE_NAME: string  := "NONE"
    );
    port(
        BUSY            : out    vl_logic;
        O               : out    vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        CSB             : in     vl_logic;
        I               : in     vl_logic_vector(31 downto 0);
        RDWRB           : in     vl_logic
    );
end ICAP_VIRTEX6;

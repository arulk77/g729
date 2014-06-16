library verilog;
use verilog.vl_types.all;
entity ICAPE2 is
    generic(
        DEVICE_ID       : integer := 56955027;
        ICAP_WIDTH      : string  := "X32";
        SIM_CFG_FILE_NAME: string  := "NONE"
    );
    port(
        O               : out    vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        CSIB            : in     vl_logic;
        I               : in     vl_logic_vector(31 downto 0);
        RDWRB           : in     vl_logic
    );
end ICAPE2;

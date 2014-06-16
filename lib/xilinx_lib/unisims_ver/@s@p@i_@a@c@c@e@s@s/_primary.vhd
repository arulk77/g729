library verilog;
use verilog.vl_types.all;
entity SPI_ACCESS is
    generic(
        SIM_DELAY_TYPE  : string  := "SCALED";
        SIM_DEVICE      : string  := "3S1400AN";
        SIM_FACTORY_ID  : integer := 0;
      --SIM_USER_ID     : integer type with unrepresentable value!
        SIM_MEM_FILE    : string  := "NONE"
    );
    port(
        MISO            : out    vl_logic;
        CLK             : in     vl_logic;
        CSB             : in     vl_logic;
        MOSI            : in     vl_logic
    );
end SPI_ACCESS;

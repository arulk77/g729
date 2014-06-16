library verilog;
use verilog.vl_types.all;
entity CRC64 is
    --generic(
      --CRC_INIT        : integer type with unrepresentable value!
    --);
    port(
        CRCOUT          : out    vl_logic_vector(31 downto 0);
        CRCCLK          : in     vl_logic;
        CRCDATAVALID    : in     vl_logic;
        CRCDATAWIDTH    : in     vl_logic_vector(2 downto 0);
        CRCIN           : in     vl_logic_vector(63 downto 0);
        CRCRESET        : in     vl_logic
    );
end CRC64;

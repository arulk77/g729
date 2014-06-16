library verilog;
use verilog.vl_types.all;
entity ICAP_VIRTEX4 is
    generic(
        ICAP_WIDTH      : string  := "X8"
    );
    port(
        BUSY            : out    vl_logic;
        O               : out    vl_logic_vector(31 downto 0);
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(31 downto 0);
        WRITE           : in     vl_logic
    );
end ICAP_VIRTEX4;

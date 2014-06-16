library verilog;
use verilog.vl_types.all;
entity FRAME_ECC_VIRTEX5 is
    port(
        CRCERROR        : out    vl_logic;
        ECCERROR        : out    vl_logic;
        SYNDROME        : out    vl_logic_vector(11 downto 0);
        SYNDROMEVALID   : out    vl_logic
    );
end FRAME_ECC_VIRTEX5;

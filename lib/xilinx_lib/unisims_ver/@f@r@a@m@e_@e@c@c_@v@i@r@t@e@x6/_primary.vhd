library verilog;
use verilog.vl_types.all;
entity FRAME_ECC_VIRTEX6 is
    generic(
        FARSRC          : string  := "EFAR";
        FRAME_RBT_IN_FILENAME: string  := "NONE"
    );
    port(
        CRCERROR        : out    vl_logic;
        ECCERROR        : out    vl_logic;
        ECCERRORSINGLE  : out    vl_logic;
        FAR             : out    vl_logic_vector(23 downto 0);
        SYNBIT          : out    vl_logic_vector(4 downto 0);
        SYNDROME        : out    vl_logic_vector(12 downto 0);
        SYNDROMEVALID   : out    vl_logic;
        SYNWORD         : out    vl_logic_vector(6 downto 0)
    );
end FRAME_ECC_VIRTEX6;

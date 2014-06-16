library verilog;
use verilog.vl_types.all;
entity AFIFO36_INTERNAL is
    generic(
        DATA_WIDTH      : integer := 4;
        DO_REG          : integer := 1;
        EN_SYN          : string  := "FALSE";
        FIRST_WORD_FALL_THROUGH: string  := "FALSE";
        ALMOST_EMPTY_OFFSET: integer := 128;
        ALMOST_FULL_OFFSET: integer := 128;
        EN_ECC_WRITE    : string  := "FALSE";
        EN_ECC_READ     : string  := "FALSE";
        SIM_MODE        : string  := "SAFE";
        FIFO_SIZE       : integer := 36
    );
    port(
        ALMOSTEMPTY     : out    vl_logic;
        ALMOSTFULL      : out    vl_logic;
        DBITERR         : out    vl_logic;
        DO              : out    vl_logic_vector(63 downto 0);
        DOP             : out    vl_logic_vector(7 downto 0);
        ECCPARITY       : out    vl_logic_vector(7 downto 0);
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        RDCOUNT         : out    vl_logic_vector(12 downto 0);
        RDERR           : out    vl_logic;
        SBITERR         : out    vl_logic;
        WRCOUNT         : out    vl_logic_vector(12 downto 0);
        WRERR           : out    vl_logic;
        DI              : in     vl_logic_vector(63 downto 0);
        DIP             : in     vl_logic_vector(7 downto 0);
        RDCLK           : in     vl_logic;
        RDEN            : in     vl_logic;
        RDRCLK          : in     vl_logic;
        RST             : in     vl_logic;
        WRCLK           : in     vl_logic;
        WREN            : in     vl_logic
    );
end AFIFO36_INTERNAL;

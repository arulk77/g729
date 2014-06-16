library verilog;
use verilog.vl_types.all;
entity FIFO18E1 is
    generic(
        ALMOST_EMPTY_OFFSET: integer := 128;
        ALMOST_FULL_OFFSET: integer := 128;
        DATA_WIDTH      : integer := 4;
        DO_REG          : integer := 1;
        EN_SYN          : string  := "FALSE";
        FIFO_MODE       : string  := "FIFO18";
        FIRST_WORD_FALL_THROUGH: string  := "FALSE";
        INIT            : integer := 0;
        SIM_DEVICE      : string  := "VIRTEX6";
        SRVAL           : integer := 0
    );
    port(
        ALMOSTEMPTY     : out    vl_logic;
        ALMOSTFULL      : out    vl_logic;
        DO              : out    vl_logic_vector(31 downto 0);
        DOP             : out    vl_logic_vector(3 downto 0);
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        RDCOUNT         : out    vl_logic_vector(11 downto 0);
        RDERR           : out    vl_logic;
        WRCOUNT         : out    vl_logic_vector(11 downto 0);
        WRERR           : out    vl_logic;
        DI              : in     vl_logic_vector(31 downto 0);
        DIP             : in     vl_logic_vector(3 downto 0);
        RDCLK           : in     vl_logic;
        RDEN            : in     vl_logic;
        REGCE           : in     vl_logic;
        RST             : in     vl_logic;
        RSTREG          : in     vl_logic;
        WRCLK           : in     vl_logic;
        WREN            : in     vl_logic
    );
end FIFO18E1;

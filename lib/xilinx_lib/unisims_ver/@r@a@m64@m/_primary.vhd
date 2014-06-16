library verilog;
use verilog.vl_types.all;
entity RAM64M is
    generic(
        INIT_A          : integer := 0;
        INIT_B          : integer := 0;
        INIT_C          : integer := 0;
        INIT_D          : integer := 0
    );
    port(
        DOA             : out    vl_logic;
        DOB             : out    vl_logic;
        DOC             : out    vl_logic;
        DOD             : out    vl_logic;
        ADDRA           : in     vl_logic_vector(5 downto 0);
        ADDRB           : in     vl_logic_vector(5 downto 0);
        ADDRC           : in     vl_logic_vector(5 downto 0);
        ADDRD           : in     vl_logic_vector(5 downto 0);
        DIA             : in     vl_logic;
        DIB             : in     vl_logic;
        DIC             : in     vl_logic;
        DID             : in     vl_logic;
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM64M;

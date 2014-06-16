library verilog;
use verilog.vl_types.all;
entity RAM32M is
    generic(
        INIT_A          : integer := 0;
        INIT_B          : integer := 0;
        INIT_C          : integer := 0;
        INIT_D          : integer := 0
    );
    port(
        DOA             : out    vl_logic_vector(1 downto 0);
        DOB             : out    vl_logic_vector(1 downto 0);
        DOC             : out    vl_logic_vector(1 downto 0);
        DOD             : out    vl_logic_vector(1 downto 0);
        ADDRA           : in     vl_logic_vector(4 downto 0);
        ADDRB           : in     vl_logic_vector(4 downto 0);
        ADDRC           : in     vl_logic_vector(4 downto 0);
        ADDRD           : in     vl_logic_vector(4 downto 0);
        DIA             : in     vl_logic_vector(1 downto 0);
        DIB             : in     vl_logic_vector(1 downto 0);
        DIC             : in     vl_logic_vector(1 downto 0);
        DID             : in     vl_logic_vector(1 downto 0);
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
end RAM32M;

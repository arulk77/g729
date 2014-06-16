library verilog;
use verilog.vl_types.all;
entity SRLC32E is
    generic(
        INIT            : integer := 0
    );
    port(
        Q               : out    vl_logic;
        Q31             : out    vl_logic;
        A               : in     vl_logic_vector(4 downto 0);
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic
    );
end SRLC32E;

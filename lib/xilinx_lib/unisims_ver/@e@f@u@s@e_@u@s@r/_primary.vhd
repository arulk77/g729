library verilog;
use verilog.vl_types.all;
entity EFUSE_USR is
    generic(
        SIM_EFUSE_VALUE : integer := 0
    );
    port(
        EFUSEUSR        : out    vl_logic_vector(31 downto 0)
    );
end EFUSE_USR;

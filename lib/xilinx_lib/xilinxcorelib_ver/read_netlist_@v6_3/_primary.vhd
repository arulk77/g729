library verilog;
use verilog.vl_types.all;
entity read_netlist_V6_3 is
    generic(
        C_AXI_TYPE      : integer := 1;
        C_ADDRB_WIDTH   : integer := 12
    );
    port(
        S_AXI_R_LAST_INT: in     vl_logic;
        S_ACLK          : in     vl_logic;
        S_ARESETN       : in     vl_logic;
        S_AXI_ARVALID   : in     vl_logic;
        S_AXI_RREADY    : in     vl_logic;
        S_AXI_INCR_ADDR : out    vl_logic;
        S_AXI_ADDR_EN   : out    vl_logic;
        S_AXI_SINGLE_TRANS: out    vl_logic;
        S_AXI_MUX_SEL   : out    vl_logic;
        S_AXI_R_LAST    : out    vl_logic;
        S_AXI_ARREADY   : out    vl_logic;
        S_AXI_RLAST     : out    vl_logic;
        S_AXI_RVALID    : out    vl_logic;
        S_AXI_RD_EN     : out    vl_logic;
        S_AXI_ARLEN     : in     vl_logic_vector(7 downto 0)
    );
end read_netlist_V6_3;

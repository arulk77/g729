library verilog;
use verilog.vl_types.all;
entity blk_mem_axi_read_wrapper_beh_V6_2 is
    generic(
        C_INTERFACE_TYPE: integer := 0;
        C_AXI_TYPE      : integer := 0;
        C_AXI_SLAVE_TYPE: integer := 0;
        C_MEMORY_TYPE   : integer := 0;
        C_WRITE_WIDTH_A : integer := 4;
        C_WRITE_DEPTH_A : integer := 32;
        C_ADDRA_WIDTH   : integer := 12;
        C_AXI_PIPELINE_STAGES: integer := 0;
        C_AXI_ARADDR_WIDTH: integer := 12;
        C_HAS_AXI_ID    : integer := 0;
        C_AXI_ID_WIDTH  : integer := 4;
        C_ADDRB_WIDTH   : integer := 12
    );
    port(
        S_ACLK          : in     vl_logic;
        S_ARESETN       : in     vl_logic;
        S_AXI_ARADDR    : in     vl_logic_vector;
        S_AXI_ARLEN     : in     vl_logic_vector(7 downto 0);
        S_AXI_ARSIZE    : in     vl_logic_vector(2 downto 0);
        S_AXI_ARBURST   : in     vl_logic_vector(1 downto 0);
        S_AXI_ARVALID   : in     vl_logic;
        S_AXI_ARREADY   : out    vl_logic;
        S_AXI_RLAST     : out    vl_logic;
        S_AXI_RVALID    : out    vl_logic;
        S_AXI_RREADY    : in     vl_logic;
        S_AXI_ARID      : in     vl_logic_vector;
        S_AXI_RID       : out    vl_logic_vector;
        S_AXI_ARADDR_OUT: out    vl_logic_vector;
        S_AXI_RD_EN     : out    vl_logic
    );
end blk_mem_axi_read_wrapper_beh_V6_2;

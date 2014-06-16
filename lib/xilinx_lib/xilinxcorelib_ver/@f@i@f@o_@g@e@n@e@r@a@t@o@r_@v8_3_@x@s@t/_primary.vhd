library verilog;
use verilog.vl_types.all;
entity FIFO_GENERATOR_V8_3_XST is
    generic(
        C_COMMON_CLOCK  : integer := 0;
        C_COUNT_TYPE    : integer := 0;
        C_DATA_COUNT_WIDTH: integer := 2;
        C_DEFAULT_VALUE : string  := "";
        C_DIN_WIDTH     : integer := 8;
        C_DOUT_RST_VAL  : string  := "";
        C_DOUT_WIDTH    : integer := 8;
        C_ENABLE_RLOCS  : integer := 0;
        C_FAMILY        : string  := "";
        C_FULL_FLAGS_RST_VAL: integer := 1;
        C_HAS_ALMOST_EMPTY: integer := 0;
        C_HAS_ALMOST_FULL: integer := 0;
        C_HAS_BACKUP    : integer := 0;
        C_HAS_DATA_COUNT: integer := 0;
        C_HAS_INT_CLK   : integer := 0;
        C_HAS_MEMINIT_FILE: integer := 0;
        C_HAS_OVERFLOW  : integer := 0;
        C_HAS_RD_DATA_COUNT: integer := 0;
        C_HAS_RD_RST    : integer := 0;
        C_HAS_RST       : integer := 1;
        C_HAS_SRST      : integer := 0;
        C_HAS_UNDERFLOW : integer := 0;
        C_HAS_VALID     : integer := 0;
        C_HAS_WR_ACK    : integer := 0;
        C_HAS_WR_DATA_COUNT: integer := 0;
        C_HAS_WR_RST    : integer := 0;
        C_IMPLEMENTATION_TYPE: integer := 0;
        C_INIT_WR_PNTR_VAL: integer := 0;
        C_MEMORY_TYPE   : integer := 1;
        C_MIF_FILE_NAME : string  := "";
        C_OPTIMIZATION_MODE: integer := 0;
        C_OVERFLOW_LOW  : integer := 0;
        C_PRELOAD_LATENCY: integer := 1;
        C_PRELOAD_REGS  : integer := 0;
        C_PRIM_FIFO_TYPE: string  := "4kx4";
        C_PROG_EMPTY_THRESH_ASSERT_VAL: integer := 0;
        C_PROG_EMPTY_THRESH_NEGATE_VAL: integer := 0;
        C_PROG_EMPTY_TYPE: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL: integer := 0;
        C_PROG_FULL_THRESH_NEGATE_VAL: integer := 0;
        C_PROG_FULL_TYPE: integer := 0;
        C_RD_DATA_COUNT_WIDTH: integer := 2;
        C_RD_DEPTH      : integer := 256;
        C_RD_FREQ       : integer := 1;
        C_RD_PNTR_WIDTH : integer := 8;
        C_UNDERFLOW_LOW : integer := 0;
        C_USE_DOUT_RST  : integer := 0;
        C_USE_ECC       : integer := 0;
        C_USE_EMBEDDED_REG: integer := 0;
        C_USE_FIFO16_FLAGS: integer := 0;
        C_USE_FWFT_DATA_COUNT: integer := 0;
        C_VALID_LOW     : integer := 0;
        C_WR_ACK_LOW    : integer := 0;
        C_WR_DATA_COUNT_WIDTH: integer := 2;
        C_WR_DEPTH      : integer := 256;
        C_WR_FREQ       : integer := 1;
        C_WR_PNTR_WIDTH : integer := 8;
        C_WR_RESPONSE_LATENCY: integer := 1;
        C_MSGON_VAL     : integer := 1;
        C_ENABLE_RST_SYNC: integer := 1;
        C_ERROR_INJECTION_TYPE: integer := 0;
        C_INTERFACE_TYPE: integer := 0;
        C_AXI_TYPE      : integer := 0;
        C_HAS_AXI_WR_CHANNEL: integer := 0;
        C_HAS_AXI_RD_CHANNEL: integer := 0;
        C_HAS_SLAVE_CE  : integer := 0;
        C_HAS_MASTER_CE : integer := 0;
        C_ADD_NGC_CONSTRAINT: integer := 0;
        C_USE_COMMON_UNDERFLOW: integer := 0;
        C_USE_COMMON_OVERFLOW: integer := 0;
        C_USE_DEFAULT_SETTINGS: integer := 0;
        C_AXI_ID_WIDTH  : integer := 0;
        C_AXI_ADDR_WIDTH: integer := 0;
        C_AXI_DATA_WIDTH: integer := 0;
        C_HAS_AXI_AWUSER: integer := 0;
        C_HAS_AXI_WUSER : integer := 0;
        C_HAS_AXI_BUSER : integer := 0;
        C_HAS_AXI_ARUSER: integer := 0;
        C_HAS_AXI_RUSER : integer := 0;
        C_AXI_ARUSER_WIDTH: integer := 0;
        C_AXI_AWUSER_WIDTH: integer := 0;
        C_AXI_WUSER_WIDTH: integer := 0;
        C_AXI_BUSER_WIDTH: integer := 0;
        C_AXI_RUSER_WIDTH: integer := 0;
        C_HAS_AXIS_TDATA: integer := 0;
        C_HAS_AXIS_TID  : integer := 0;
        C_HAS_AXIS_TDEST: integer := 0;
        C_HAS_AXIS_TUSER: integer := 0;
        C_HAS_AXIS_TREADY: integer := 0;
        C_HAS_AXIS_TLAST: integer := 0;
        C_HAS_AXIS_TSTRB: integer := 0;
        C_HAS_AXIS_TKEEP: integer := 0;
        C_AXIS_TDATA_WIDTH: integer := 1;
        C_AXIS_TID_WIDTH: integer := 1;
        C_AXIS_TDEST_WIDTH: integer := 1;
        C_AXIS_TUSER_WIDTH: integer := 1;
        C_AXIS_TSTRB_WIDTH: integer := 1;
        C_AXIS_TKEEP_WIDTH: integer := 1;
        C_WACH_TYPE     : integer := 0;
        C_WDCH_TYPE     : integer := 0;
        C_WRCH_TYPE     : integer := 0;
        C_RACH_TYPE     : integer := 0;
        C_RDCH_TYPE     : integer := 0;
        C_AXIS_TYPE     : integer := 0;
        C_IMPLEMENTATION_TYPE_WACH: integer := 0;
        C_IMPLEMENTATION_TYPE_WDCH: integer := 0;
        C_IMPLEMENTATION_TYPE_WRCH: integer := 0;
        C_IMPLEMENTATION_TYPE_RACH: integer := 0;
        C_IMPLEMENTATION_TYPE_RDCH: integer := 0;
        C_IMPLEMENTATION_TYPE_AXIS: integer := 0;
        C_APPLICATION_TYPE_WACH: integer := 0;
        C_APPLICATION_TYPE_WDCH: integer := 0;
        C_APPLICATION_TYPE_WRCH: integer := 0;
        C_APPLICATION_TYPE_RACH: integer := 0;
        C_APPLICATION_TYPE_RDCH: integer := 0;
        C_APPLICATION_TYPE_AXIS: integer := 0;
        C_USE_ECC_WACH  : integer := 0;
        C_USE_ECC_WDCH  : integer := 0;
        C_USE_ECC_WRCH  : integer := 0;
        C_USE_ECC_RACH  : integer := 0;
        C_USE_ECC_RDCH  : integer := 0;
        C_USE_ECC_AXIS  : integer := 0;
        C_ERROR_INJECTION_TYPE_WACH: integer := 0;
        C_ERROR_INJECTION_TYPE_WDCH: integer := 0;
        C_ERROR_INJECTION_TYPE_WRCH: integer := 0;
        C_ERROR_INJECTION_TYPE_RACH: integer := 0;
        C_ERROR_INJECTION_TYPE_RDCH: integer := 0;
        C_ERROR_INJECTION_TYPE_AXIS: integer := 0;
        C_DIN_WIDTH_WACH: integer := 1;
        C_DIN_WIDTH_WDCH: integer := 1;
        C_DIN_WIDTH_WRCH: integer := 1;
        C_DIN_WIDTH_RACH: integer := 1;
        C_DIN_WIDTH_RDCH: integer := 1;
        C_DIN_WIDTH_AXIS: integer := 1;
        C_WR_DEPTH_WACH : integer := 16;
        C_WR_DEPTH_WDCH : integer := 16;
        C_WR_DEPTH_WRCH : integer := 16;
        C_WR_DEPTH_RACH : integer := 16;
        C_WR_DEPTH_RDCH : integer := 16;
        C_WR_DEPTH_AXIS : integer := 16;
        C_WR_PNTR_WIDTH_WACH: integer := 4;
        C_WR_PNTR_WIDTH_WDCH: integer := 4;
        C_WR_PNTR_WIDTH_WRCH: integer := 4;
        C_WR_PNTR_WIDTH_RACH: integer := 4;
        C_WR_PNTR_WIDTH_RDCH: integer := 4;
        C_WR_PNTR_WIDTH_AXIS: integer := 4;
        C_HAS_DATA_COUNTS_WACH: integer := 0;
        C_HAS_DATA_COUNTS_WDCH: integer := 0;
        C_HAS_DATA_COUNTS_WRCH: integer := 0;
        C_HAS_DATA_COUNTS_RACH: integer := 0;
        C_HAS_DATA_COUNTS_RDCH: integer := 0;
        C_HAS_DATA_COUNTS_AXIS: integer := 0;
        C_HAS_PROG_FLAGS_WACH: integer := 0;
        C_HAS_PROG_FLAGS_WDCH: integer := 0;
        C_HAS_PROG_FLAGS_WRCH: integer := 0;
        C_HAS_PROG_FLAGS_RACH: integer := 0;
        C_HAS_PROG_FLAGS_RDCH: integer := 0;
        C_HAS_PROG_FLAGS_AXIS: integer := 0;
        C_PROG_FULL_TYPE_WACH: integer := 0;
        C_PROG_FULL_TYPE_WDCH: integer := 0;
        C_PROG_FULL_TYPE_WRCH: integer := 0;
        C_PROG_FULL_TYPE_RACH: integer := 0;
        C_PROG_FULL_TYPE_RDCH: integer := 0;
        C_PROG_FULL_TYPE_AXIS: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL_WACH: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL_WDCH: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL_WRCH: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL_RACH: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL_RDCH: integer := 0;
        C_PROG_FULL_THRESH_ASSERT_VAL_AXIS: integer := 0;
        C_PROG_EMPTY_TYPE_WACH: integer := 0;
        C_PROG_EMPTY_TYPE_WDCH: integer := 0;
        C_PROG_EMPTY_TYPE_WRCH: integer := 0;
        C_PROG_EMPTY_TYPE_RACH: integer := 0;
        C_PROG_EMPTY_TYPE_RDCH: integer := 0;
        C_PROG_EMPTY_TYPE_AXIS: integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH: integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH: integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH: integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH: integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH: integer := 0;
        C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS: integer := 0;
        C_REG_SLICE_MODE_WACH: integer := 0;
        C_REG_SLICE_MODE_WDCH: integer := 0;
        C_REG_SLICE_MODE_WRCH: integer := 0;
        C_REG_SLICE_MODE_RACH: integer := 0;
        C_REG_SLICE_MODE_RDCH: integer := 0;
        C_REG_SLICE_MODE_AXIS: integer := 0
    );
    port(
        BACKUP          : in     vl_logic;
        BACKUP_MARKER   : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        SRST            : in     vl_logic;
        WR_CLK          : in     vl_logic;
        WR_RST          : in     vl_logic;
        RD_CLK          : in     vl_logic;
        RD_RST          : in     vl_logic;
        DIN             : in     vl_logic_vector;
        WR_EN           : in     vl_logic;
        RD_EN           : in     vl_logic;
        PROG_EMPTY_THRESH: in     vl_logic_vector;
        PROG_EMPTY_THRESH_ASSERT: in     vl_logic_vector;
        PROG_EMPTY_THRESH_NEGATE: in     vl_logic_vector;
        PROG_FULL_THRESH: in     vl_logic_vector;
        PROG_FULL_THRESH_ASSERT: in     vl_logic_vector;
        PROG_FULL_THRESH_NEGATE: in     vl_logic_vector;
        INT_CLK         : in     vl_logic;
        INJECTDBITERR   : in     vl_logic;
        INJECTSBITERR   : in     vl_logic;
        DOUT            : out    vl_logic_vector;
        FULL            : out    vl_logic;
        ALMOST_FULL     : out    vl_logic;
        WR_ACK          : out    vl_logic;
        OVERFLOW        : out    vl_logic;
        EMPTY           : out    vl_logic;
        ALMOST_EMPTY    : out    vl_logic;
        VALID           : out    vl_logic;
        UNDERFLOW       : out    vl_logic;
        DATA_COUNT      : out    vl_logic_vector;
        RD_DATA_COUNT   : out    vl_logic_vector;
        WR_DATA_COUNT   : out    vl_logic_vector;
        PROG_FULL       : out    vl_logic;
        PROG_EMPTY      : out    vl_logic;
        SBITERR         : out    vl_logic;
        DBITERR         : out    vl_logic;
        M_ACLK          : in     vl_logic;
        S_ACLK          : in     vl_logic;
        S_ARESETN       : in     vl_logic;
        S_ACLK_EN       : in     vl_logic;
        M_ACLK_EN       : in     vl_logic;
        S_AXI_AWID      : in     vl_logic_vector;
        S_AXI_AWADDR    : in     vl_logic_vector;
        S_AXI_AWLEN     : in     vl_logic_vector(7 downto 0);
        S_AXI_AWSIZE    : in     vl_logic_vector(2 downto 0);
        S_AXI_AWBURST   : in     vl_logic_vector(1 downto 0);
        S_AXI_AWLOCK    : in     vl_logic_vector(1 downto 0);
        S_AXI_AWCACHE   : in     vl_logic_vector(3 downto 0);
        S_AXI_AWPROT    : in     vl_logic_vector(2 downto 0);
        S_AXI_AWQOS     : in     vl_logic_vector(3 downto 0);
        S_AXI_AWREGION  : in     vl_logic_vector(3 downto 0);
        S_AXI_AWUSER    : in     vl_logic_vector;
        S_AXI_AWVALID   : in     vl_logic;
        S_AXI_AWREADY   : out    vl_logic;
        S_AXI_WID       : in     vl_logic_vector;
        S_AXI_WDATA     : in     vl_logic_vector;
        S_AXI_WSTRB     : in     vl_logic_vector;
        S_AXI_WLAST     : in     vl_logic;
        S_AXI_WUSER     : in     vl_logic_vector;
        S_AXI_WVALID    : in     vl_logic;
        S_AXI_WREADY    : out    vl_logic;
        S_AXI_BID       : out    vl_logic_vector;
        S_AXI_BRESP     : out    vl_logic_vector(1 downto 0);
        S_AXI_BUSER     : out    vl_logic_vector;
        S_AXI_BVALID    : out    vl_logic;
        S_AXI_BREADY    : in     vl_logic;
        M_AXI_AWID      : out    vl_logic_vector;
        M_AXI_AWADDR    : out    vl_logic_vector;
        M_AXI_AWLEN     : out    vl_logic_vector(7 downto 0);
        M_AXI_AWSIZE    : out    vl_logic_vector(2 downto 0);
        M_AXI_AWBURST   : out    vl_logic_vector(1 downto 0);
        M_AXI_AWLOCK    : out    vl_logic_vector(1 downto 0);
        M_AXI_AWCACHE   : out    vl_logic_vector(3 downto 0);
        M_AXI_AWPROT    : out    vl_logic_vector(2 downto 0);
        M_AXI_AWQOS     : out    vl_logic_vector(3 downto 0);
        M_AXI_AWREGION  : out    vl_logic_vector(3 downto 0);
        M_AXI_AWUSER    : out    vl_logic_vector;
        M_AXI_AWVALID   : out    vl_logic;
        M_AXI_AWREADY   : in     vl_logic;
        M_AXI_WID       : out    vl_logic_vector;
        M_AXI_WDATA     : out    vl_logic_vector;
        M_AXI_WSTRB     : out    vl_logic_vector;
        M_AXI_WLAST     : out    vl_logic;
        M_AXI_WUSER     : out    vl_logic_vector;
        M_AXI_WVALID    : out    vl_logic;
        M_AXI_WREADY    : in     vl_logic;
        M_AXI_BID       : in     vl_logic_vector;
        M_AXI_BRESP     : in     vl_logic_vector(1 downto 0);
        M_AXI_BUSER     : in     vl_logic_vector;
        M_AXI_BVALID    : in     vl_logic;
        M_AXI_BREADY    : out    vl_logic;
        S_AXI_ARID      : in     vl_logic_vector;
        S_AXI_ARADDR    : in     vl_logic_vector;
        S_AXI_ARLEN     : in     vl_logic_vector(7 downto 0);
        S_AXI_ARSIZE    : in     vl_logic_vector(2 downto 0);
        S_AXI_ARBURST   : in     vl_logic_vector(1 downto 0);
        S_AXI_ARLOCK    : in     vl_logic_vector(1 downto 0);
        S_AXI_ARCACHE   : in     vl_logic_vector(3 downto 0);
        S_AXI_ARPROT    : in     vl_logic_vector(2 downto 0);
        S_AXI_ARQOS     : in     vl_logic_vector(3 downto 0);
        S_AXI_ARREGION  : in     vl_logic_vector(3 downto 0);
        S_AXI_ARUSER    : in     vl_logic_vector;
        S_AXI_ARVALID   : in     vl_logic;
        S_AXI_ARREADY   : out    vl_logic;
        S_AXI_RID       : out    vl_logic_vector;
        S_AXI_RDATA     : out    vl_logic_vector;
        S_AXI_RRESP     : out    vl_logic_vector(1 downto 0);
        S_AXI_RLAST     : out    vl_logic;
        S_AXI_RUSER     : out    vl_logic_vector;
        S_AXI_RVALID    : out    vl_logic;
        S_AXI_RREADY    : in     vl_logic;
        M_AXI_ARID      : out    vl_logic_vector;
        M_AXI_ARADDR    : out    vl_logic_vector;
        M_AXI_ARLEN     : out    vl_logic_vector(7 downto 0);
        M_AXI_ARSIZE    : out    vl_logic_vector(2 downto 0);
        M_AXI_ARBURST   : out    vl_logic_vector(1 downto 0);
        M_AXI_ARLOCK    : out    vl_logic_vector(1 downto 0);
        M_AXI_ARCACHE   : out    vl_logic_vector(3 downto 0);
        M_AXI_ARPROT    : out    vl_logic_vector(2 downto 0);
        M_AXI_ARQOS     : out    vl_logic_vector(3 downto 0);
        M_AXI_ARREGION  : out    vl_logic_vector(3 downto 0);
        M_AXI_ARUSER    : out    vl_logic_vector;
        M_AXI_ARVALID   : out    vl_logic;
        M_AXI_ARREADY   : in     vl_logic;
        M_AXI_RID       : in     vl_logic_vector;
        M_AXI_RDATA     : in     vl_logic_vector;
        M_AXI_RRESP     : in     vl_logic_vector(1 downto 0);
        M_AXI_RLAST     : in     vl_logic;
        M_AXI_RUSER     : in     vl_logic_vector;
        M_AXI_RVALID    : in     vl_logic;
        M_AXI_RREADY    : out    vl_logic;
        S_AXIS_TVALID   : in     vl_logic;
        S_AXIS_TREADY   : out    vl_logic;
        S_AXIS_TDATA    : in     vl_logic_vector;
        S_AXIS_TSTRB    : in     vl_logic_vector;
        S_AXIS_TKEEP    : in     vl_logic_vector;
        S_AXIS_TLAST    : in     vl_logic;
        S_AXIS_TID      : in     vl_logic_vector;
        S_AXIS_TDEST    : in     vl_logic_vector;
        S_AXIS_TUSER    : in     vl_logic_vector;
        M_AXIS_TVALID   : out    vl_logic;
        M_AXIS_TREADY   : in     vl_logic;
        M_AXIS_TDATA    : out    vl_logic_vector;
        M_AXIS_TSTRB    : out    vl_logic_vector;
        M_AXIS_TKEEP    : out    vl_logic_vector;
        M_AXIS_TLAST    : out    vl_logic;
        M_AXIS_TID      : out    vl_logic_vector;
        M_AXIS_TDEST    : out    vl_logic_vector;
        M_AXIS_TUSER    : out    vl_logic_vector;
        AXI_AW_INJECTSBITERR: in     vl_logic;
        AXI_AW_INJECTDBITERR: in     vl_logic;
        AXI_AW_PROG_FULL_THRESH: in     vl_logic_vector;
        AXI_AW_PROG_EMPTY_THRESH: in     vl_logic_vector;
        AXI_AW_DATA_COUNT: out    vl_logic_vector;
        AXI_AW_WR_DATA_COUNT: out    vl_logic_vector;
        AXI_AW_RD_DATA_COUNT: out    vl_logic_vector;
        AXI_AW_SBITERR  : out    vl_logic;
        AXI_AW_DBITERR  : out    vl_logic;
        AXI_AW_OVERFLOW : out    vl_logic;
        AXI_AW_UNDERFLOW: out    vl_logic;
        AXI_W_INJECTSBITERR: in     vl_logic;
        AXI_W_INJECTDBITERR: in     vl_logic;
        AXI_W_PROG_FULL_THRESH: in     vl_logic_vector;
        AXI_W_PROG_EMPTY_THRESH: in     vl_logic_vector;
        AXI_W_DATA_COUNT: out    vl_logic_vector;
        AXI_W_WR_DATA_COUNT: out    vl_logic_vector;
        AXI_W_RD_DATA_COUNT: out    vl_logic_vector;
        AXI_W_SBITERR   : out    vl_logic;
        AXI_W_DBITERR   : out    vl_logic;
        AXI_W_OVERFLOW  : out    vl_logic;
        AXI_W_UNDERFLOW : out    vl_logic;
        AXI_B_INJECTSBITERR: in     vl_logic;
        AXI_B_INJECTDBITERR: in     vl_logic;
        AXI_B_PROG_FULL_THRESH: in     vl_logic_vector;
        AXI_B_PROG_EMPTY_THRESH: in     vl_logic_vector;
        AXI_B_DATA_COUNT: out    vl_logic_vector;
        AXI_B_WR_DATA_COUNT: out    vl_logic_vector;
        AXI_B_RD_DATA_COUNT: out    vl_logic_vector;
        AXI_B_SBITERR   : out    vl_logic;
        AXI_B_DBITERR   : out    vl_logic;
        AXI_B_OVERFLOW  : out    vl_logic;
        AXI_B_UNDERFLOW : out    vl_logic;
        AXI_AR_INJECTSBITERR: in     vl_logic;
        AXI_AR_INJECTDBITERR: in     vl_logic;
        AXI_AR_PROG_FULL_THRESH: in     vl_logic_vector;
        AXI_AR_PROG_EMPTY_THRESH: in     vl_logic_vector;
        AXI_AR_DATA_COUNT: out    vl_logic_vector;
        AXI_AR_WR_DATA_COUNT: out    vl_logic_vector;
        AXI_AR_RD_DATA_COUNT: out    vl_logic_vector;
        AXI_AR_SBITERR  : out    vl_logic;
        AXI_AR_DBITERR  : out    vl_logic;
        AXI_AR_OVERFLOW : out    vl_logic;
        AXI_AR_UNDERFLOW: out    vl_logic;
        AXI_R_INJECTSBITERR: in     vl_logic;
        AXI_R_INJECTDBITERR: in     vl_logic;
        AXI_R_PROG_FULL_THRESH: in     vl_logic_vector;
        AXI_R_PROG_EMPTY_THRESH: in     vl_logic_vector;
        AXI_R_DATA_COUNT: out    vl_logic_vector;
        AXI_R_WR_DATA_COUNT: out    vl_logic_vector;
        AXI_R_RD_DATA_COUNT: out    vl_logic_vector;
        AXI_R_SBITERR   : out    vl_logic;
        AXI_R_DBITERR   : out    vl_logic;
        AXI_R_OVERFLOW  : out    vl_logic;
        AXI_R_UNDERFLOW : out    vl_logic;
        AXIS_INJECTSBITERR: in     vl_logic;
        AXIS_INJECTDBITERR: in     vl_logic;
        AXIS_PROG_FULL_THRESH: in     vl_logic_vector;
        AXIS_PROG_EMPTY_THRESH: in     vl_logic_vector;
        AXIS_DATA_COUNT : out    vl_logic_vector;
        AXIS_WR_DATA_COUNT: out    vl_logic_vector;
        AXIS_RD_DATA_COUNT: out    vl_logic_vector;
        AXIS_SBITERR    : out    vl_logic;
        AXIS_DBITERR    : out    vl_logic;
        AXIS_OVERFLOW   : out    vl_logic;
        AXIS_UNDERFLOW  : out    vl_logic
    );
end FIFO_GENERATOR_V8_3_XST;

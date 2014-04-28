library verilog;
use verilog.vl_types.all;
entity GTPA1_DUAL_WRAP is
    generic(
        AC_CAP_DIS_0    : string  := "TRUE";
        AC_CAP_DIS_1    : string  := "TRUE";
        ALIGN_COMMA_WORD_0: integer := 1;
        ALIGN_COMMA_WORD_1: integer := 1;
        CB2_INH_CC_PERIOD_0: integer := 8;
        CB2_INH_CC_PERIOD_1: integer := 8;
        CDR_PH_ADJ_TIME_0: string  := "01010";
        CDR_PH_ADJ_TIME_1: string  := "01010";
        CHAN_BOND_1_MAX_SKEW_0: integer := 7;
        CHAN_BOND_1_MAX_SKEW_1: integer := 7;
        CHAN_BOND_2_MAX_SKEW_0: integer := 1;
        CHAN_BOND_2_MAX_SKEW_1: integer := 1;
        CHAN_BOND_KEEP_ALIGN_0: string  := "FALSE";
        CHAN_BOND_KEEP_ALIGN_1: string  := "FALSE";
        CHAN_BOND_SEQ_1_1_0: string  := "0101111100";
        CHAN_BOND_SEQ_1_1_1: string  := "0101111100";
        CHAN_BOND_SEQ_1_2_0: string  := "0001001010";
        CHAN_BOND_SEQ_1_2_1: string  := "0001001010";
        CHAN_BOND_SEQ_1_3_0: string  := "0001001010";
        CHAN_BOND_SEQ_1_3_1: string  := "0001001010";
        CHAN_BOND_SEQ_1_4_0: string  := "0110111100";
        CHAN_BOND_SEQ_1_4_1: string  := "0110111100";
        CHAN_BOND_SEQ_1_ENABLE_0: string  := "1111";
        CHAN_BOND_SEQ_1_ENABLE_1: string  := "1111";
        CHAN_BOND_SEQ_2_1_0: string  := "0110111100";
        CHAN_BOND_SEQ_2_1_1: string  := "0110111100";
        CHAN_BOND_SEQ_2_2_0: string  := "0100111100";
        CHAN_BOND_SEQ_2_2_1: string  := "0100111100";
        CHAN_BOND_SEQ_2_3_0: string  := "0100111100";
        CHAN_BOND_SEQ_2_3_1: string  := "0100111100";
        CHAN_BOND_SEQ_2_4_0: string  := "0100111100";
        CHAN_BOND_SEQ_2_4_1: string  := "0100111100";
        CHAN_BOND_SEQ_2_ENABLE_0: string  := "1111";
        CHAN_BOND_SEQ_2_ENABLE_1: string  := "1111";
        CHAN_BOND_SEQ_2_USE_0: string  := "FALSE";
        CHAN_BOND_SEQ_2_USE_1: string  := "FALSE";
        CHAN_BOND_SEQ_LEN_0: integer := 1;
        CHAN_BOND_SEQ_LEN_1: integer := 1;
        CLK25_DIVIDER_0 : integer := 4;
        CLK25_DIVIDER_1 : integer := 4;
        CLKINDC_B_0     : string  := "TRUE";
        CLKINDC_B_1     : string  := "TRUE";
        CLKRCV_TRST_0   : string  := "TRUE";
        CLKRCV_TRST_1   : string  := "TRUE";
        CLK_CORRECT_USE_0: string  := "TRUE";
        CLK_CORRECT_USE_1: string  := "TRUE";
        CLK_COR_ADJ_LEN_0: integer := 1;
        CLK_COR_ADJ_LEN_1: integer := 1;
        CLK_COR_DET_LEN_0: integer := 1;
        CLK_COR_DET_LEN_1: integer := 1;
        CLK_COR_INSERT_IDLE_FLAG_0: string  := "FALSE";
        CLK_COR_INSERT_IDLE_FLAG_1: string  := "FALSE";
        CLK_COR_KEEP_IDLE_0: string  := "FALSE";
        CLK_COR_KEEP_IDLE_1: string  := "FALSE";
        CLK_COR_MAX_LAT_0: integer := 20;
        CLK_COR_MAX_LAT_1: integer := 20;
        CLK_COR_MIN_LAT_0: integer := 18;
        CLK_COR_MIN_LAT_1: integer := 18;
        CLK_COR_PRECEDENCE_0: string  := "TRUE";
        CLK_COR_PRECEDENCE_1: string  := "TRUE";
        CLK_COR_REPEAT_WAIT_0: integer := 0;
        CLK_COR_REPEAT_WAIT_1: integer := 0;
        CLK_COR_SEQ_1_1_0: string  := "0100011100";
        CLK_COR_SEQ_1_1_1: string  := "0100011100";
        CLK_COR_SEQ_1_2_0: string  := "0000000000";
        CLK_COR_SEQ_1_2_1: string  := "0000000000";
        CLK_COR_SEQ_1_3_0: string  := "0000000000";
        CLK_COR_SEQ_1_3_1: string  := "0000000000";
        CLK_COR_SEQ_1_4_0: string  := "0000000000";
        CLK_COR_SEQ_1_4_1: string  := "0000000000";
        CLK_COR_SEQ_1_ENABLE_0: string  := "1111";
        CLK_COR_SEQ_1_ENABLE_1: string  := "1111";
        CLK_COR_SEQ_2_1_0: string  := "0000000000";
        CLK_COR_SEQ_2_1_1: string  := "0000000000";
        CLK_COR_SEQ_2_2_0: string  := "0000000000";
        CLK_COR_SEQ_2_2_1: string  := "0000000000";
        CLK_COR_SEQ_2_3_0: string  := "0000000000";
        CLK_COR_SEQ_2_3_1: string  := "0000000000";
        CLK_COR_SEQ_2_4_0: string  := "0000000000";
        CLK_COR_SEQ_2_4_1: string  := "0000000000";
        CLK_COR_SEQ_2_ENABLE_0: string  := "1111";
        CLK_COR_SEQ_2_ENABLE_1: string  := "1111";
        CLK_COR_SEQ_2_USE_0: string  := "FALSE";
        CLK_COR_SEQ_2_USE_1: string  := "FALSE";
        CLK_OUT_GTP_SEL_0: string  := "REFCLKPLL0";
        CLK_OUT_GTP_SEL_1: string  := "REFCLKPLL1";
        CM_TRIM_0       : string  := "00";
        CM_TRIM_1       : string  := "00";
        COMMA_10B_ENABLE_0: string  := "1111111111";
        COMMA_10B_ENABLE_1: string  := "1111111111";
        COM_BURST_VAL_0 : string  := "1111";
        COM_BURST_VAL_1 : string  := "1111";
        DEC_MCOMMA_DETECT_0: string  := "TRUE";
        DEC_MCOMMA_DETECT_1: string  := "TRUE";
        DEC_PCOMMA_DETECT_0: string  := "TRUE";
        DEC_PCOMMA_DETECT_1: string  := "TRUE";
        DEC_VALID_COMMA_ONLY_0: string  := "TRUE";
        DEC_VALID_COMMA_ONLY_1: string  := "TRUE";
        GTP_CFG_PWRUP_0 : string  := "TRUE";
        GTP_CFG_PWRUP_1 : string  := "TRUE";
        MCOMMA_10B_VALUE_0: string  := "1010000011";
        MCOMMA_10B_VALUE_1: string  := "1010000011";
        MCOMMA_DETECT_0 : string  := "TRUE";
        MCOMMA_DETECT_1 : string  := "TRUE";
        OOBDETECT_THRESHOLD_0: string  := "110";
        OOBDETECT_THRESHOLD_1: string  := "110";
        OOB_CLK_DIVIDER_0: integer := 4;
        OOB_CLK_DIVIDER_1: integer := 4;
        PCI_EXPRESS_MODE_0: string  := "FALSE";
        PCI_EXPRESS_MODE_1: string  := "FALSE";
        PCOMMA_10B_VALUE_0: string  := "0101111100";
        PCOMMA_10B_VALUE_1: string  := "0101111100";
        PCOMMA_DETECT_0 : string  := "TRUE";
        PCOMMA_DETECT_1 : string  := "TRUE";
        PLLLKDET_CFG_0  : string  := "101";
        PLLLKDET_CFG_1  : string  := "101";
        PLL_COM_CFG_0   : string  := "21680A";
        PLL_COM_CFG_1   : string  := "21680A";
        PLL_CP_CFG_0    : string  := "00";
        PLL_CP_CFG_1    : string  := "00";
        PLL_DIVSEL_FB_0 : integer := 5;
        PLL_DIVSEL_FB_1 : integer := 5;
        PLL_DIVSEL_REF_0: integer := 2;
        PLL_DIVSEL_REF_1: integer := 2;
        PLL_RXDIVSEL_OUT_0: integer := 1;
        PLL_RXDIVSEL_OUT_1: integer := 1;
        PLL_SATA_0      : string  := "FALSE";
        PLL_SATA_1      : string  := "FALSE";
        PLL_SOURCE_0    : string  := "PLL0";
        PLL_SOURCE_1    : string  := "PLL0";
        PLL_TXDIVSEL_OUT_0: integer := 1;
        PLL_TXDIVSEL_OUT_1: integer := 1;
        PMA_CDR_SCAN_0  : string  := "6404040";
        PMA_CDR_SCAN_1  : string  := "6404040";
        PMA_COM_CFG_EAST: string  := "000008000";
        PMA_COM_CFG_WEST: string  := "00000A000";
        PMA_RXSYNC_CFG_0: string  := "00";
        PMA_RXSYNC_CFG_1: string  := "00";
        PMA_RX_CFG_0    : string  := "05CE048";
        PMA_RX_CFG_1    : string  := "05CE048";
        PMA_TX_CFG_0    : string  := "00082";
        PMA_TX_CFG_1    : string  := "00082";
        RCV_TERM_GND_0  : string  := "FALSE";
        RCV_TERM_GND_1  : string  := "FALSE";
        RCV_TERM_VTTRX_0: string  := "TRUE";
        RCV_TERM_VTTRX_1: string  := "TRUE";
        RXEQ_CFG_0      : string  := "01111011";
        RXEQ_CFG_1      : string  := "01111011";
        RXPRBSERR_LOOPBACK_0: string  := "0";
        RXPRBSERR_LOOPBACK_1: string  := "0";
        RX_BUFFER_USE_0 : string  := "TRUE";
        RX_BUFFER_USE_1 : string  := "TRUE";
        RX_DECODE_SEQ_MATCH_0: string  := "TRUE";
        RX_DECODE_SEQ_MATCH_1: string  := "TRUE";
        RX_EN_IDLE_HOLD_CDR_0: string  := "FALSE";
        RX_EN_IDLE_HOLD_CDR_1: string  := "FALSE";
        RX_EN_IDLE_RESET_BUF_0: string  := "TRUE";
        RX_EN_IDLE_RESET_BUF_1: string  := "TRUE";
        RX_EN_IDLE_RESET_FR_0: string  := "TRUE";
        RX_EN_IDLE_RESET_FR_1: string  := "TRUE";
        RX_EN_IDLE_RESET_PH_0: string  := "TRUE";
        RX_EN_IDLE_RESET_PH_1: string  := "TRUE";
        RX_EN_MODE_RESET_BUF_0: string  := "TRUE";
        RX_EN_MODE_RESET_BUF_1: string  := "TRUE";
        RX_IDLE_HI_CNT_0: string  := "1000";
        RX_IDLE_HI_CNT_1: string  := "1000";
        RX_IDLE_LO_CNT_0: string  := "0000";
        RX_IDLE_LO_CNT_1: string  := "0000";
        RX_LOSS_OF_SYNC_FSM_0: string  := "FALSE";
        RX_LOSS_OF_SYNC_FSM_1: string  := "FALSE";
        RX_LOS_INVALID_INCR_0: integer := 1;
        RX_LOS_INVALID_INCR_1: integer := 1;
        RX_LOS_THRESHOLD_0: integer := 4;
        RX_LOS_THRESHOLD_1: integer := 4;
        RX_SLIDE_MODE_0 : string  := "PCS";
        RX_SLIDE_MODE_1 : string  := "PCS";
        RX_STATUS_FMT_0 : string  := "PCIE";
        RX_STATUS_FMT_1 : string  := "PCIE";
        RX_XCLK_SEL_0   : string  := "RXREC";
        RX_XCLK_SEL_1   : string  := "RXREC";
        SATA_BURST_VAL_0: string  := "100";
        SATA_BURST_VAL_1: string  := "100";
        SATA_IDLE_VAL_0 : string  := "011";
        SATA_IDLE_VAL_1 : string  := "011";
        SATA_MAX_BURST_0: integer := 7;
        SATA_MAX_BURST_1: integer := 7;
        SATA_MAX_INIT_0 : integer := 22;
        SATA_MAX_INIT_1 : integer := 22;
        SATA_MAX_WAKE_0 : integer := 7;
        SATA_MAX_WAKE_1 : integer := 7;
        SATA_MIN_BURST_0: integer := 4;
        SATA_MIN_BURST_1: integer := 4;
        SATA_MIN_INIT_0 : integer := 12;
        SATA_MIN_INIT_1 : integer := 12;
        SATA_MIN_WAKE_0 : integer := 4;
        SATA_MIN_WAKE_1 : integer := 4;
        SIM_GTPRESET_SPEEDUP: integer := 0;
        SIM_RECEIVER_DETECT_PASS: string  := "FALSE";
        SIM_REFCLK0_SOURCE: string  := "000";
        SIM_REFCLK1_SOURCE: string  := "000";
        SIM_TX_ELEC_IDLE_LEVEL: string  := "X";
        SIM_VERSION     : string  := "2.0";
        TERMINATION_CTRL_0: string  := "10100";
        TERMINATION_CTRL_1: string  := "10100";
        TERMINATION_OVRD_0: string  := "FALSE";
        TERMINATION_OVRD_1: string  := "FALSE";
        TRANS_TIME_FROM_P2_0: string  := "03C";
        TRANS_TIME_FROM_P2_1: string  := "03C";
        TRANS_TIME_NON_P2_0: string  := "19";
        TRANS_TIME_NON_P2_1: string  := "19";
        TRANS_TIME_TO_P2_0: string  := "064";
        TRANS_TIME_TO_P2_1: string  := "064";
        TST_ATTR_0      : string  := "00000000";
        TST_ATTR_1      : string  := "00000000";
        TXRX_INVERT_0   : string  := "011";
        TXRX_INVERT_1   : string  := "011";
        TX_BUFFER_USE_0 : string  := "FALSE";
        TX_BUFFER_USE_1 : string  := "FALSE";
        TX_DETECT_RX_CFG_0: string  := "1832";
        TX_DETECT_RX_CFG_1: string  := "1832";
        TX_IDLE_DELAY_0 : string  := "011";
        TX_IDLE_DELAY_1 : string  := "011";
        TX_TDCC_CFG_0   : string  := "00";
        TX_TDCC_CFG_1   : string  := "00";
        TX_XCLK_SEL_0   : string  := "TXUSR";
        TX_XCLK_SEL_1   : string  := "TXUSR"
    );
    port(
        DRDY            : out    vl_logic;
        PHYSTATUS0      : out    vl_logic;
        PHYSTATUS1      : out    vl_logic;
        PLLLKDET0       : out    vl_logic;
        PLLLKDET1       : out    vl_logic;
        REFCLKOUT0      : out    vl_logic;
        REFCLKOUT1      : out    vl_logic;
        REFCLKPLL0      : out    vl_logic;
        REFCLKPLL1      : out    vl_logic;
        RESETDONE0      : out    vl_logic;
        RESETDONE1      : out    vl_logic;
        RXBYTEISALIGNED0: out    vl_logic;
        RXBYTEISALIGNED1: out    vl_logic;
        RXBYTEREALIGN0  : out    vl_logic;
        RXBYTEREALIGN1  : out    vl_logic;
        RXCHANBONDSEQ0  : out    vl_logic;
        RXCHANBONDSEQ1  : out    vl_logic;
        RXCHANISALIGNED0: out    vl_logic;
        RXCHANISALIGNED1: out    vl_logic;
        RXCHANREALIGN0  : out    vl_logic;
        RXCHANREALIGN1  : out    vl_logic;
        RXCOMMADET0     : out    vl_logic;
        RXCOMMADET1     : out    vl_logic;
        RXELECIDLE0     : out    vl_logic;
        RXELECIDLE1     : out    vl_logic;
        RXPRBSERR0      : out    vl_logic;
        RXPRBSERR1      : out    vl_logic;
        RXRECCLK0       : out    vl_logic;
        RXRECCLK1       : out    vl_logic;
        RXVALID0        : out    vl_logic;
        RXVALID1        : out    vl_logic;
        TXN0            : out    vl_logic;
        TXN1            : out    vl_logic;
        TXOUTCLK0       : out    vl_logic;
        TXOUTCLK1       : out    vl_logic;
        TXP0            : out    vl_logic;
        TXP1            : out    vl_logic;
        DRPDO           : out    vl_logic_vector(15 downto 0);
        GTPCLKFBEAST    : out    vl_logic_vector(1 downto 0);
        GTPCLKFBWEST    : out    vl_logic_vector(1 downto 0);
        GTPCLKOUT0      : out    vl_logic_vector(1 downto 0);
        GTPCLKOUT1      : out    vl_logic_vector(1 downto 0);
        RXLOSSOFSYNC0   : out    vl_logic_vector(1 downto 0);
        RXLOSSOFSYNC1   : out    vl_logic_vector(1 downto 0);
        TXBUFSTATUS0    : out    vl_logic_vector(1 downto 0);
        TXBUFSTATUS1    : out    vl_logic_vector(1 downto 0);
        RXBUFSTATUS0    : out    vl_logic_vector(2 downto 0);
        RXBUFSTATUS1    : out    vl_logic_vector(2 downto 0);
        RXCHBONDO       : out    vl_logic_vector(2 downto 0);
        RXCLKCORCNT0    : out    vl_logic_vector(2 downto 0);
        RXCLKCORCNT1    : out    vl_logic_vector(2 downto 0);
        RXSTATUS0       : out    vl_logic_vector(2 downto 0);
        RXSTATUS1       : out    vl_logic_vector(2 downto 0);
        RXDATA0         : out    vl_logic_vector(31 downto 0);
        RXDATA1         : out    vl_logic_vector(31 downto 0);
        RXCHARISCOMMA0  : out    vl_logic_vector(3 downto 0);
        RXCHARISCOMMA1  : out    vl_logic_vector(3 downto 0);
        RXCHARISK0      : out    vl_logic_vector(3 downto 0);
        RXCHARISK1      : out    vl_logic_vector(3 downto 0);
        RXDISPERR0      : out    vl_logic_vector(3 downto 0);
        RXDISPERR1      : out    vl_logic_vector(3 downto 0);
        RXNOTINTABLE0   : out    vl_logic_vector(3 downto 0);
        RXNOTINTABLE1   : out    vl_logic_vector(3 downto 0);
        RXRUNDISP0      : out    vl_logic_vector(3 downto 0);
        RXRUNDISP1      : out    vl_logic_vector(3 downto 0);
        TXKERR0         : out    vl_logic_vector(3 downto 0);
        TXKERR1         : out    vl_logic_vector(3 downto 0);
        TXRUNDISP0      : out    vl_logic_vector(3 downto 0);
        TXRUNDISP1      : out    vl_logic_vector(3 downto 0);
        RCALOUTEAST     : out    vl_logic_vector(4 downto 0);
        RCALOUTWEST     : out    vl_logic_vector(4 downto 0);
        TSTOUT0         : out    vl_logic_vector(4 downto 0);
        TSTOUT1         : out    vl_logic_vector(4 downto 0);
        GSR             : in     vl_logic;
        CLK00           : in     vl_logic;
        CLK01           : in     vl_logic;
        CLK10           : in     vl_logic;
        CLK11           : in     vl_logic;
        CLKINEAST0      : in     vl_logic;
        CLKINEAST1      : in     vl_logic;
        CLKINWEST0      : in     vl_logic;
        CLKINWEST1      : in     vl_logic;
        DCLK            : in     vl_logic;
        DEN             : in     vl_logic;
        DWE             : in     vl_logic;
        GATERXELECIDLE0 : in     vl_logic;
        GATERXELECIDLE1 : in     vl_logic;
        GCLK00          : in     vl_logic;
        GCLK01          : in     vl_logic;
        GCLK10          : in     vl_logic;
        GCLK11          : in     vl_logic;
        GTPRESET0       : in     vl_logic;
        GTPRESET1       : in     vl_logic;
        IGNORESIGDET0   : in     vl_logic;
        IGNORESIGDET1   : in     vl_logic;
        INTDATAWIDTH0   : in     vl_logic;
        INTDATAWIDTH1   : in     vl_logic;
        PLLCLK00        : in     vl_logic;
        PLLCLK01        : in     vl_logic;
        PLLCLK10        : in     vl_logic;
        PLLCLK11        : in     vl_logic;
        PLLLKDETEN0     : in     vl_logic;
        PLLLKDETEN1     : in     vl_logic;
        PLLPOWERDOWN0   : in     vl_logic;
        PLLPOWERDOWN1   : in     vl_logic;
        PRBSCNTRESET0   : in     vl_logic;
        PRBSCNTRESET1   : in     vl_logic;
        REFCLKPWRDNB0   : in     vl_logic;
        REFCLKPWRDNB1   : in     vl_logic;
        RXBUFRESET0     : in     vl_logic;
        RXBUFRESET1     : in     vl_logic;
        RXCDRRESET0     : in     vl_logic;
        RXCDRRESET1     : in     vl_logic;
        RXCHBONDMASTER0 : in     vl_logic;
        RXCHBONDMASTER1 : in     vl_logic;
        RXCHBONDSLAVE0  : in     vl_logic;
        RXCHBONDSLAVE1  : in     vl_logic;
        RXCOMMADETUSE0  : in     vl_logic;
        RXCOMMADETUSE1  : in     vl_logic;
        RXDEC8B10BUSE0  : in     vl_logic;
        RXDEC8B10BUSE1  : in     vl_logic;
        RXENCHANSYNC0   : in     vl_logic;
        RXENCHANSYNC1   : in     vl_logic;
        RXENMCOMMAALIGN0: in     vl_logic;
        RXENMCOMMAALIGN1: in     vl_logic;
        RXENPCOMMAALIGN0: in     vl_logic;
        RXENPCOMMAALIGN1: in     vl_logic;
        RXENPMAPHASEALIGN0: in     vl_logic;
        RXENPMAPHASEALIGN1: in     vl_logic;
        RXN0            : in     vl_logic;
        RXN1            : in     vl_logic;
        RXP0            : in     vl_logic;
        RXP1            : in     vl_logic;
        RXPMASETPHASE0  : in     vl_logic;
        RXPMASETPHASE1  : in     vl_logic;
        RXPOLARITY0     : in     vl_logic;
        RXPOLARITY1     : in     vl_logic;
        RXRESET0        : in     vl_logic;
        RXRESET1        : in     vl_logic;
        RXSLIDE0        : in     vl_logic;
        RXSLIDE1        : in     vl_logic;
        RXUSRCLK0       : in     vl_logic;
        RXUSRCLK1       : in     vl_logic;
        RXUSRCLK20      : in     vl_logic;
        RXUSRCLK21      : in     vl_logic;
        TSTCLK0         : in     vl_logic;
        TSTCLK1         : in     vl_logic;
        TXCOMSTART0     : in     vl_logic;
        TXCOMSTART1     : in     vl_logic;
        TXCOMTYPE0      : in     vl_logic;
        TXCOMTYPE1      : in     vl_logic;
        TXDETECTRX0     : in     vl_logic;
        TXDETECTRX1     : in     vl_logic;
        TXELECIDLE0     : in     vl_logic;
        TXELECIDLE1     : in     vl_logic;
        TXENC8B10BUSE0  : in     vl_logic;
        TXENC8B10BUSE1  : in     vl_logic;
        TXENPMAPHASEALIGN0: in     vl_logic;
        TXENPMAPHASEALIGN1: in     vl_logic;
        TXINHIBIT0      : in     vl_logic;
        TXINHIBIT1      : in     vl_logic;
        TXPDOWNASYNCH0  : in     vl_logic;
        TXPDOWNASYNCH1  : in     vl_logic;
        TXPMASETPHASE0  : in     vl_logic;
        TXPMASETPHASE1  : in     vl_logic;
        TXPOLARITY0     : in     vl_logic;
        TXPOLARITY1     : in     vl_logic;
        TXPRBSFORCEERR0 : in     vl_logic;
        TXPRBSFORCEERR1 : in     vl_logic;
        TXRESET0        : in     vl_logic;
        TXRESET1        : in     vl_logic;
        TXUSRCLK0       : in     vl_logic;
        TXUSRCLK1       : in     vl_logic;
        TXUSRCLK20      : in     vl_logic;
        TXUSRCLK21      : in     vl_logic;
        USRCODEERR0     : in     vl_logic;
        USRCODEERR1     : in     vl_logic;
        TSTIN0          : in     vl_logic_vector(11 downto 0);
        TSTIN1          : in     vl_logic_vector(11 downto 0);
        DI              : in     vl_logic_vector(15 downto 0);
        GTPCLKFBSEL0EAST: in     vl_logic_vector(1 downto 0);
        GTPCLKFBSEL0WEST: in     vl_logic_vector(1 downto 0);
        GTPCLKFBSEL1EAST: in     vl_logic_vector(1 downto 0);
        GTPCLKFBSEL1WEST: in     vl_logic_vector(1 downto 0);
        RXDATAWIDTH0    : in     vl_logic_vector(1 downto 0);
        RXDATAWIDTH1    : in     vl_logic_vector(1 downto 0);
        RXEQMIX0        : in     vl_logic_vector(1 downto 0);
        RXEQMIX1        : in     vl_logic_vector(1 downto 0);
        RXPOWERDOWN0    : in     vl_logic_vector(1 downto 0);
        RXPOWERDOWN1    : in     vl_logic_vector(1 downto 0);
        TXDATAWIDTH0    : in     vl_logic_vector(1 downto 0);
        TXDATAWIDTH1    : in     vl_logic_vector(1 downto 0);
        TXPOWERDOWN0    : in     vl_logic_vector(1 downto 0);
        TXPOWERDOWN1    : in     vl_logic_vector(1 downto 0);
        LOOPBACK0       : in     vl_logic_vector(2 downto 0);
        LOOPBACK1       : in     vl_logic_vector(2 downto 0);
        REFSELDYPLL0    : in     vl_logic_vector(2 downto 0);
        REFSELDYPLL1    : in     vl_logic_vector(2 downto 0);
        RXCHBONDI       : in     vl_logic_vector(2 downto 0);
        RXENPRBSTST0    : in     vl_logic_vector(2 downto 0);
        RXENPRBSTST1    : in     vl_logic_vector(2 downto 0);
        TXBUFDIFFCTRL0  : in     vl_logic_vector(2 downto 0);
        TXBUFDIFFCTRL1  : in     vl_logic_vector(2 downto 0);
        TXENPRBSTST0    : in     vl_logic_vector(2 downto 0);
        TXENPRBSTST1    : in     vl_logic_vector(2 downto 0);
        TXPREEMPHASIS0  : in     vl_logic_vector(2 downto 0);
        TXPREEMPHASIS1  : in     vl_logic_vector(2 downto 0);
        TXDATA0         : in     vl_logic_vector(31 downto 0);
        TXDATA1         : in     vl_logic_vector(31 downto 0);
        TXBYPASS8B10B0  : in     vl_logic_vector(3 downto 0);
        TXBYPASS8B10B1  : in     vl_logic_vector(3 downto 0);
        TXCHARDISPMODE0 : in     vl_logic_vector(3 downto 0);
        TXCHARDISPMODE1 : in     vl_logic_vector(3 downto 0);
        TXCHARDISPVAL0  : in     vl_logic_vector(3 downto 0);
        TXCHARDISPVAL1  : in     vl_logic_vector(3 downto 0);
        TXCHARISK0      : in     vl_logic_vector(3 downto 0);
        TXCHARISK1      : in     vl_logic_vector(3 downto 0);
        TXDIFFCTRL0     : in     vl_logic_vector(3 downto 0);
        TXDIFFCTRL1     : in     vl_logic_vector(3 downto 0);
        RCALINEAST      : in     vl_logic_vector(4 downto 0);
        RCALINWEST      : in     vl_logic_vector(4 downto 0);
        DADDR           : in     vl_logic_vector(7 downto 0);
        GTPTEST0        : in     vl_logic_vector(7 downto 0);
        GTPTEST1        : in     vl_logic_vector(7 downto 0)
    );
end GTPA1_DUAL_WRAP;

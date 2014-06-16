library verilog;
use verilog.vl_types.all;
entity GTXE1 is
    generic(
        AC_CAP_DIS      : string  := "TRUE";
        ALIGN_COMMA_WORD: integer := 1;
        BGTEST_CFG      : integer := 0;
        BIAS_CFG        : integer := 0;
        CDR_PH_ADJ_TIME : integer := 20;
        CHAN_BOND_1_MAX_SKEW: integer := 7;
        CHAN_BOND_2_MAX_SKEW: integer := 1;
        CHAN_BOND_KEEP_ALIGN: string  := "FALSE";
        CHAN_BOND_SEQ_1_1: integer := 380;
        CHAN_BOND_SEQ_1_2: integer := 74;
        CHAN_BOND_SEQ_1_3: integer := 74;
        CHAN_BOND_SEQ_1_4: integer := 444;
        CHAN_BOND_SEQ_1_ENABLE: integer := 15;
        CHAN_BOND_SEQ_2_1: integer := 316;
        CHAN_BOND_SEQ_2_2: integer := 316;
        CHAN_BOND_SEQ_2_3: integer := 444;
        CHAN_BOND_SEQ_2_4: integer := 316;
        CHAN_BOND_SEQ_2_CFG: integer := 0;
        CHAN_BOND_SEQ_2_ENABLE: integer := 15;
        CHAN_BOND_SEQ_2_USE: string  := "FALSE";
        CHAN_BOND_SEQ_LEN: integer := 1;
        CLK_CORRECT_USE : string  := "TRUE";
        CLK_COR_ADJ_LEN : integer := 1;
        CLK_COR_DET_LEN : integer := 1;
        CLK_COR_INSERT_IDLE_FLAG: string  := "FALSE";
        CLK_COR_KEEP_IDLE: string  := "FALSE";
        CLK_COR_MAX_LAT : integer := 20;
        CLK_COR_MIN_LAT : integer := 18;
        CLK_COR_PRECEDENCE: string  := "TRUE";
        CLK_COR_REPEAT_WAIT: integer := 0;
        CLK_COR_SEQ_1_1 : integer := 284;
        CLK_COR_SEQ_1_2 : integer := 0;
        CLK_COR_SEQ_1_3 : integer := 0;
        CLK_COR_SEQ_1_4 : integer := 0;
        CLK_COR_SEQ_1_ENABLE: integer := 15;
        CLK_COR_SEQ_2_1 : integer := 0;
        CLK_COR_SEQ_2_2 : integer := 0;
        CLK_COR_SEQ_2_3 : integer := 0;
        CLK_COR_SEQ_2_4 : integer := 0;
        CLK_COR_SEQ_2_ENABLE: integer := 15;
        CLK_COR_SEQ_2_USE: string  := "FALSE";
        CM_TRIM         : integer := 1;
        COMMA_10B_ENABLE: integer := 1023;
        COMMA_DOUBLE    : string  := "FALSE";
        COM_BURST_VAL   : integer := 15;
        DEC_MCOMMA_DETECT: string  := "TRUE";
        DEC_PCOMMA_DETECT: string  := "TRUE";
        DEC_VALID_COMMA_ONLY: string  := "TRUE";
        DFE_CAL_TIME    : integer := 12;
        DFE_CFG         : integer := 27;
        GEARBOX_ENDEC   : integer := 0;
        GEN_RXUSRCLK    : string  := "TRUE";
        GEN_TXUSRCLK    : string  := "TRUE";
        GTX_CFG_PWRUP   : string  := "TRUE";
        MCOMMA_10B_VALUE: integer := 643;
        MCOMMA_DETECT   : string  := "TRUE";
        OOBDETECT_THRESHOLD: integer := 3;
        PCI_EXPRESS_MODE: string  := "FALSE";
        PCOMMA_10B_VALUE: integer := 380;
        PCOMMA_DETECT   : string  := "TRUE";
        PMA_CAS_CLK_EN  : string  := "FALSE";
        PMA_CDR_SCAN    : integer := 104874060;
      --PMA_CFG         : integer type with unrepresentable value!
        PMA_RXSYNC_CFG  : integer := 0;
        PMA_RX_CFG      : integer := 6086728;
        PMA_TX_CFG      : integer := 130;
        POWER_SAVE      : integer := 52;
        RCV_TERM_GND    : string  := "FALSE";
        RCV_TERM_VTTRX  : string  := "TRUE";
        RXGEARBOX_USE   : string  := "FALSE";
        RXPLL_COM_CFG   : integer := 2189322;
        RXPLL_CP_CFG    : integer := 0;
        RXPLL_DIVSEL45_FB: integer := 5;
        RXPLL_DIVSEL_FB : integer := 2;
        RXPLL_DIVSEL_OUT: integer := 1;
        RXPLL_DIVSEL_REF: integer := 1;
        RXPLL_LKDET_CFG : integer := 7;
        RXPRBSERR_LOOPBACK: integer := 0;
        RXRECCLK_CTRL   : string  := "RXRECCLKPCS";
        RXRECCLK_DLY    : integer := 0;
        RXUSRCLK_DLY    : integer := 0;
        RX_BUFFER_USE   : string  := "TRUE";
        RX_CLK25_DIVIDER: integer := 6;
        RX_DATA_WIDTH   : integer := 20;
        RX_DECODE_SEQ_MATCH: string  := "TRUE";
        RX_DLYALIGN_CTRINC: integer := 4;
        RX_DLYALIGN_EDGESET: integer := 6;
        RX_DLYALIGN_LPFINC: integer := 7;
        RX_DLYALIGN_MONSEL: integer := 0;
        RX_DLYALIGN_OVRDSETTING: integer := 0;
        RX_EN_IDLE_HOLD_CDR: string  := "FALSE";
        RX_EN_IDLE_HOLD_DFE: string  := "TRUE";
        RX_EN_IDLE_RESET_BUF: string  := "TRUE";
        RX_EN_IDLE_RESET_FR: string  := "TRUE";
        RX_EN_IDLE_RESET_PH: string  := "TRUE";
        RX_EN_MODE_RESET_BUF: string  := "TRUE";
        RX_EN_RATE_RESET_BUF: string  := "TRUE";
        RX_EN_REALIGN_RESET_BUF: string  := "FALSE";
        RX_EN_REALIGN_RESET_BUF2: string  := "FALSE";
        RX_EYE_OFFSET   : integer := 76;
        RX_EYE_SCANMODE : integer := 0;
        RX_FIFO_ADDR_MODE: string  := "FULL";
        RX_IDLE_HI_CNT  : integer := 8;
        RX_IDLE_LO_CNT  : integer := 0;
        RX_LOSS_OF_SYNC_FSM: string  := "FALSE";
        RX_LOS_INVALID_INCR: integer := 1;
        RX_LOS_THRESHOLD: integer := 4;
        RX_OVERSAMPLE_MODE: string  := "FALSE";
        RX_SLIDE_AUTO_WAIT: integer := 5;
        RX_SLIDE_MODE   : string  := "OFF";
        RX_XCLK_SEL     : string  := "RXREC";
        SAS_MAX_COMSAS  : integer := 52;
        SAS_MIN_COMSAS  : integer := 40;
        SATA_BURST_VAL  : integer := 4;
        SATA_IDLE_VAL   : integer := 4;
        SATA_MAX_BURST  : integer := 7;
        SATA_MAX_INIT   : integer := 22;
        SATA_MAX_WAKE   : integer := 7;
        SATA_MIN_BURST  : integer := 4;
        SATA_MIN_INIT   : integer := 12;
        SATA_MIN_WAKE   : integer := 4;
        SHOW_REALIGN_COMMA: string  := "TRUE";
        SIM_GTXRESET_SPEEDUP: integer := 1;
        SIM_RECEIVER_DETECT_PASS: string  := "TRUE";
        SIM_RXREFCLK_SOURCE: integer := 0;
        SIM_TXREFCLK_SOURCE: integer := 0;
        SIM_TX_ELEC_IDLE_LEVEL: string  := "X";
        SIM_VERSION     : string  := "2.0";
        TERMINATION_CTRL: integer := 20;
        TERMINATION_OVRD: string  := "FALSE";
        TRANS_TIME_FROM_P2: integer := 60;
        TRANS_TIME_NON_P2: integer := 25;
        TRANS_TIME_RATE : integer := 14;
        TRANS_TIME_TO_P2: integer := 100;
        TST_ATTR        : integer := 0;
        TXDRIVE_LOOPBACK_HIZ: string  := "FALSE";
        TXDRIVE_LOOPBACK_PD: string  := "FALSE";
        TXGEARBOX_USE   : string  := "FALSE";
        TXOUTCLK_CTRL   : string  := "TXOUTCLKPCS";
        TXOUTCLK_DLY    : integer := 0;
        TXPLL_COM_CFG   : integer := 2189322;
        TXPLL_CP_CFG    : integer := 0;
        TXPLL_DIVSEL45_FB: integer := 5;
        TXPLL_DIVSEL_FB : integer := 2;
        TXPLL_DIVSEL_OUT: integer := 1;
        TXPLL_DIVSEL_REF: integer := 1;
        TXPLL_LKDET_CFG : integer := 7;
        TXPLL_SATA      : integer := 0;
        TX_BUFFER_USE   : string  := "TRUE";
        TX_BYTECLK_CFG  : integer := 0;
        TX_CLK25_DIVIDER: integer := 6;
        TX_CLK_SOURCE   : string  := "RXPLL";
        TX_DATA_WIDTH   : integer := 20;
        TX_DEEMPH_0     : integer := 26;
        TX_DEEMPH_1     : integer := 16;
        TX_DETECT_RX_CFG: integer := 6194;
        TX_DLYALIGN_CTRINC: integer := 4;
        TX_DLYALIGN_LPFINC: integer := 6;
        TX_DLYALIGN_MONSEL: integer := 0;
        TX_DLYALIGN_OVRDSETTING: integer := 128;
        TX_DRIVE_MODE   : string  := "DIRECT";
        TX_EN_RATE_RESET_BUF: string  := "TRUE";
        TX_IDLE_ASSERT_DELAY: integer := 4;
        TX_IDLE_DEASSERT_DELAY: integer := 2;
        TX_MARGIN_FULL_0: integer := 78;
        TX_MARGIN_FULL_1: integer := 73;
        TX_MARGIN_FULL_2: integer := 69;
        TX_MARGIN_FULL_3: integer := 66;
        TX_MARGIN_FULL_4: integer := 64;
        TX_MARGIN_LOW_0 : integer := 70;
        TX_MARGIN_LOW_1 : integer := 68;
        TX_MARGIN_LOW_2 : integer := 66;
        TX_MARGIN_LOW_3 : integer := 64;
        TX_MARGIN_LOW_4 : integer := 64;
        TX_OVERSAMPLE_MODE: string  := "FALSE";
        TX_PMADATA_OPT  : integer := 0;
        TX_TDCC_CFG     : integer := 3;
        TX_USRCLK_CFG   : integer := 0;
        TX_XCLK_SEL     : string  := "TXUSR"
    );
    port(
        COMFINISH       : out    vl_logic;
        COMINITDET      : out    vl_logic;
        COMSASDET       : out    vl_logic;
        COMWAKEDET      : out    vl_logic;
        DFECLKDLYADJMON : out    vl_logic_vector(5 downto 0);
        DFEEYEDACMON    : out    vl_logic_vector(4 downto 0);
        DFESENSCAL      : out    vl_logic_vector(2 downto 0);
        DFETAP1MONITOR  : out    vl_logic_vector(4 downto 0);
        DFETAP2MONITOR  : out    vl_logic_vector(4 downto 0);
        DFETAP3MONITOR  : out    vl_logic_vector(3 downto 0);
        DFETAP4MONITOR  : out    vl_logic_vector(3 downto 0);
        DRDY            : out    vl_logic;
        DRPDO           : out    vl_logic_vector(15 downto 0);
        MGTREFCLKFAB    : out    vl_logic_vector(1 downto 0);
        PHYSTATUS       : out    vl_logic;
        RXBUFSTATUS     : out    vl_logic_vector(2 downto 0);
        RXBYTEISALIGNED : out    vl_logic;
        RXBYTEREALIGN   : out    vl_logic;
        RXCHANBONDSEQ   : out    vl_logic;
        RXCHANISALIGNED : out    vl_logic;
        RXCHANREALIGN   : out    vl_logic;
        RXCHARISCOMMA   : out    vl_logic_vector(3 downto 0);
        RXCHARISK       : out    vl_logic_vector(3 downto 0);
        RXCHBONDO       : out    vl_logic_vector(3 downto 0);
        RXCLKCORCNT     : out    vl_logic_vector(2 downto 0);
        RXCOMMADET      : out    vl_logic;
        RXDATA          : out    vl_logic_vector(31 downto 0);
        RXDATAVALID     : out    vl_logic;
        RXDISPERR       : out    vl_logic_vector(3 downto 0);
        RXDLYALIGNMONITOR: out    vl_logic_vector(7 downto 0);
        RXELECIDLE      : out    vl_logic;
        RXHEADER        : out    vl_logic_vector(2 downto 0);
        RXHEADERVALID   : out    vl_logic;
        RXLOSSOFSYNC    : out    vl_logic_vector(1 downto 0);
        RXNOTINTABLE    : out    vl_logic_vector(3 downto 0);
        RXOVERSAMPLEERR : out    vl_logic;
        RXPLLLKDET      : out    vl_logic;
        RXPRBSERR       : out    vl_logic;
        RXRATEDONE      : out    vl_logic;
        RXRECCLK        : out    vl_logic;
        RXRECCLKPCS     : out    vl_logic;
        RXRESETDONE     : out    vl_logic;
        RXRUNDISP       : out    vl_logic_vector(3 downto 0);
        RXSTARTOFSEQ    : out    vl_logic;
        RXSTATUS        : out    vl_logic_vector(2 downto 0);
        RXVALID         : out    vl_logic;
        TSTOUT          : out    vl_logic_vector(9 downto 0);
        TXBUFSTATUS     : out    vl_logic_vector(1 downto 0);
        TXDLYALIGNMONITOR: out    vl_logic_vector(7 downto 0);
        TXGEARBOXREADY  : out    vl_logic;
        TXKERR          : out    vl_logic_vector(3 downto 0);
        TXN             : out    vl_logic;
        TXOUTCLK        : out    vl_logic;
        TXOUTCLKPCS     : out    vl_logic;
        TXP             : out    vl_logic;
        TXPLLLKDET      : out    vl_logic;
        TXRATEDONE      : out    vl_logic;
        TXRESETDONE     : out    vl_logic;
        TXRUNDISP       : out    vl_logic_vector(3 downto 0);
        DADDR           : in     vl_logic_vector(7 downto 0);
        DCLK            : in     vl_logic;
        DEN             : in     vl_logic;
        DFECLKDLYADJ    : in     vl_logic_vector(5 downto 0);
        DFEDLYOVRD      : in     vl_logic;
        DFETAP1         : in     vl_logic_vector(4 downto 0);
        DFETAP2         : in     vl_logic_vector(4 downto 0);
        DFETAP3         : in     vl_logic_vector(3 downto 0);
        DFETAP4         : in     vl_logic_vector(3 downto 0);
        DFETAPOVRD      : in     vl_logic;
        DI              : in     vl_logic_vector(15 downto 0);
        DWE             : in     vl_logic;
        GATERXELECIDLE  : in     vl_logic;
        GREFCLKRX       : in     vl_logic;
        GREFCLKTX       : in     vl_logic;
        GTXRXRESET      : in     vl_logic;
        GTXTEST         : in     vl_logic_vector(12 downto 0);
        GTXTXRESET      : in     vl_logic;
        IGNORESIGDET    : in     vl_logic;
        LOOPBACK        : in     vl_logic_vector(2 downto 0);
        MGTREFCLKRX     : in     vl_logic_vector(1 downto 0);
        MGTREFCLKTX     : in     vl_logic_vector(1 downto 0);
        NORTHREFCLKRX   : in     vl_logic_vector(1 downto 0);
        NORTHREFCLKTX   : in     vl_logic_vector(1 downto 0);
        PERFCLKRX       : in     vl_logic;
        PERFCLKTX       : in     vl_logic;
        PLLRXRESET      : in     vl_logic;
        PLLTXRESET      : in     vl_logic;
        PRBSCNTRESET    : in     vl_logic;
        RXBUFRESET      : in     vl_logic;
        RXCDRRESET      : in     vl_logic;
        RXCHBONDI       : in     vl_logic_vector(3 downto 0);
        RXCHBONDLEVEL   : in     vl_logic_vector(2 downto 0);
        RXCHBONDMASTER  : in     vl_logic;
        RXCHBONDSLAVE   : in     vl_logic;
        RXCOMMADETUSE   : in     vl_logic;
        RXDEC8B10BUSE   : in     vl_logic;
        RXDLYALIGNDISABLE: in     vl_logic;
        RXDLYALIGNMONENB: in     vl_logic;
        RXDLYALIGNOVERRIDE: in     vl_logic;
        RXDLYALIGNRESET : in     vl_logic;
        RXDLYALIGNSWPPRECURB: in     vl_logic;
        RXDLYALIGNUPDSW : in     vl_logic;
        RXENCHANSYNC    : in     vl_logic;
        RXENMCOMMAALIGN : in     vl_logic;
        RXENPCOMMAALIGN : in     vl_logic;
        RXENPMAPHASEALIGN: in     vl_logic;
        RXENPRBSTST     : in     vl_logic_vector(2 downto 0);
        RXENSAMPLEALIGN : in     vl_logic;
        RXEQMIX         : in     vl_logic_vector(9 downto 0);
        RXGEARBOXSLIP   : in     vl_logic;
        RXN             : in     vl_logic;
        RXP             : in     vl_logic;
        RXPLLLKDETEN    : in     vl_logic;
        RXPLLPOWERDOWN  : in     vl_logic;
        RXPLLREFSELDY   : in     vl_logic_vector(2 downto 0);
        RXPMASETPHASE   : in     vl_logic;
        RXPOLARITY      : in     vl_logic;
        RXPOWERDOWN     : in     vl_logic_vector(1 downto 0);
        RXRATE          : in     vl_logic_vector(1 downto 0);
        RXRESET         : in     vl_logic;
        RXSLIDE         : in     vl_logic;
        RXUSRCLK        : in     vl_logic;
        RXUSRCLK2       : in     vl_logic;
        SOUTHREFCLKRX   : in     vl_logic_vector(1 downto 0);
        SOUTHREFCLKTX   : in     vl_logic_vector(1 downto 0);
        TSTCLK0         : in     vl_logic;
        TSTCLK1         : in     vl_logic;
        TSTIN           : in     vl_logic_vector(19 downto 0);
        TXBUFDIFFCTRL   : in     vl_logic_vector(2 downto 0);
        TXBYPASS8B10B   : in     vl_logic_vector(3 downto 0);
        TXCHARDISPMODE  : in     vl_logic_vector(3 downto 0);
        TXCHARDISPVAL   : in     vl_logic_vector(3 downto 0);
        TXCHARISK       : in     vl_logic_vector(3 downto 0);
        TXCOMINIT       : in     vl_logic;
        TXCOMSAS        : in     vl_logic;
        TXCOMWAKE       : in     vl_logic;
        TXDATA          : in     vl_logic_vector(31 downto 0);
        TXDEEMPH        : in     vl_logic;
        TXDETECTRX      : in     vl_logic;
        TXDIFFCTRL      : in     vl_logic_vector(3 downto 0);
        TXDLYALIGNDISABLE: in     vl_logic;
        TXDLYALIGNMONENB: in     vl_logic;
        TXDLYALIGNOVERRIDE: in     vl_logic;
        TXDLYALIGNRESET : in     vl_logic;
        TXDLYALIGNUPDSW : in     vl_logic;
        TXELECIDLE      : in     vl_logic;
        TXENC8B10BUSE   : in     vl_logic;
        TXENPMAPHASEALIGN: in     vl_logic;
        TXENPRBSTST     : in     vl_logic_vector(2 downto 0);
        TXHEADER        : in     vl_logic_vector(2 downto 0);
        TXINHIBIT       : in     vl_logic;
        TXMARGIN        : in     vl_logic_vector(2 downto 0);
        TXPDOWNASYNCH   : in     vl_logic;
        TXPLLLKDETEN    : in     vl_logic;
        TXPLLPOWERDOWN  : in     vl_logic;
        TXPLLREFSELDY   : in     vl_logic_vector(2 downto 0);
        TXPMASETPHASE   : in     vl_logic;
        TXPOLARITY      : in     vl_logic;
        TXPOSTEMPHASIS  : in     vl_logic_vector(4 downto 0);
        TXPOWERDOWN     : in     vl_logic_vector(1 downto 0);
        TXPRBSFORCEERR  : in     vl_logic;
        TXPREEMPHASIS   : in     vl_logic_vector(3 downto 0);
        TXRATE          : in     vl_logic_vector(1 downto 0);
        TXRESET         : in     vl_logic;
        TXSEQUENCE      : in     vl_logic_vector(6 downto 0);
        TXSTARTSEQ      : in     vl_logic;
        TXSWING         : in     vl_logic;
        TXUSRCLK        : in     vl_logic;
        TXUSRCLK2       : in     vl_logic;
        USRCODEERR      : in     vl_logic
    );
end GTXE1;
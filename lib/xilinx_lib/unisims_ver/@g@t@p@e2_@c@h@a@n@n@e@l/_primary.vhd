library verilog;
use verilog.vl_types.all;
entity GTPE2_CHANNEL is
    generic(
        ACJTAG_DEBUG_MODE: integer := 0;
        ACJTAG_MODE     : integer := 0;
        ACJTAG_RESET    : integer := 0;
        ADAPT_CFG0      : integer := 0;
        ALIGN_COMMA_DOUBLE: string  := "FALSE";
        ALIGN_COMMA_ENABLE: integer := 127;
        ALIGN_COMMA_WORD: integer := 1;
        ALIGN_MCOMMA_DET: string  := "TRUE";
        ALIGN_MCOMMA_VALUE: integer := 643;
        ALIGN_PCOMMA_DET: string  := "TRUE";
        ALIGN_PCOMMA_VALUE: integer := 380;
        CBCC_DATA_SOURCE_SEL: string  := "DECODED";
      --CFOK_CFG        : integer type with unrepresentable value!
        CFOK_CFG2       : integer := 32;
        CFOK_CFG3       : integer := 32;
        CFOK_CFG4       : integer := 0;
        CFOK_CFG5       : integer := 0;
        CFOK_CFG6       : integer := 0;
        CHAN_BOND_KEEP_ALIGN: string  := "FALSE";
        CHAN_BOND_MAX_SKEW: integer := 7;
        CHAN_BOND_SEQ_1_1: integer := 380;
        CHAN_BOND_SEQ_1_2: integer := 0;
        CHAN_BOND_SEQ_1_3: integer := 0;
        CHAN_BOND_SEQ_1_4: integer := 0;
        CHAN_BOND_SEQ_1_ENABLE: integer := 15;
        CHAN_BOND_SEQ_2_1: integer := 256;
        CHAN_BOND_SEQ_2_2: integer := 256;
        CHAN_BOND_SEQ_2_3: integer := 256;
        CHAN_BOND_SEQ_2_4: integer := 256;
        CHAN_BOND_SEQ_2_ENABLE: integer := 15;
        CHAN_BOND_SEQ_2_USE: string  := "FALSE";
        CHAN_BOND_SEQ_LEN: integer := 1;
        CLK_COMMON_SWING: integer := 0;
        CLK_CORRECT_USE : string  := "TRUE";
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
        CLK_COR_SEQ_2_1 : integer := 256;
        CLK_COR_SEQ_2_2 : integer := 256;
        CLK_COR_SEQ_2_3 : integer := 256;
        CLK_COR_SEQ_2_4 : integer := 256;
        CLK_COR_SEQ_2_ENABLE: integer := 15;
        CLK_COR_SEQ_2_USE: string  := "FALSE";
        CLK_COR_SEQ_LEN : integer := 1;
        DEC_MCOMMA_DETECT: string  := "TRUE";
        DEC_PCOMMA_DETECT: string  := "TRUE";
        DEC_VALID_COMMA_ONLY: string  := "TRUE";
        DMONITOR_CFG    : integer := 2560;
        ES_CLK_PHASE_SEL: integer := 0;
        ES_CONTROL      : integer := 0;
        ES_ERRDET_EN    : string  := "FALSE";
        ES_EYE_SCAN_EN  : string  := "FALSE";
        ES_HORZ_OFFSET  : integer := 16;
        ES_PMA_CFG      : integer := 0;
        ES_PRESCALE     : integer := 0;
        ES_QUALIFIER    : integer := 0;
        ES_QUAL_MASK    : integer := 0;
        ES_SDATA_MASK   : integer := 0;
        ES_VERT_OFFSET  : integer := 0;
        FTS_DESKEW_SEQ_ENABLE: integer := 15;
        FTS_LANE_DESKEW_CFG: integer := 15;
        FTS_LANE_DESKEW_EN: string  := "FALSE";
        GEARBOX_MODE    : integer := 0;
        LOOPBACK_CFG    : integer := 0;
        OUTREFCLK_SEL_INV: integer := 3;
        PCS_PCIE_EN     : string  := "FALSE";
        PCS_RSVD_ATTR   : integer := 0;
        PD_TRANS_TIME_FROM_P2: integer := 60;
        PD_TRANS_TIME_NONE_P2: integer := 25;
        PD_TRANS_TIME_TO_P2: integer := 100;
        PMA_LOOPBACK_CFG: integer := 0;
        PMA_RSV         : integer := 819;
        PMA_RSV2        : integer := 8272;
        PMA_RSV3        : integer := 0;
        PMA_RSV4        : integer := 0;
        PMA_RSV5        : integer := 0;
        PMA_RSV6        : integer := 0;
        PMA_RSV7        : integer := 0;
        RXBUFRESET_TIME : integer := 1;
        RXBUF_ADDR_MODE : string  := "FULL";
        RXBUF_EIDLE_HI_CNT: integer := 8;
        RXBUF_EIDLE_LO_CNT: integer := 0;
        RXBUF_EN        : string  := "TRUE";
        RXBUF_RESET_ON_CB_CHANGE: string  := "TRUE";
        RXBUF_RESET_ON_COMMAALIGN: string  := "FALSE";
        RXBUF_RESET_ON_EIDLE: string  := "FALSE";
        RXBUF_RESET_ON_RATE_CHANGE: string  := "TRUE";
        RXBUF_THRESH_OVFLW: integer := 61;
        RXBUF_THRESH_OVRD: string  := "FALSE";
        RXBUF_THRESH_UNDFLW: integer := 4;
        RXCDRFREQRESET_TIME: integer := 1;
        RXCDRPHRESET_TIME: integer := 1;
      --RXCDR_CFG       : integer type with unrepresentable value!
        RXCDR_FR_RESET_ON_EIDLE: integer := 0;
        RXCDR_HOLD_DURING_EIDLE: integer := 0;
        RXCDR_LOCK_CFG  : integer := 9;
        RXCDR_PH_RESET_ON_EIDLE: integer := 0;
        RXDLY_CFG       : integer := 16;
        RXDLY_LCFG      : integer := 32;
        RXDLY_TAP_CFG   : integer := 0;
        RXGEARBOX_EN    : string  := "FALSE";
        RXISCANRESET_TIME: integer := 1;
        RXLPMRESET_TIME : integer := 15;
        RXLPM_BIAS_STARTUP_DISABLE: integer := 0;
        RXLPM_CFG       : integer := 6;
        RXLPM_CFG1      : integer := 0;
        RXLPM_CM_CFG    : integer := 0;
        RXLPM_GC_CFG    : integer := 482;
        RXLPM_GC_CFG2   : integer := 1;
        RXLPM_HF_CFG    : integer := 1008;
        RXLPM_HF_CFG2   : integer := 10;
        RXLPM_HF_CFG3   : integer := 0;
        RXLPM_HOLD_DURING_EIDLE: integer := 0;
        RXLPM_INCM_CFG  : integer := 0;
        RXLPM_IPCM_CFG  : integer := 0;
        RXLPM_LF_CFG    : integer := 1008;
        RXLPM_LF_CFG2   : integer := 10;
        RXLPM_OSINT_CFG : integer := 4;
        RXOOB_CFG       : integer := 6;
        RXOOB_CLK_CFG   : string  := "PMA";
        RXOSCALRESET_TIME: integer := 3;
        RXOSCALRESET_TIMEOUT: integer := 0;
        RXOUT_DIV       : integer := 2;
        RXPCSRESET_TIME : integer := 1;
        RXPHDLY_CFG     : integer := 540672;
        RXPH_CFG        : integer := 12582914;
        RXPH_MONITOR_SEL: integer := 0;
        RXPI_CFG0       : integer := 0;
        RXPI_CFG1       : integer := 0;
        RXPI_CFG2       : integer := 0;
        RXPMARESET_TIME : integer := 3;
        RXPRBS_ERR_LOOPBACK: integer := 0;
        RXSLIDE_AUTO_WAIT: integer := 7;
        RXSLIDE_MODE    : string  := "OFF";
        RXSYNC_MULTILANE: integer := 0;
        RXSYNC_OVRD     : integer := 0;
        RXSYNC_SKIP_DA  : integer := 0;
        RX_BIAS_CFG     : integer := 3891;
        RX_BUFFER_CFG   : integer := 0;
        RX_CLK25_DIV    : integer := 7;
        RX_CLKMUX_EN    : integer := 1;
        RX_CM_SEL       : integer := 3;
        RX_CM_TRIM      : integer := 4;
        RX_DATA_WIDTH   : integer := 20;
        RX_DDI_SEL      : integer := 0;
        RX_DEBUG_CFG    : integer := 0;
        RX_DEFER_RESET_BUF_EN: string  := "TRUE";
        RX_DISPERR_SEQ_MATCH: string  := "TRUE";
        RX_OS_CFG       : integer := 1008;
        RX_SIG_VALID_DLY: integer := 10;
        RX_XCLK_SEL     : string  := "RXREC";
        SAS_MAX_COM     : integer := 64;
        SAS_MIN_COM     : integer := 36;
        SATA_BURST_SEQ_LEN: integer := 15;
        SATA_BURST_VAL  : integer := 4;
        SATA_EIDLE_VAL  : integer := 4;
        SATA_MAX_BURST  : integer := 8;
        SATA_MAX_INIT   : integer := 21;
        SATA_MAX_WAKE   : integer := 7;
        SATA_MIN_BURST  : integer := 4;
        SATA_MIN_INIT   : integer := 12;
        SATA_MIN_WAKE   : integer := 4;
        SATA_PLL_CFG    : string  := "VCO_3000MHZ";
        SHOW_REALIGN_COMMA: string  := "TRUE";
        SIM_RECEIVER_DETECT_PASS: string  := "TRUE";
        SIM_RESET_SPEEDUP: string  := "TRUE";
        SIM_TX_EIDLE_DRIVE_LEVEL: string  := "X";
        SIM_VERSION     : string  := "1.0";
        TERM_RCAL_CFG   : integer := 16912;
        TERM_RCAL_OVRD  : integer := 0;
        TRANS_TIME_RATE : integer := 14;
        TST_RSV         : integer := 0;
        TXBUF_EN        : string  := "TRUE";
        TXBUF_RESET_ON_RATE_CHANGE: string  := "FALSE";
        TXDLY_CFG       : integer := 16;
        TXDLY_LCFG      : integer := 32;
        TXDLY_TAP_CFG   : integer := 0;
        TXGEARBOX_EN    : string  := "FALSE";
        TXOOB_CFG       : integer := 0;
        TXOUT_DIV       : integer := 2;
        TXPCSRESET_TIME : integer := 1;
        TXPHDLY_CFG     : integer := 540672;
        TXPH_CFG        : integer := 1024;
        TXPH_MONITOR_SEL: integer := 0;
        TXPI_CFG0       : integer := 0;
        TXPI_CFG1       : integer := 0;
        TXPI_CFG2       : integer := 0;
        TXPI_CFG3       : integer := 0;
        TXPI_CFG4       : integer := 0;
        TXPI_CFG5       : integer := 0;
        TXPI_GREY_SEL   : integer := 0;
        TXPI_INVSTROBE_SEL: integer := 0;
        TXPI_PPMCLK_SEL : string  := "TXUSRCLK2";
        TXPI_PPM_CFG    : integer := 0;
        TXPI_SYNFREQ_PPM: integer := 0;
        TXPMARESET_TIME : integer := 1;
        TXSYNC_MULTILANE: integer := 0;
        TXSYNC_OVRD     : integer := 0;
        TXSYNC_SKIP_DA  : integer := 0;
        TX_CLK25_DIV    : integer := 7;
        TX_CLKMUX_EN    : integer := 1;
        TX_DATA_WIDTH   : integer := 20;
        TX_DEEMPH0      : integer := 0;
        TX_DEEMPH1      : integer := 0;
        TX_DRIVE_MODE   : string  := "DIRECT";
        TX_EIDLE_ASSERT_DELAY: integer := 6;
        TX_EIDLE_DEASSERT_DELAY: integer := 4;
        TX_LOOPBACK_DRIVE_HIZ: string  := "FALSE";
        TX_MAINCURSOR_SEL: integer := 0;
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
        TX_PREDRIVER_MODE: integer := 0;
        TX_RXDETECT_CFG : integer := 6194;
        TX_RXDETECT_REF : integer := 4;
        TX_XCLK_SEL     : string  := "TXUSR";
        UCODEER_CLR     : integer := 0;
        USE_PCS_CLK_PHASE_SEL: integer := 0
    );
    port(
        DMONITOROUT     : out    vl_logic_vector(14 downto 0);
        DRPDO           : out    vl_logic_vector(15 downto 0);
        DRPRDY          : out    vl_logic;
        EYESCANDATAERROR: out    vl_logic;
        GTPTXN          : out    vl_logic;
        GTPTXP          : out    vl_logic;
        PCSRSVDOUT      : out    vl_logic_vector(15 downto 0);
        PHYSTATUS       : out    vl_logic;
        PMARSVDOUT0     : out    vl_logic;
        PMARSVDOUT1     : out    vl_logic;
        RXBUFSTATUS     : out    vl_logic_vector(2 downto 0);
        RXBYTEISALIGNED : out    vl_logic;
        RXBYTEREALIGN   : out    vl_logic;
        RXCDRLOCK       : out    vl_logic;
        RXCHANBONDSEQ   : out    vl_logic;
        RXCHANISALIGNED : out    vl_logic;
        RXCHANREALIGN   : out    vl_logic;
        RXCHARISCOMMA   : out    vl_logic_vector(3 downto 0);
        RXCHARISK       : out    vl_logic_vector(3 downto 0);
        RXCHBONDO       : out    vl_logic_vector(3 downto 0);
        RXCLKCORCNT     : out    vl_logic_vector(1 downto 0);
        RXCOMINITDET    : out    vl_logic;
        RXCOMMADET      : out    vl_logic;
        RXCOMSASDET     : out    vl_logic;
        RXCOMWAKEDET    : out    vl_logic;
        RXDATA          : out    vl_logic_vector(31 downto 0);
        RXDATAVALID     : out    vl_logic_vector(1 downto 0);
        RXDISPERR       : out    vl_logic_vector(3 downto 0);
        RXDLYSRESETDONE : out    vl_logic;
        RXELECIDLE      : out    vl_logic;
        RXHEADER        : out    vl_logic_vector(2 downto 0);
        RXHEADERVALID   : out    vl_logic;
        RXNOTINTABLE    : out    vl_logic_vector(3 downto 0);
        RXOSINTDONE     : out    vl_logic;
        RXOSINTSTARTED  : out    vl_logic;
        RXOSINTSTROBEDONE: out    vl_logic;
        RXOSINTSTROBESTARTED: out    vl_logic;
        RXOUTCLK        : out    vl_logic;
        RXOUTCLKFABRIC  : out    vl_logic;
        RXOUTCLKPCS     : out    vl_logic;
        RXPHALIGNDONE   : out    vl_logic;
        RXPHMONITOR     : out    vl_logic_vector(4 downto 0);
        RXPHSLIPMONITOR : out    vl_logic_vector(4 downto 0);
        RXPMARESETDONE  : out    vl_logic;
        RXPRBSERR       : out    vl_logic;
        RXRATEDONE      : out    vl_logic;
        RXRESETDONE     : out    vl_logic;
        RXSTARTOFSEQ    : out    vl_logic_vector(1 downto 0);
        RXSTATUS        : out    vl_logic_vector(2 downto 0);
        RXSYNCDONE      : out    vl_logic;
        RXSYNCOUT       : out    vl_logic;
        RXVALID         : out    vl_logic;
        TXBUFSTATUS     : out    vl_logic_vector(1 downto 0);
        TXCOMFINISH     : out    vl_logic;
        TXDLYSRESETDONE : out    vl_logic;
        TXGEARBOXREADY  : out    vl_logic;
        TXOUTCLK        : out    vl_logic;
        TXOUTCLKFABRIC  : out    vl_logic;
        TXOUTCLKPCS     : out    vl_logic;
        TXPHALIGNDONE   : out    vl_logic;
        TXPHINITDONE    : out    vl_logic;
        TXPMARESETDONE  : out    vl_logic;
        TXRATEDONE      : out    vl_logic;
        TXRESETDONE     : out    vl_logic;
        TXSYNCDONE      : out    vl_logic;
        TXSYNCOUT       : out    vl_logic;
        CFGRESET        : in     vl_logic;
        CLKRSVD0        : in     vl_logic;
        CLKRSVD1        : in     vl_logic;
        DMONFIFORESET   : in     vl_logic;
        DMONITORCLK     : in     vl_logic;
        DRPADDR         : in     vl_logic_vector(8 downto 0);
        DRPCLK          : in     vl_logic;
        DRPDI           : in     vl_logic_vector(15 downto 0);
        DRPEN           : in     vl_logic;
        DRPWE           : in     vl_logic;
        EYESCANMODE     : in     vl_logic;
        EYESCANRESET    : in     vl_logic;
        EYESCANTRIGGER  : in     vl_logic;
        GTPRXN          : in     vl_logic;
        GTPRXP          : in     vl_logic;
        GTRESETSEL      : in     vl_logic;
        GTRSVD          : in     vl_logic_vector(15 downto 0);
        GTRXRESET       : in     vl_logic;
        GTTXRESET       : in     vl_logic;
        LOOPBACK        : in     vl_logic_vector(2 downto 0);
        PCSRSVDIN       : in     vl_logic_vector(15 downto 0);
        PLL0CLK         : in     vl_logic;
        PLL0REFCLK      : in     vl_logic;
        PLL1CLK         : in     vl_logic;
        PLL1REFCLK      : in     vl_logic;
        PMARSVDIN0      : in     vl_logic;
        PMARSVDIN1      : in     vl_logic;
        PMARSVDIN2      : in     vl_logic;
        PMARSVDIN3      : in     vl_logic;
        PMARSVDIN4      : in     vl_logic;
        RESETOVRD       : in     vl_logic;
        RX8B10BEN       : in     vl_logic;
        RXADAPTSELTEST  : in     vl_logic_vector(13 downto 0);
        RXBUFRESET      : in     vl_logic;
        RXCDRFREQRESET  : in     vl_logic;
        RXCDRHOLD       : in     vl_logic;
        RXCDROVRDEN     : in     vl_logic;
        RXCDRRESET      : in     vl_logic;
        RXCDRRESETRSV   : in     vl_logic;
        RXCHBONDEN      : in     vl_logic;
        RXCHBONDI       : in     vl_logic_vector(3 downto 0);
        RXCHBONDLEVEL   : in     vl_logic_vector(2 downto 0);
        RXCHBONDMASTER  : in     vl_logic;
        RXCHBONDSLAVE   : in     vl_logic;
        RXCOMMADETEN    : in     vl_logic;
        RXDDIEN         : in     vl_logic;
        RXDFEXYDEN      : in     vl_logic;
        RXDLYBYPASS     : in     vl_logic;
        RXDLYEN         : in     vl_logic;
        RXDLYOVRDEN     : in     vl_logic;
        RXDLYSRESET     : in     vl_logic;
        RXELECIDLEMODE  : in     vl_logic_vector(1 downto 0);
        RXGEARBOXSLIP   : in     vl_logic;
        RXLPMHFHOLD     : in     vl_logic;
        RXLPMHFOVRDEN   : in     vl_logic;
        RXLPMLFHOLD     : in     vl_logic;
        RXLPMLFOVRDEN   : in     vl_logic;
        RXLPMOSINTNTRLEN: in     vl_logic;
        RXLPMRESET      : in     vl_logic;
        RXMCOMMAALIGNEN : in     vl_logic;
        RXOOBRESET      : in     vl_logic;
        RXOSCALRESET    : in     vl_logic;
        RXOSHOLD        : in     vl_logic;
        RXOSINTCFG      : in     vl_logic_vector(3 downto 0);
        RXOSINTEN       : in     vl_logic;
        RXOSINTHOLD     : in     vl_logic;
        RXOSINTID0      : in     vl_logic_vector(3 downto 0);
        RXOSINTNTRLEN   : in     vl_logic;
        RXOSINTOVRDEN   : in     vl_logic;
        RXOSINTPD       : in     vl_logic;
        RXOSINTSTROBE   : in     vl_logic;
        RXOSINTTESTOVRDEN: in     vl_logic;
        RXOSOVRDEN      : in     vl_logic;
        RXOUTCLKSEL     : in     vl_logic_vector(2 downto 0);
        RXPCOMMAALIGNEN : in     vl_logic;
        RXPCSRESET      : in     vl_logic;
        RXPD            : in     vl_logic_vector(1 downto 0);
        RXPHALIGN       : in     vl_logic;
        RXPHALIGNEN     : in     vl_logic;
        RXPHDLYPD       : in     vl_logic;
        RXPHDLYRESET    : in     vl_logic;
        RXPHOVRDEN      : in     vl_logic;
        RXPMARESET      : in     vl_logic;
        RXPOLARITY      : in     vl_logic;
        RXPRBSCNTRESET  : in     vl_logic;
        RXPRBSSEL       : in     vl_logic_vector(2 downto 0);
        RXRATE          : in     vl_logic_vector(2 downto 0);
        RXRATEMODE      : in     vl_logic;
        RXSLIDE         : in     vl_logic;
        RXSYNCALLIN     : in     vl_logic;
        RXSYNCIN        : in     vl_logic;
        RXSYNCMODE      : in     vl_logic;
        RXSYSCLKSEL     : in     vl_logic_vector(1 downto 0);
        RXUSERRDY       : in     vl_logic;
        RXUSRCLK        : in     vl_logic;
        RXUSRCLK2       : in     vl_logic;
        SETERRSTATUS    : in     vl_logic;
        SIGVALIDCLK     : in     vl_logic;
        TSTIN           : in     vl_logic_vector(19 downto 0);
        TX8B10BBYPASS   : in     vl_logic_vector(3 downto 0);
        TX8B10BEN       : in     vl_logic;
        TXBUFDIFFCTRL   : in     vl_logic_vector(2 downto 0);
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
        TXDIFFPD        : in     vl_logic;
        TXDLYBYPASS     : in     vl_logic;
        TXDLYEN         : in     vl_logic;
        TXDLYHOLD       : in     vl_logic;
        TXDLYOVRDEN     : in     vl_logic;
        TXDLYSRESET     : in     vl_logic;
        TXDLYUPDOWN     : in     vl_logic;
        TXELECIDLE      : in     vl_logic;
        TXHEADER        : in     vl_logic_vector(2 downto 0);
        TXINHIBIT       : in     vl_logic;
        TXMAINCURSOR    : in     vl_logic_vector(6 downto 0);
        TXMARGIN        : in     vl_logic_vector(2 downto 0);
        TXOUTCLKSEL     : in     vl_logic_vector(2 downto 0);
        TXPCSRESET      : in     vl_logic;
        TXPD            : in     vl_logic_vector(1 downto 0);
        TXPDELECIDLEMODE: in     vl_logic;
        TXPHALIGN       : in     vl_logic;
        TXPHALIGNEN     : in     vl_logic;
        TXPHDLYPD       : in     vl_logic;
        TXPHDLYRESET    : in     vl_logic;
        TXPHDLYTSTCLK   : in     vl_logic;
        TXPHINIT        : in     vl_logic;
        TXPHOVRDEN      : in     vl_logic;
        TXPIPPMEN       : in     vl_logic;
        TXPIPPMOVRDEN   : in     vl_logic;
        TXPIPPMPD       : in     vl_logic;
        TXPIPPMSEL      : in     vl_logic;
        TXPIPPMSTEPSIZE : in     vl_logic_vector(4 downto 0);
        TXPISOPD        : in     vl_logic;
        TXPMARESET      : in     vl_logic;
        TXPOLARITY      : in     vl_logic;
        TXPOSTCURSOR    : in     vl_logic_vector(4 downto 0);
        TXPOSTCURSORINV : in     vl_logic;
        TXPRBSFORCEERR  : in     vl_logic;
        TXPRBSSEL       : in     vl_logic_vector(2 downto 0);
        TXPRECURSOR     : in     vl_logic_vector(4 downto 0);
        TXPRECURSORINV  : in     vl_logic;
        TXRATE          : in     vl_logic_vector(2 downto 0);
        TXRATEMODE      : in     vl_logic;
        TXSEQUENCE      : in     vl_logic_vector(6 downto 0);
        TXSTARTSEQ      : in     vl_logic;
        TXSWING         : in     vl_logic;
        TXSYNCALLIN     : in     vl_logic;
        TXSYNCIN        : in     vl_logic;
        TXSYNCMODE      : in     vl_logic;
        TXSYSCLKSEL     : in     vl_logic_vector(1 downto 0);
        TXUSERRDY       : in     vl_logic;
        TXUSRCLK        : in     vl_logic;
        TXUSRCLK2       : in     vl_logic
    );
end GTPE2_CHANNEL;
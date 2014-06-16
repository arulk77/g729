library verilog;
use verilog.vl_types.all;
entity PPC440 is
    generic(
        CLOCK_DELAY     : string  := "FALSE";
        DCR_AUTOLOCK_ENABLE: string  := "TRUE";
        PPCDM_ASYNCMODE : string  := "FALSE";
        PPCDS_ASYNCMODE : string  := "FALSE";
        PPCS0_WIDTH_128N64: string  := "TRUE";
        PPCS1_WIDTH_128N64: string  := "TRUE";
        APU_CONTROL     : integer := 8192;
        APU_UDI0        : integer := 0;
        APU_UDI1        : integer := 0;
        APU_UDI10       : integer := 0;
        APU_UDI11       : integer := 0;
        APU_UDI12       : integer := 0;
        APU_UDI13       : integer := 0;
        APU_UDI14       : integer := 0;
        APU_UDI15       : integer := 0;
        APU_UDI2        : integer := 0;
        APU_UDI3        : integer := 0;
        APU_UDI4        : integer := 0;
        APU_UDI5        : integer := 0;
        APU_UDI6        : integer := 0;
        APU_UDI7        : integer := 0;
        APU_UDI8        : integer := 0;
        APU_UDI9        : integer := 0;
        DMA0_RXCHANNELCTRL: integer := 16842752;
        DMA0_TXCHANNELCTRL: integer := 16842752;
        DMA1_RXCHANNELCTRL: integer := 16842752;
        DMA1_TXCHANNELCTRL: integer := 16842752;
        DMA2_RXCHANNELCTRL: integer := 16842752;
        DMA2_TXCHANNELCTRL: integer := 16842752;
        DMA3_RXCHANNELCTRL: integer := 16842752;
        DMA3_TXCHANNELCTRL: integer := 16842752;
      --INTERCONNECT_IMASK: integer type with unrepresentable value!
        INTERCONNECT_TMPL_SEL: integer := 1073741823;
        MI_ARBCONFIG    : integer := 4399120;
        MI_BANKCONFLICT_MASK: integer := 0;
        MI_CONTROL      : integer := 143;
        MI_ROWCONFLICT_MASK: integer := 0;
        PPCM_ARBCONFIG  : integer := 4399120;
      --PPCM_CONTROL    : integer type with unrepresentable value!
        PPCM_COUNTER    : integer := 1280;
      --PPCS0_ADDRMAP_TMPL0: integer type with unrepresentable value!
      --PPCS0_ADDRMAP_TMPL1: integer type with unrepresentable value!
      --PPCS0_ADDRMAP_TMPL2: integer type with unrepresentable value!
      --PPCS0_ADDRMAP_TMPL3: integer type with unrepresentable value!
      --PPCS0_CONTROL   : integer type with unrepresentable value!
      --PPCS1_ADDRMAP_TMPL0: integer type with unrepresentable value!
      --PPCS1_ADDRMAP_TMPL1: integer type with unrepresentable value!
      --PPCS1_ADDRMAP_TMPL2: integer type with unrepresentable value!
      --PPCS1_ADDRMAP_TMPL3: integer type with unrepresentable value!
      --PPCS1_CONTROL   : integer type with unrepresentable value!
      --XBAR_ADDRMAP_TMPL0: integer type with unrepresentable value!
        XBAR_ADDRMAP_TMPL1: integer := 0;
        XBAR_ADDRMAP_TMPL2: integer := 0;
        XBAR_ADDRMAP_TMPL3: integer := 0;
        DMA0_CONTROL    : integer := 0;
        DMA1_CONTROL    : integer := 0;
        DMA2_CONTROL    : integer := 0;
        DMA3_CONTROL    : integer := 0;
        DMA0_RXIRQTIMER : integer := 1023;
        DMA0_TXIRQTIMER : integer := 1023;
        DMA1_RXIRQTIMER : integer := 1023;
        DMA1_TXIRQTIMER : integer := 1023;
        DMA2_RXIRQTIMER : integer := 1023;
        DMA2_TXIRQTIMER : integer := 1023;
        DMA3_RXIRQTIMER : integer := 1023;
        DMA3_TXIRQTIMER : integer := 1023
    );
    port(
        APUFCMDECFPUOP  : out    vl_logic;
        APUFCMDECLDSTXFERSIZE: out    vl_logic_vector(0 to 2);
        APUFCMDECLOAD   : out    vl_logic;
        APUFCMDECNONAUTON: out    vl_logic;
        APUFCMDECSTORE  : out    vl_logic;
        APUFCMDECUDI    : out    vl_logic_vector(0 to 3);
        APUFCMDECUDIVALID: out    vl_logic;
        APUFCMENDIAN    : out    vl_logic;
        APUFCMFLUSH     : out    vl_logic;
        APUFCMINSTRUCTION: out    vl_logic_vector(0 to 31);
        APUFCMINSTRVALID: out    vl_logic;
        APUFCMLOADBYTEADDR: out    vl_logic_vector(0 to 3);
        APUFCMLOADDATA  : out    vl_logic_vector(0 to 127);
        APUFCMLOADDVALID: out    vl_logic;
        APUFCMMSRFE0    : out    vl_logic;
        APUFCMMSRFE1    : out    vl_logic;
        APUFCMNEXTINSTRREADY: out    vl_logic;
        APUFCMOPERANDVALID: out    vl_logic;
        APUFCMRADATA    : out    vl_logic_vector(0 to 31);
        APUFCMRBDATA    : out    vl_logic_vector(0 to 31);
        APUFCMWRITEBACKOK: out    vl_logic;
        C440CPMCORESLEEPREQ: out    vl_logic;
        C440CPMDECIRPTREQ: out    vl_logic;
        C440CPMFITIRPTREQ: out    vl_logic;
        C440CPMMSRCE    : out    vl_logic;
        C440CPMMSREE    : out    vl_logic;
        C440CPMTIMERRESETREQ: out    vl_logic;
        C440CPMWDIRPTREQ: out    vl_logic;
        C440DBGSYSTEMCONTROL: out    vl_logic_vector(0 to 7);
        C440JTGTDO      : out    vl_logic;
        C440JTGTDOEN    : out    vl_logic;
        C440MACHINECHECK: out    vl_logic;
        C440RSTCHIPRESETREQ: out    vl_logic;
        C440RSTCORERESETREQ: out    vl_logic;
        C440RSTSYSTEMRESETREQ: out    vl_logic;
        C440TRCBRANCHSTATUS: out    vl_logic_vector(0 to 2);
        C440TRCCYCLE    : out    vl_logic;
        C440TRCEXECUTIONSTATUS: out    vl_logic_vector(0 to 4);
        C440TRCTRACESTATUS: out    vl_logic_vector(0 to 6);
        C440TRCTRIGGEREVENTOUT: out    vl_logic;
        C440TRCTRIGGEREVENTTYPE: out    vl_logic_vector(0 to 13);
        DMA0LLRSTENGINEACK: out    vl_logic;
        DMA0LLRXDSTRDYN : out    vl_logic;
        DMA0LLTXD       : out    vl_logic_vector(0 to 31);
        DMA0LLTXEOFN    : out    vl_logic;
        DMA0LLTXEOPN    : out    vl_logic;
        DMA0LLTXREM     : out    vl_logic_vector(0 to 3);
        DMA0LLTXSOFN    : out    vl_logic;
        DMA0LLTXSOPN    : out    vl_logic;
        DMA0LLTXSRCRDYN : out    vl_logic;
        DMA0RXIRQ       : out    vl_logic;
        DMA0TXIRQ       : out    vl_logic;
        DMA1LLRSTENGINEACK: out    vl_logic;
        DMA1LLRXDSTRDYN : out    vl_logic;
        DMA1LLTXD       : out    vl_logic_vector(0 to 31);
        DMA1LLTXEOFN    : out    vl_logic;
        DMA1LLTXEOPN    : out    vl_logic;
        DMA1LLTXREM     : out    vl_logic_vector(0 to 3);
        DMA1LLTXSOFN    : out    vl_logic;
        DMA1LLTXSOPN    : out    vl_logic;
        DMA1LLTXSRCRDYN : out    vl_logic;
        DMA1RXIRQ       : out    vl_logic;
        DMA1TXIRQ       : out    vl_logic;
        DMA2LLRSTENGINEACK: out    vl_logic;
        DMA2LLRXDSTRDYN : out    vl_logic;
        DMA2LLTXD       : out    vl_logic_vector(0 to 31);
        DMA2LLTXEOFN    : out    vl_logic;
        DMA2LLTXEOPN    : out    vl_logic;
        DMA2LLTXREM     : out    vl_logic_vector(0 to 3);
        DMA2LLTXSOFN    : out    vl_logic;
        DMA2LLTXSOPN    : out    vl_logic;
        DMA2LLTXSRCRDYN : out    vl_logic;
        DMA2RXIRQ       : out    vl_logic;
        DMA2TXIRQ       : out    vl_logic;
        DMA3LLRSTENGINEACK: out    vl_logic;
        DMA3LLRXDSTRDYN : out    vl_logic;
        DMA3LLTXD       : out    vl_logic_vector(0 to 31);
        DMA3LLTXEOFN    : out    vl_logic;
        DMA3LLTXEOPN    : out    vl_logic;
        DMA3LLTXREM     : out    vl_logic_vector(0 to 3);
        DMA3LLTXSOFN    : out    vl_logic;
        DMA3LLTXSOPN    : out    vl_logic;
        DMA3LLTXSRCRDYN : out    vl_logic;
        DMA3RXIRQ       : out    vl_logic;
        DMA3TXIRQ       : out    vl_logic;
        MIMCADDRESS     : out    vl_logic_vector(0 to 35);
        MIMCADDRESSVALID: out    vl_logic;
        MIMCBANKCONFLICT: out    vl_logic;
        MIMCBYTEENABLE  : out    vl_logic_vector(0 to 15);
        MIMCREADNOTWRITE: out    vl_logic;
        MIMCROWCONFLICT : out    vl_logic;
        MIMCWRITEDATA   : out    vl_logic_vector(0 to 127);
        MIMCWRITEDATAVALID: out    vl_logic;
        PPCCPMINTERCONNECTBUSY: out    vl_logic;
        PPCDMDCRABUS    : out    vl_logic_vector(0 to 9);
        PPCDMDCRDBUSOUT : out    vl_logic_vector(0 to 31);
        PPCDMDCRREAD    : out    vl_logic;
        PPCDMDCRUABUS   : out    vl_logic_vector(20 to 21);
        PPCDMDCRWRITE   : out    vl_logic;
        PPCDSDCRACK     : out    vl_logic;
        PPCDSDCRDBUSIN  : out    vl_logic_vector(0 to 31);
        PPCDSDCRTIMEOUTWAIT: out    vl_logic;
        PPCEICINTERCONNECTIRQ: out    vl_logic;
        PPCMPLBABORT    : out    vl_logic;
        PPCMPLBABUS     : out    vl_logic_vector(0 to 31);
        PPCMPLBBE       : out    vl_logic_vector(0 to 15);
        PPCMPLBBUSLOCK  : out    vl_logic;
        PPCMPLBLOCKERR  : out    vl_logic;
        PPCMPLBPRIORITY : out    vl_logic_vector(0 to 1);
        PPCMPLBRDBURST  : out    vl_logic;
        PPCMPLBREQUEST  : out    vl_logic;
        PPCMPLBRNW      : out    vl_logic;
        PPCMPLBSIZE     : out    vl_logic_vector(0 to 3);
        PPCMPLBTATTRIBUTE: out    vl_logic_vector(0 to 15);
        PPCMPLBTYPE     : out    vl_logic_vector(0 to 2);
        PPCMPLBUABUS    : out    vl_logic_vector(28 to 31);
        PPCMPLBWRBURST  : out    vl_logic;
        PPCMPLBWRDBUS   : out    vl_logic_vector(0 to 127);
        PPCS0PLBADDRACK : out    vl_logic;
        PPCS0PLBMBUSY   : out    vl_logic_vector(0 to 3);
        PPCS0PLBMIRQ    : out    vl_logic_vector(0 to 3);
        PPCS0PLBMRDERR  : out    vl_logic_vector(0 to 3);
        PPCS0PLBMWRERR  : out    vl_logic_vector(0 to 3);
        PPCS0PLBRDBTERM : out    vl_logic;
        PPCS0PLBRDCOMP  : out    vl_logic;
        PPCS0PLBRDDACK  : out    vl_logic;
        PPCS0PLBRDDBUS  : out    vl_logic_vector(0 to 127);
        PPCS0PLBRDWDADDR: out    vl_logic_vector(0 to 3);
        PPCS0PLBREARBITRATE: out    vl_logic;
        PPCS0PLBSSIZE   : out    vl_logic_vector(0 to 1);
        PPCS0PLBWAIT    : out    vl_logic;
        PPCS0PLBWRBTERM : out    vl_logic;
        PPCS0PLBWRCOMP  : out    vl_logic;
        PPCS0PLBWRDACK  : out    vl_logic;
        PPCS1PLBADDRACK : out    vl_logic;
        PPCS1PLBMBUSY   : out    vl_logic_vector(0 to 3);
        PPCS1PLBMIRQ    : out    vl_logic_vector(0 to 3);
        PPCS1PLBMRDERR  : out    vl_logic_vector(0 to 3);
        PPCS1PLBMWRERR  : out    vl_logic_vector(0 to 3);
        PPCS1PLBRDBTERM : out    vl_logic;
        PPCS1PLBRDCOMP  : out    vl_logic;
        PPCS1PLBRDDACK  : out    vl_logic;
        PPCS1PLBRDDBUS  : out    vl_logic_vector(0 to 127);
        PPCS1PLBRDWDADDR: out    vl_logic_vector(0 to 3);
        PPCS1PLBREARBITRATE: out    vl_logic;
        PPCS1PLBSSIZE   : out    vl_logic_vector(0 to 1);
        PPCS1PLBWAIT    : out    vl_logic;
        PPCS1PLBWRBTERM : out    vl_logic;
        PPCS1PLBWRCOMP  : out    vl_logic;
        PPCS1PLBWRDACK  : out    vl_logic;
        CPMC440CLK      : in     vl_logic;
        CPMC440CLKEN    : in     vl_logic;
        CPMC440CORECLOCKINACTIVE: in     vl_logic;
        CPMC440TIMERCLOCK: in     vl_logic;
        CPMDCRCLK       : in     vl_logic;
        CPMDMA0LLCLK    : in     vl_logic;
        CPMDMA1LLCLK    : in     vl_logic;
        CPMDMA2LLCLK    : in     vl_logic;
        CPMDMA3LLCLK    : in     vl_logic;
        CPMFCMCLK       : in     vl_logic;
        CPMINTERCONNECTCLK: in     vl_logic;
        CPMINTERCONNECTCLKEN: in     vl_logic;
        CPMINTERCONNECTCLKNTO1: in     vl_logic;
        CPMMCCLK        : in     vl_logic;
        CPMPPCMPLBCLK   : in     vl_logic;
        CPMPPCS0PLBCLK  : in     vl_logic;
        CPMPPCS1PLBCLK  : in     vl_logic;
        DBGC440DEBUGHALT: in     vl_logic;
        DBGC440SYSTEMSTATUS: in     vl_logic_vector(0 to 4);
        DBGC440UNCONDDEBUGEVENT: in     vl_logic;
        DCRPPCDMACK     : in     vl_logic;
        DCRPPCDMDBUSIN  : in     vl_logic_vector(0 to 31);
        DCRPPCDMTIMEOUTWAIT: in     vl_logic;
        DCRPPCDSABUS    : in     vl_logic_vector(0 to 9);
        DCRPPCDSDBUSOUT : in     vl_logic_vector(0 to 31);
        DCRPPCDSREAD    : in     vl_logic;
        DCRPPCDSWRITE   : in     vl_logic;
        EICC440CRITIRQ  : in     vl_logic;
        EICC440EXTIRQ   : in     vl_logic;
        FCMAPUCONFIRMINSTR: in     vl_logic;
        FCMAPUCR        : in     vl_logic_vector(0 to 3);
        FCMAPUDONE      : in     vl_logic;
        FCMAPUEXCEPTION : in     vl_logic;
        FCMAPUFPSCRFEX  : in     vl_logic;
        FCMAPURESULT    : in     vl_logic_vector(0 to 31);
        FCMAPURESULTVALID: in     vl_logic;
        FCMAPUSLEEPNOTREADY: in     vl_logic;
        FCMAPUSTOREDATA : in     vl_logic_vector(0 to 127);
        JTGC440TCK      : in     vl_logic;
        JTGC440TDI      : in     vl_logic;
        JTGC440TMS      : in     vl_logic;
        JTGC440TRSTNEG  : in     vl_logic;
        LLDMA0RSTENGINEREQ: in     vl_logic;
        LLDMA0RXD       : in     vl_logic_vector(0 to 31);
        LLDMA0RXEOFN    : in     vl_logic;
        LLDMA0RXEOPN    : in     vl_logic;
        LLDMA0RXREM     : in     vl_logic_vector(0 to 3);
        LLDMA0RXSOFN    : in     vl_logic;
        LLDMA0RXSOPN    : in     vl_logic;
        LLDMA0RXSRCRDYN : in     vl_logic;
        LLDMA0TXDSTRDYN : in     vl_logic;
        LLDMA1RSTENGINEREQ: in     vl_logic;
        LLDMA1RXD       : in     vl_logic_vector(0 to 31);
        LLDMA1RXEOFN    : in     vl_logic;
        LLDMA1RXEOPN    : in     vl_logic;
        LLDMA1RXREM     : in     vl_logic_vector(0 to 3);
        LLDMA1RXSOFN    : in     vl_logic;
        LLDMA1RXSOPN    : in     vl_logic;
        LLDMA1RXSRCRDYN : in     vl_logic;
        LLDMA1TXDSTRDYN : in     vl_logic;
        LLDMA2RSTENGINEREQ: in     vl_logic;
        LLDMA2RXD       : in     vl_logic_vector(0 to 31);
        LLDMA2RXEOFN    : in     vl_logic;
        LLDMA2RXEOPN    : in     vl_logic;
        LLDMA2RXREM     : in     vl_logic_vector(0 to 3);
        LLDMA2RXSOFN    : in     vl_logic;
        LLDMA2RXSOPN    : in     vl_logic;
        LLDMA2RXSRCRDYN : in     vl_logic;
        LLDMA2TXDSTRDYN : in     vl_logic;
        LLDMA3RSTENGINEREQ: in     vl_logic;
        LLDMA3RXD       : in     vl_logic_vector(0 to 31);
        LLDMA3RXEOFN    : in     vl_logic;
        LLDMA3RXEOPN    : in     vl_logic;
        LLDMA3RXREM     : in     vl_logic_vector(0 to 3);
        LLDMA3RXSOFN    : in     vl_logic;
        LLDMA3RXSOPN    : in     vl_logic;
        LLDMA3RXSRCRDYN : in     vl_logic;
        LLDMA3TXDSTRDYN : in     vl_logic;
        MCMIADDRREADYTOACCEPT: in     vl_logic;
        MCMIREADDATA    : in     vl_logic_vector(0 to 127);
        MCMIREADDATAERR : in     vl_logic;
        MCMIREADDATAVALID: in     vl_logic;
        PLBPPCMADDRACK  : in     vl_logic;
        PLBPPCMMBUSY    : in     vl_logic;
        PLBPPCMMIRQ     : in     vl_logic;
        PLBPPCMMRDERR   : in     vl_logic;
        PLBPPCMMWRERR   : in     vl_logic;
        PLBPPCMRDBTERM  : in     vl_logic;
        PLBPPCMRDDACK   : in     vl_logic;
        PLBPPCMRDDBUS   : in     vl_logic_vector(0 to 127);
        PLBPPCMRDPENDPRI: in     vl_logic_vector(0 to 1);
        PLBPPCMRDPENDREQ: in     vl_logic;
        PLBPPCMRDWDADDR : in     vl_logic_vector(0 to 3);
        PLBPPCMREARBITRATE: in     vl_logic;
        PLBPPCMREQPRI   : in     vl_logic_vector(0 to 1);
        PLBPPCMSSIZE    : in     vl_logic_vector(0 to 1);
        PLBPPCMTIMEOUT  : in     vl_logic;
        PLBPPCMWRBTERM  : in     vl_logic;
        PLBPPCMWRDACK   : in     vl_logic;
        PLBPPCMWRPENDPRI: in     vl_logic_vector(0 to 1);
        PLBPPCMWRPENDREQ: in     vl_logic;
        PLBPPCS0ABORT   : in     vl_logic;
        PLBPPCS0ABUS    : in     vl_logic_vector(0 to 31);
        PLBPPCS0BE      : in     vl_logic_vector(0 to 15);
        PLBPPCS0BUSLOCK : in     vl_logic;
        PLBPPCS0LOCKERR : in     vl_logic;
        PLBPPCS0MASTERID: in     vl_logic_vector(0 to 1);
        PLBPPCS0MSIZE   : in     vl_logic_vector(0 to 1);
        PLBPPCS0PAVALID : in     vl_logic;
        PLBPPCS0RDBURST : in     vl_logic;
        PLBPPCS0RDPENDPRI: in     vl_logic_vector(0 to 1);
        PLBPPCS0RDPENDREQ: in     vl_logic;
        PLBPPCS0RDPRIM  : in     vl_logic;
        PLBPPCS0REQPRI  : in     vl_logic_vector(0 to 1);
        PLBPPCS0RNW     : in     vl_logic;
        PLBPPCS0SAVALID : in     vl_logic;
        PLBPPCS0SIZE    : in     vl_logic_vector(0 to 3);
        PLBPPCS0TATTRIBUTE: in     vl_logic_vector(0 to 15);
        PLBPPCS0TYPE    : in     vl_logic_vector(0 to 2);
        PLBPPCS0UABUS   : in     vl_logic_vector(28 to 31);
        PLBPPCS0WRBURST : in     vl_logic;
        PLBPPCS0WRDBUS  : in     vl_logic_vector(0 to 127);
        PLBPPCS0WRPENDPRI: in     vl_logic_vector(0 to 1);
        PLBPPCS0WRPENDREQ: in     vl_logic;
        PLBPPCS0WRPRIM  : in     vl_logic;
        PLBPPCS1ABORT   : in     vl_logic;
        PLBPPCS1ABUS    : in     vl_logic_vector(0 to 31);
        PLBPPCS1BE      : in     vl_logic_vector(0 to 15);
        PLBPPCS1BUSLOCK : in     vl_logic;
        PLBPPCS1LOCKERR : in     vl_logic;
        PLBPPCS1MASTERID: in     vl_logic_vector(0 to 1);
        PLBPPCS1MSIZE   : in     vl_logic_vector(0 to 1);
        PLBPPCS1PAVALID : in     vl_logic;
        PLBPPCS1RDBURST : in     vl_logic;
        PLBPPCS1RDPENDPRI: in     vl_logic_vector(0 to 1);
        PLBPPCS1RDPENDREQ: in     vl_logic;
        PLBPPCS1RDPRIM  : in     vl_logic;
        PLBPPCS1REQPRI  : in     vl_logic_vector(0 to 1);
        PLBPPCS1RNW     : in     vl_logic;
        PLBPPCS1SAVALID : in     vl_logic;
        PLBPPCS1SIZE    : in     vl_logic_vector(0 to 3);
        PLBPPCS1TATTRIBUTE: in     vl_logic_vector(0 to 15);
        PLBPPCS1TYPE    : in     vl_logic_vector(0 to 2);
        PLBPPCS1UABUS   : in     vl_logic_vector(28 to 31);
        PLBPPCS1WRBURST : in     vl_logic;
        PLBPPCS1WRDBUS  : in     vl_logic_vector(0 to 127);
        PLBPPCS1WRPENDPRI: in     vl_logic_vector(0 to 1);
        PLBPPCS1WRPENDREQ: in     vl_logic;
        PLBPPCS1WRPRIM  : in     vl_logic;
        RSTC440RESETCHIP: in     vl_logic;
        RSTC440RESETCORE: in     vl_logic;
        RSTC440RESETSYSTEM: in     vl_logic;
        TIEC440DCURDLDCACHEPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440DCURDNONCACHEPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440DCURDTOUCHPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440DCURDURGENTPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440DCUWRFLUSHPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440DCUWRSTOREPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440DCUWRURGENTPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440ENDIANRESET: in     vl_logic;
        TIEC440ERPNRESET: in     vl_logic_vector(0 to 3);
        TIEC440ICURDFETCHPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440ICURDSPECPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440ICURDTOUCHPLBPRIO: in     vl_logic_vector(0 to 1);
        TIEC440PIR      : in     vl_logic_vector(28 to 31);
        TIEC440PVR      : in     vl_logic_vector(28 to 31);
        TIEC440USERRESET: in     vl_logic_vector(0 to 3);
        TIEDCRBASEADDR  : in     vl_logic_vector(0 to 1);
        TRCC440TRACEDISABLE: in     vl_logic;
        TRCC440TRIGGEREVENTIN: in     vl_logic
    );
end PPC440;

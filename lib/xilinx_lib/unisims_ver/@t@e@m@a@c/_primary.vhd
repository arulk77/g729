library verilog;
use verilog.vl_types.all;
entity TEMAC is
    generic(
        EMAC0_1000BASEX_ENABLE: string  := "FALSE";
        EMAC0_ADDRFILTER_ENABLE: string  := "FALSE";
        EMAC0_BYTEPHY   : string  := "FALSE";
        EMAC0_CONFIGVEC_79: string  := "FALSE";
        EMAC0_GTLOOPBACK: string  := "FALSE";
        EMAC0_HOST_ENABLE: string  := "FALSE";
        EMAC0_LTCHECK_DISABLE: string  := "FALSE";
        EMAC0_MDIO_ENABLE: string  := "FALSE";
        EMAC0_PHYINITAUTONEG_ENABLE: string  := "FALSE";
        EMAC0_PHYISOLATE: string  := "FALSE";
        EMAC0_PHYLOOPBACKMSB: string  := "FALSE";
        EMAC0_PHYPOWERDOWN: string  := "FALSE";
        EMAC0_PHYRESET  : string  := "FALSE";
        EMAC0_RGMII_ENABLE: string  := "FALSE";
        EMAC0_RX16BITCLIENT_ENABLE: string  := "FALSE";
        EMAC0_RXFLOWCTRL_ENABLE: string  := "FALSE";
        EMAC0_RXHALFDUPLEX: string  := "FALSE";
        EMAC0_RXINBANDFCS_ENABLE: string  := "FALSE";
        EMAC0_RXJUMBOFRAME_ENABLE: string  := "FALSE";
        EMAC0_RXRESET   : string  := "FALSE";
        EMAC0_RXVLAN_ENABLE: string  := "FALSE";
        EMAC0_RX_ENABLE : string  := "FALSE";
        EMAC0_SGMII_ENABLE: string  := "FALSE";
        EMAC0_SPEED_LSB : string  := "FALSE";
        EMAC0_SPEED_MSB : string  := "FALSE";
        EMAC0_TX16BITCLIENT_ENABLE: string  := "FALSE";
        EMAC0_TXFLOWCTRL_ENABLE: string  := "FALSE";
        EMAC0_TXHALFDUPLEX: string  := "FALSE";
        EMAC0_TXIFGADJUST_ENABLE: string  := "FALSE";
        EMAC0_TXINBANDFCS_ENABLE: string  := "FALSE";
        EMAC0_TXJUMBOFRAME_ENABLE: string  := "FALSE";
        EMAC0_TXRESET   : string  := "FALSE";
        EMAC0_TXVLAN_ENABLE: string  := "FALSE";
        EMAC0_TX_ENABLE : string  := "FALSE";
        EMAC0_UNIDIRECTION_ENABLE: string  := "FALSE";
        EMAC0_USECLKEN  : string  := "FALSE";
        EMAC1_1000BASEX_ENABLE: string  := "FALSE";
        EMAC1_ADDRFILTER_ENABLE: string  := "FALSE";
        EMAC1_BYTEPHY   : string  := "FALSE";
        EMAC1_CONFIGVEC_79: string  := "FALSE";
        EMAC1_GTLOOPBACK: string  := "FALSE";
        EMAC1_HOST_ENABLE: string  := "FALSE";
        EMAC1_LTCHECK_DISABLE: string  := "FALSE";
        EMAC1_MDIO_ENABLE: string  := "FALSE";
        EMAC1_PHYINITAUTONEG_ENABLE: string  := "FALSE";
        EMAC1_PHYISOLATE: string  := "FALSE";
        EMAC1_PHYLOOPBACKMSB: string  := "FALSE";
        EMAC1_PHYPOWERDOWN: string  := "FALSE";
        EMAC1_PHYRESET  : string  := "FALSE";
        EMAC1_RGMII_ENABLE: string  := "FALSE";
        EMAC1_RX16BITCLIENT_ENABLE: string  := "FALSE";
        EMAC1_RXFLOWCTRL_ENABLE: string  := "FALSE";
        EMAC1_RXHALFDUPLEX: string  := "FALSE";
        EMAC1_RXINBANDFCS_ENABLE: string  := "FALSE";
        EMAC1_RXJUMBOFRAME_ENABLE: string  := "FALSE";
        EMAC1_RXRESET   : string  := "FALSE";
        EMAC1_RXVLAN_ENABLE: string  := "FALSE";
        EMAC1_RX_ENABLE : string  := "FALSE";
        EMAC1_SGMII_ENABLE: string  := "FALSE";
        EMAC1_SPEED_LSB : string  := "FALSE";
        EMAC1_SPEED_MSB : string  := "FALSE";
        EMAC1_TX16BITCLIENT_ENABLE: string  := "FALSE";
        EMAC1_TXFLOWCTRL_ENABLE: string  := "FALSE";
        EMAC1_TXHALFDUPLEX: string  := "FALSE";
        EMAC1_TXIFGADJUST_ENABLE: string  := "FALSE";
        EMAC1_TXINBANDFCS_ENABLE: string  := "FALSE";
        EMAC1_TXJUMBOFRAME_ENABLE: string  := "FALSE";
        EMAC1_TXRESET   : string  := "FALSE";
        EMAC1_TXVLAN_ENABLE: string  := "FALSE";
        EMAC1_TX_ENABLE : string  := "FALSE";
        EMAC1_UNIDIRECTION_ENABLE: string  := "FALSE";
        EMAC1_USECLKEN  : string  := "FALSE";
        EMAC0_DCRBASEADDR: integer := 0;
        EMAC1_DCRBASEADDR: integer := 0;
        EMAC0_PAUSEADDR : integer := 0;
        EMAC0_UNICASTADDR: integer := 0;
        EMAC1_PAUSEADDR : integer := 0;
        EMAC1_UNICASTADDR: integer := 0;
        EMAC0_LINKTIMERVAL: integer := 0;
        EMAC1_LINKTIMERVAL: integer := 0
    );
    port(
        DCRHOSTDONEIR   : out    vl_logic;
        EMAC0CLIENTANINTERRUPT: out    vl_logic;
        EMAC0CLIENTRXBADFRAME: out    vl_logic;
        EMAC0CLIENTRXCLIENTCLKOUT: out    vl_logic;
        EMAC0CLIENTRXD  : out    vl_logic_vector(15 downto 0);
        EMAC0CLIENTRXDVLD: out    vl_logic;
        EMAC0CLIENTRXDVLDMSW: out    vl_logic;
        EMAC0CLIENTRXFRAMEDROP: out    vl_logic;
        EMAC0CLIENTRXGOODFRAME: out    vl_logic;
        EMAC0CLIENTRXSTATS: out    vl_logic_vector(6 downto 0);
        EMAC0CLIENTRXSTATSBYTEVLD: out    vl_logic;
        EMAC0CLIENTRXSTATSVLD: out    vl_logic;
        EMAC0CLIENTTXACK: out    vl_logic;
        EMAC0CLIENTTXCLIENTCLKOUT: out    vl_logic;
        EMAC0CLIENTTXCOLLISION: out    vl_logic;
        EMAC0CLIENTTXRETRANSMIT: out    vl_logic;
        EMAC0CLIENTTXSTATS: out    vl_logic;
        EMAC0CLIENTTXSTATSBYTEVLD: out    vl_logic;
        EMAC0CLIENTTXSTATSVLD: out    vl_logic;
        EMAC0PHYENCOMMAALIGN: out    vl_logic;
        EMAC0PHYLOOPBACKMSB: out    vl_logic;
        EMAC0PHYMCLKOUT : out    vl_logic;
        EMAC0PHYMDOUT   : out    vl_logic;
        EMAC0PHYMDTRI   : out    vl_logic;
        EMAC0PHYMGTRXRESET: out    vl_logic;
        EMAC0PHYMGTTXRESET: out    vl_logic;
        EMAC0PHYPOWERDOWN: out    vl_logic;
        EMAC0PHYSYNCACQSTATUS: out    vl_logic;
        EMAC0PHYTXCHARDISPMODE: out    vl_logic;
        EMAC0PHYTXCHARDISPVAL: out    vl_logic;
        EMAC0PHYTXCHARISK: out    vl_logic;
        EMAC0PHYTXCLK   : out    vl_logic;
        EMAC0PHYTXD     : out    vl_logic_vector(7 downto 0);
        EMAC0PHYTXEN    : out    vl_logic;
        EMAC0PHYTXER    : out    vl_logic;
        EMAC0PHYTXGMIIMIICLKOUT: out    vl_logic;
        EMAC0SPEEDIS10100: out    vl_logic;
        EMAC1CLIENTANINTERRUPT: out    vl_logic;
        EMAC1CLIENTRXBADFRAME: out    vl_logic;
        EMAC1CLIENTRXCLIENTCLKOUT: out    vl_logic;
        EMAC1CLIENTRXD  : out    vl_logic_vector(15 downto 0);
        EMAC1CLIENTRXDVLD: out    vl_logic;
        EMAC1CLIENTRXDVLDMSW: out    vl_logic;
        EMAC1CLIENTRXFRAMEDROP: out    vl_logic;
        EMAC1CLIENTRXGOODFRAME: out    vl_logic;
        EMAC1CLIENTRXSTATS: out    vl_logic_vector(6 downto 0);
        EMAC1CLIENTRXSTATSBYTEVLD: out    vl_logic;
        EMAC1CLIENTRXSTATSVLD: out    vl_logic;
        EMAC1CLIENTTXACK: out    vl_logic;
        EMAC1CLIENTTXCLIENTCLKOUT: out    vl_logic;
        EMAC1CLIENTTXCOLLISION: out    vl_logic;
        EMAC1CLIENTTXRETRANSMIT: out    vl_logic;
        EMAC1CLIENTTXSTATS: out    vl_logic;
        EMAC1CLIENTTXSTATSBYTEVLD: out    vl_logic;
        EMAC1CLIENTTXSTATSVLD: out    vl_logic;
        EMAC1PHYENCOMMAALIGN: out    vl_logic;
        EMAC1PHYLOOPBACKMSB: out    vl_logic;
        EMAC1PHYMCLKOUT : out    vl_logic;
        EMAC1PHYMDOUT   : out    vl_logic;
        EMAC1PHYMDTRI   : out    vl_logic;
        EMAC1PHYMGTRXRESET: out    vl_logic;
        EMAC1PHYMGTTXRESET: out    vl_logic;
        EMAC1PHYPOWERDOWN: out    vl_logic;
        EMAC1PHYSYNCACQSTATUS: out    vl_logic;
        EMAC1PHYTXCHARDISPMODE: out    vl_logic;
        EMAC1PHYTXCHARDISPVAL: out    vl_logic;
        EMAC1PHYTXCHARISK: out    vl_logic;
        EMAC1PHYTXCLK   : out    vl_logic;
        EMAC1PHYTXD     : out    vl_logic_vector(7 downto 0);
        EMAC1PHYTXEN    : out    vl_logic;
        EMAC1PHYTXER    : out    vl_logic;
        EMAC1PHYTXGMIIMIICLKOUT: out    vl_logic;
        EMAC1SPEEDIS10100: out    vl_logic;
        EMACDCRACK      : out    vl_logic;
        EMACDCRDBUS     : out    vl_logic_vector(0 to 31);
        HOSTMIIMRDY     : out    vl_logic;
        HOSTRDDATA      : out    vl_logic_vector(31 downto 0);
        CLIENTEMAC0DCMLOCKED: in     vl_logic;
        CLIENTEMAC0PAUSEREQ: in     vl_logic;
        CLIENTEMAC0PAUSEVAL: in     vl_logic_vector(15 downto 0);
        CLIENTEMAC0RXCLIENTCLKIN: in     vl_logic;
        CLIENTEMAC0TXCLIENTCLKIN: in     vl_logic;
        CLIENTEMAC0TXD  : in     vl_logic_vector(15 downto 0);
        CLIENTEMAC0TXDVLD: in     vl_logic;
        CLIENTEMAC0TXDVLDMSW: in     vl_logic;
        CLIENTEMAC0TXFIRSTBYTE: in     vl_logic;
        CLIENTEMAC0TXIFGDELAY: in     vl_logic_vector(7 downto 0);
        CLIENTEMAC0TXUNDERRUN: in     vl_logic;
        CLIENTEMAC1DCMLOCKED: in     vl_logic;
        CLIENTEMAC1PAUSEREQ: in     vl_logic;
        CLIENTEMAC1PAUSEVAL: in     vl_logic_vector(15 downto 0);
        CLIENTEMAC1RXCLIENTCLKIN: in     vl_logic;
        CLIENTEMAC1TXCLIENTCLKIN: in     vl_logic;
        CLIENTEMAC1TXD  : in     vl_logic_vector(15 downto 0);
        CLIENTEMAC1TXDVLD: in     vl_logic;
        CLIENTEMAC1TXDVLDMSW: in     vl_logic;
        CLIENTEMAC1TXFIRSTBYTE: in     vl_logic;
        CLIENTEMAC1TXIFGDELAY: in     vl_logic_vector(7 downto 0);
        CLIENTEMAC1TXUNDERRUN: in     vl_logic;
        DCREMACABUS     : in     vl_logic_vector(0 to 9);
        DCREMACCLK      : in     vl_logic;
        DCREMACDBUS     : in     vl_logic_vector(0 to 31);
        DCREMACENABLE   : in     vl_logic;
        DCREMACREAD     : in     vl_logic;
        DCREMACWRITE    : in     vl_logic;
        HOSTADDR        : in     vl_logic_vector(9 downto 0);
        HOSTCLK         : in     vl_logic;
        HOSTEMAC1SEL    : in     vl_logic;
        HOSTMIIMSEL     : in     vl_logic;
        HOSTOPCODE      : in     vl_logic_vector(1 downto 0);
        HOSTREQ         : in     vl_logic;
        HOSTWRDATA      : in     vl_logic_vector(31 downto 0);
        PHYEMAC0COL     : in     vl_logic;
        PHYEMAC0CRS     : in     vl_logic;
        PHYEMAC0GTXCLK  : in     vl_logic;
        PHYEMAC0MCLKIN  : in     vl_logic;
        PHYEMAC0MDIN    : in     vl_logic;
        PHYEMAC0MIITXCLK: in     vl_logic;
        PHYEMAC0PHYAD   : in     vl_logic_vector(4 downto 0);
        PHYEMAC0RXBUFERR: in     vl_logic;
        PHYEMAC0RXBUFSTATUS: in     vl_logic_vector(1 downto 0);
        PHYEMAC0RXCHARISCOMMA: in     vl_logic;
        PHYEMAC0RXCHARISK: in     vl_logic;
        PHYEMAC0RXCHECKINGCRC: in     vl_logic;
        PHYEMAC0RXCLK   : in     vl_logic;
        PHYEMAC0RXCLKCORCNT: in     vl_logic_vector(2 downto 0);
        PHYEMAC0RXCOMMADET: in     vl_logic;
        PHYEMAC0RXD     : in     vl_logic_vector(7 downto 0);
        PHYEMAC0RXDISPERR: in     vl_logic;
        PHYEMAC0RXDV    : in     vl_logic;
        PHYEMAC0RXER    : in     vl_logic;
        PHYEMAC0RXLOSSOFSYNC: in     vl_logic_vector(1 downto 0);
        PHYEMAC0RXNOTINTABLE: in     vl_logic;
        PHYEMAC0RXRUNDISP: in     vl_logic;
        PHYEMAC0SIGNALDET: in     vl_logic;
        PHYEMAC0TXBUFERR: in     vl_logic;
        PHYEMAC0TXGMIIMIICLKIN: in     vl_logic;
        PHYEMAC1COL     : in     vl_logic;
        PHYEMAC1CRS     : in     vl_logic;
        PHYEMAC1GTXCLK  : in     vl_logic;
        PHYEMAC1MCLKIN  : in     vl_logic;
        PHYEMAC1MDIN    : in     vl_logic;
        PHYEMAC1MIITXCLK: in     vl_logic;
        PHYEMAC1PHYAD   : in     vl_logic_vector(4 downto 0);
        PHYEMAC1RXBUFERR: in     vl_logic;
        PHYEMAC1RXBUFSTATUS: in     vl_logic_vector(1 downto 0);
        PHYEMAC1RXCHARISCOMMA: in     vl_logic;
        PHYEMAC1RXCHARISK: in     vl_logic;
        PHYEMAC1RXCHECKINGCRC: in     vl_logic;
        PHYEMAC1RXCLK   : in     vl_logic;
        PHYEMAC1RXCLKCORCNT: in     vl_logic_vector(2 downto 0);
        PHYEMAC1RXCOMMADET: in     vl_logic;
        PHYEMAC1RXD     : in     vl_logic_vector(7 downto 0);
        PHYEMAC1RXDISPERR: in     vl_logic;
        PHYEMAC1RXDV    : in     vl_logic;
        PHYEMAC1RXER    : in     vl_logic;
        PHYEMAC1RXLOSSOFSYNC: in     vl_logic_vector(1 downto 0);
        PHYEMAC1RXNOTINTABLE: in     vl_logic;
        PHYEMAC1RXRUNDISP: in     vl_logic;
        PHYEMAC1SIGNALDET: in     vl_logic;
        PHYEMAC1TXBUFERR: in     vl_logic;
        PHYEMAC1TXGMIIMIICLKIN: in     vl_logic;
        RESET           : in     vl_logic
    );
end TEMAC;
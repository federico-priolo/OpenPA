000010**************************************************************************
000020**  All Rights Reserved, CopyRight(C) FUJITSU LIMITED 1998-2007
000030**
000040**    COBW3.CBL
000050**
000060**************************************************************************
000070 01  COBW3.
000080**************************************************************************
000090* STATUS: Error number of subroutine
000100**************************************************************************
000110     03 COBW3-STATUS                       PIC  S9(9) COMP-5.
000120*
000130**************************************************************************
000140* DBGINFO: The information data definition related to debugging
000150**************************************************************************
000160     03 COBW3-DBGINFO.
000170*-------------------------------------------------------------------------
000180* DMODE: Execution instruction in debugging mode
000190*-------------------------------------------------------------------------
000200       05 COBW3-DMODE                      PIC  X(1).
000210         88 COBW3-DMODE-NODBG              VALUE LOW-VALUE.
000220         88 COBW3-DMODE-DBG                VALUE "1".
000230       05 FILLER                           PIC  X(3).
000240     03 FILLER                             PIC  X(12).
000250
000260**************************************************************************
000270* The information data definition related to NAME/VALUE
000280**************************************************************************
000290     03 COBW3-NVINFO.
000300*-------------------------------------------------------------------------
000310* NUMBER: Appearance frequency to be retrieved
000320*-------------------------------------------------------------------------
000330       05 COBW3-NUMBER                     PIC  S9(9) COMP-5.
000340         88 COBW3-NUMBER-INIT              VALUE 1.
000350*-------------------------------------------------------------------------
000360* SEARCH-LENGTH: Character string (number of bytes) for retrieval
000370*-------------------------------------------------------------------------
000380       05 COBW3-SEARCH-LENGTH              PIC  S9(9) COMP-5.
000390*-------------------------------------------------------------------------
000400* SEARCH-DATA: Character string for retrieval
000410*-------------------------------------------------------------------------
000420       05 COBW3-SEARCH-DATA                PIC  X(1024).
000430       05 COBW3-SEARCH-DATA-N              REDEFINES COBW3-SEARCH-DATA
000440                                           PIC  N(512).
000450*-------------------------------------------------------------------------
000460* GET-DATA: Character string of VALUE of NAME
000470*-------------------------------------------------------------------------
000480       05 COBW3-GET-DATA                   PIC  X(1024).
000490       05 COBW3-GET-DATA-N                 REDEFINES COBW3-GET-DATA
000500                                           PIC  N(512).
000510*-------------------------------------------------------------------------
000520* GET-LENGTH: Length of VALUE character string (number of bytes) to NAME
000530*-------------------------------------------------------------------------
000540       05 COBW3-GET-LENGTH                 PIC  9(9) COMP-5.
000550*-------------------------------------------------------------------------
000560* SEARCH-FLAG: Retrieval result
000570*-------------------------------------------------------------------------
000580       05 COBW3-SEARCH-FLAG                PIC  X(1).
000590         88 COBW3-SEARCH-FLAG-NON          VALUE "0".
000600         88 COBW3-SEARCH-FLAG-EXIST        VALUE "1".
000610       05 FILLER                           PIC  X(3).
000620     03 FILLER                             PIC  X(12).
000630
000640**************************************************************************
000650* The information data definition related to HTML
000660**************************************************************************
000670     03 COBW3-HTMLINFO.
000680*-------------------------------------------------------------------------
000690* HTML-FILENAME: HTML document file name
000700*-------------------------------------------------------------------------
000710       05 COBW3-HTML-FILENAME              PIC  X(256).
000720       05 FILLER                           PIC  X(4).
000730*-------------------------------------------------------------------------
000740* CNV-NAME: Conversion name defined in HTML document
000750*-------------------------------------------------------------------------
000760       05 COBW3-CNV-NAME                   PIC  X(30).
000770       05 COBW3-CNV-NAME-N                 REDEFINES COBW3-CNV-NAME
000780                                           PIC  N(15).
000790       05 FILLER                           PIC  X(2).
000800*-------------------------------------------------------------------------
000810* CNV-NAME-LENGTH: Character string length of conversion name
000820*  defined in HTML document (byte length)
000830*-------------------------------------------------------------------------
000840       05 COBW3-CNV-NAME-LENGTH            PIC  S9(4) COMP-5.
000850       05 FILLER                           PIC  X(2).
000860*-------------------------------------------------------------------------
000870* CNV-VALUE-LENGTH: Character string length of conversion value
000880*-------------------------------------------------------------------------
000890       05 COBW3-CNV-VALUE-LENGTH           PIC  S9(4) COMP-5.
000900       05 FILLER                           PIC  X(2).
000910*-------------------------------------------------------------------------
000920* CNV-VALUE: Conversion character string defined in HTML document
000930*-------------------------------------------------------------------------
000940       05 COBW3-CNV-VALUE                  PIC  X(1024).
000950       05 COBW3-CNV-VALUE-N                REDEFINES COBW3-CNV-VALUE
000960                                           PIC  N(512).
000970*-------------------------------------------------------------------------
000980* CNV-MODE: Maintenance of instruction of change and additional
000990*  processing of conversion name defined in HTML document flag
001000*-------------------------------------------------------------------------
001010       05 COBW3-CNV-MODE                   PIC  X(1).
001020         88 COBW3-CNV-MODE-ADDREP    VALUE LOW-VALUE.
001030         88 COBW3-CNV-MODE-REPLACE   VALUE       "1".
001040         88 COBW3-CNV-MODE-ADD       VALUE       "2".
001050*-------------------------------------------------------------------------
001060* SANITIZE-CNV: Auto Sanitizing flag
001070*-------------------------------------------------------------------------
001080       05 COBW3-SANITIZE-CNV             PIC  X(1).
001090         88 COBW3-SANITIZE-CNV-OFF       VALUE LOW-VALUE.
001100         88 COBW3-SANITIZE-CNV-ON        VALUE "1".
001110*-------------------------------------------------------------------------
001120* SANITIZED-FLAG: Sanitize result
001130*-------------------------------------------------------------------------
001140       05 COBW3-SANITIZED-CNV-FLAG         PIC  X(1).
001150         88 COBW3-SANITIZED-CNV-NON            VALUE "0".
001160         88 COBW3-SANITIZED-CNV-EXIST          VALUE "1".
001170     
001180*-------------------------------------------------------------------------
001190       05 FILLER                           PIC  X(1).
001200     03 FILLER                             PIC  X(12).
001210
001220**************************************************************************
001230* The information data definition related to PUT_HEAD
001240**************************************************************************
001250     03 COBW3-HEADINFO.
001260*-------------------------------------------------------------------------
001270* PUT-HEAD-LENGTH: The Header-data length of the data output to Browser
001280*-------------------------------------------------------------------------
001290       05 COBW3-PUT-HEAD-LENGTH            PIC  S9(9) COMP-5.
001300*-------------------------------------------------------------------------
001310* PUT-HEAD: The Header-data output to Browser(option header)
001320*-------------------------------------------------------------------------
001330       05 COBW3-PUT-HEAD                   PIC  X(512).
001340*-------------------------------------------------------------------------
001350* CONTENT-TYPE: The Conten-Type Header output to Browser
001360*-------------------------------------------------------------------------
001370       05 COBW3-CONTENT-TYPE               PIC  X(32).
001380         88 COBW3-CONTENT-TYPE-HTML        VALUE "text/html".
001390         88 COBW3-CONTENT-TYPE-TEXT        VALUE "text/plain".
001400         88 COBW3-CONTENT-TYPE-NON         VALUE HIGH-VALUE.
001410*-------------------------------------------------------------------------
001420* STATUS-CODE: The Status-code Header output to Browser
001430*-------------------------------------------------------------------------
001440       05 COBW3-STATUS-CODE                PIC  X(3).
001450         88 COBW3-STATUS-CODE-200          VALUE "200".
001460         88 COBW3-STATUS-CODE-NON          VALUE HIGH-VALUE.
001470       05 FILLER                           PIC  X(1).
001480       05 FILLER                           PIC  X(4).
001490     03 FILLER                             PIC  X(12).
001500
001510**************************************************************************
001520* The information data definition related to PUT_TEXT
001530**************************************************************************
001540     03 COBW3-TEXTINFO.
001550*-------------------------------------------------------------------------
001560* PUT-STRING-LENGTH: The data length of the data output to Browser
001570*-------------------------------------------------------------------------
001580       05 COBW3-PUT-STRING-LENGTH          PIC  S9(9) COMP-5.
001590*-------------------------------------------------------------------------
001600* PUT-STRING: The data output to Browser
001610*-------------------------------------------------------------------------
001620       05 COBW3-PUT-STRING                 PIC  X(1024).
001630     03 FILLER                             PIC  X(12).
001640
001650**************************************************************************
001660* The information data definition related to AUTHORIZE
001670**************************************************************************
001680     03 COBW3-AUTHORIZEINFO.
001690*-------------------------------------------------------------------------
001700* USER-ID: User ID information on client
001710*-------------------------------------------------------------------------
001720       05 COBW3-USERID-LENGTH              PIC  9(9)  COMP-5.
001730       05 COBW3-USERID                     PIC  X(90).
001740       05 FILLER                           PIC  X(2).
001750       05 COBW3-PASSWORD-LENGTH            PIC  9(9)  COMP-5.
001760       05 COBW3-PASSWORD                   PIC  X(90).
001770       05 FILLER                           PIC  X(2).
001780*-------------------------------------------------------------------------
001790* IP-ADDRESS: Internet Protocol address information on client
001800*-------------------------------------------------------------------------
001810       05 COBW3-IP-ADDRESS-LENGTH          PIC  9(9)  COMP-5.
001820       05 COBW3-IP-ADDRESS                 PIC  X(64).
001830*-------------------------------------------------------------------------
001840* AUTH-TYPE: Authentication type information
001850*-------------------------------------------------------------------------
001860       05 COBW3-AUTH-TYPE-LENGTH           PIC  9(9)  COMP-5.
001870       05 COBW3-AUTH-TYPE                  PIC  X(36).
001880
001890**************************************************************************
001900* The information data definition related to SYSTEM
001910**************************************************************************
001920     03 COBW3-SYSTEMINFO.
001930*-------------------------------------------------------------------------
001940* SYSTEM-COMMAND: System command and parameter character string
001950*-------------------------------------------------------------------------
001960       05 COBW3-SYSTEM-COMMAND             PIC  X(512).
001970     03 FILLER                             PIC  X(12).
001980
001990**************************************************************************
002000* EXTENSIONINFO: The information data definition related to extension
002010**************************************************************************
002020     03 COBW3-EXTENSIONINFO.
002030*-------------------------------------------------------------------------
002040* Web subroutine context data pointer
002050*-------------------------------------------------------------------------
002060       05 COBW3-CONTEXT                    POINTER.
002070       05 FILLER                           PIC  X(24).
002080
002090**************************************************************************
002100* SESSIONINFO: The information data definition related to session
002110**************************************************************************
002120     03 COBW3-SESSIONINFO.
002130       05 COBW3-SESSION-DATA-TYPE              PIC  X(1).
002140         88 COBW3-SESSION-DATA-GROUPITEM  VALUE "0".
002150         88 COBW3-SESSION-DATA-OBJECT     VALUE "1".
002160       05 FILLER                               PIC  X(3).
002170*
002180       05 COBW3-SESSION-DATA-SIZE              PIC  9(9) COMP-5.
002190       05 COBW3-SESSION-TIMEOUT                PIC  9(9) COMP-5.
002200       05 COBW3-SESSION-ID                     PIC  X(48).
002210*
002220       05 COBW3-SESSION-STATUS                 PIC  X(1).
002230         88 COBW3-SESSION-STATUS-NON           VALUE "0".
002240         88 COBW3-SESSION-STATUS-STARTED       VALUE "1".
002250       05 FILLER                               PIC  X(3).
002260       05 FILLER                           PIC  X(96).
002270
002280**************************************************************************
002290* WORKINFO: The information data definition related to subroutine
002300*  work area
002310**************************************************************************
002320     03 COBW3-WORKINFO                     PIC  X(600).
002330
002340**************************************************************************
002350* The information data definition related to HEADER
002360**************************************************************************
002370     03 COBW3-HEADERINFO.
002380*-------------------------------------------------------------------------
002390* HEADER-NAME-LENGTH: The data length of the Header name
002400*-------------------------------------------------------------------------
002410       05 COBW3-HEADER-NAME-LENGTH         PIC  S9(9) COMP-5.
002420*-------------------------------------------------------------------------
002430* HEADER-NAME: The data of Header name
002440*-------------------------------------------------------------------------
002450       05 COBW3-HEADER-NAME                PIC  X(64).
002460*-------------------------------------------------------------------------
002470* HEADER-VALUE-LENGTH: The data length of the Header value
002480*-------------------------------------------------------------------------
002490       05 COBW3-HEADER-VALUE-LENGTH        PIC  S9(9) COMP-5.
002500*-------------------------------------------------------------------------
002510* HEADER-VALUE: The data of Header value
002520*-------------------------------------------------------------------------
002530       05 COBW3-HEADER-VALUE               PIC  X(512).
002540     03 FILLER                             PIC  X(12).
002550
002560**************************************************************************
002570* The information data definition related to Request
002580**************************************************************************
002590     03 COBW3-REQUESTINFO.
002600*-------------------------------------------------------------------------
002610* REQUEST-INFO-TYPE: The type of request
002620*-------------------------------------------------------------------------
002630       05 COBW3-REQUEST-INFO-TYPE    PIC  X(1).
002640         88 COBW3-URI                VALUE LOW-VALUE.
002650         88 COBW3-URL                VALUE "1".
002660         88 COBW3-SERVER-TYPE        VALUE "2".
002670         88 COBW3-LISTENERTYPE       VALUE "2".
002680         88 COBW3-VIRTUALPATH        VALUE "3".
002690         88 COBW3-PHYSICALPATH       VALUE "4".
002700         88 COBW3-QUERYSTRING        VALUE "5".
002710         88 COBW3-LANGUAGE           VALUE "6".
002720         88 COBW3-ENCODING           VALUE "7".
002730         88 COBW3-REQMIMETYPE        VALUE "8".
002740         88 COBW3-REQUEST-METHOD     VALUE "9".
002750         88 COBW3-PATH-INFO          VALUE "A".
002760         88 COBW3-PATH-TRANSLATED    VALUE "B".
002770         88 COBW3-REMOTE-ADDR        VALUE "C".
002780         88 COBW3-REMOTE-HOST        VALUE "D".
002790         88 COBW3-GATEWAY-INTERFACE  VALUE "E".
002800         88 COBW3-SERVER-NAME        VALUE "F".
002810         88 COBW3-SERVER-PORT        VALUE "G".
002820         88 COBW3-SERVER-PROTOCOL    VALUE "H".
002830         88 COBW3-SERVER-PORT-SECURE VALUE "I".
002840       05 FILLER                     PIC  X(3).
002850*-------------------------------------------------------------------------
002860* REQUEST-INFO-LENGTH: The data length of the Request infomation
002870*-------------------------------------------------------------------------
002880       05 COBW3-REQUEST-INFO-LENGTH  PIC  S9(9) COMP-5.
002890*-------------------------------------------------------------------------
002900* REQUEST-INFO: The data of Request information
002910*-------------------------------------------------------------------------
002920       05 COBW3-REQUEST-INFO               PIC  X(1024).
002930     03 FILLER                             PIC  X(12).
002940*-------------------------------------------------------------------------
002950* COOKIE-INFO : Information of request and response cookie data.
002960*-------------------------------------------------------------------------
002970     03 COBW3-COOKIE-INFO.
002980       05 COBW3-COOKIE-NAME                PIC  X(64).
002990       05 COBW3-COOKIE-NAME-N              REDEFINES COBW3-COOKIE-NAME
003000                                           PIC  N(32).
003010       05 COBW3-COOKIE-NAME-LENGTH         PIC  S9(9) COMP-5.
003020       05 COBW3-COOKIE-VALUE               PIC  X(1024).
003030       05 COBW3-COOKIE-VALUE-N             REDEFINES COBW3-COOKIE-VALUE
003040                                           PIC  N(512).
003050       05 COBW3-COOKIE-VALUE-LENGTH        PIC  S9(9) COMP-5.
003060       05 COBW3-COOKIE-EXPIRES.
003070          07 COBW3-COOKIE-EXPIRES-YMD.
003080             09 COBW3-COOKIE-EXPIRES-YEAR  PIC  X(04).
003090             09 COBW3-COOKIE-EXPIRES-MONTH PIC  X(02).
003100             09 COBW3-COOKIE-EXPIRES-DAY   PIC  X(02).
003110          07 COBW3-COOKIE-EXPIRES-HMS.
003120             09 COBW3-COOKIE-EXPIRES-HOUR  PIC  X(02).
003130             09 COBW3-COOKIE-EXPIRES-MIN   PIC  X(02).
003140             09 COBW3-COOKIE-EXPIRES-SEC   PIC  X(02).
003150       05 FILLER                           PIC  X(02).
003160       05 COBW3-COOKIE-DOMAIN              PIC  X(256).
003170       05 COBW3-COOKIE-PATH                PIC  X(512).
003180       05 COBW3-COOKIE-SECURE              PIC  X(1).
003190          88 COBW3-COOKIE-SECURE-OFF       VALUE LOW-VALUE.
003200          88 COBW3-COOKIE-SECURE-ON        VALUE "1".
003210       05 COBW3-COOKIE-MODE                PIC  X(1).
003220          88 COBW3-COOKIE-MODE-ADDREP      VALUE LOW-VALUE.
003230          88 COBW3-COOKIE-MODE-REPLACE     VALUE "1".
003240          88 COBW3-COOKIE-MODE-ADD         VALUE "2".
003250       05 COBW3-COOKIE-INIT-MODE           PIC  X(1).
003260          88 COBW3-COOKIE-INIT-MODE-NORMAL VALUE LOW-VALUE.
003270          88 COBW3-COOKIE-INIT-MODE-REQUEST
003280                                           VALUE "1".
003290       05 FILLER                           PIC  X(1).
003300*-------------------------------------------------------------------------
003310* UPLOAD-INFO : Information of file upload.
003320*-------------------------------------------------------------------------
003330     03 COBW3-UPLOAD-INFO.
003340       05 COBW3-UPLD-CL-FILE-PATH          PIC  X(128).
003350       05 COBW3-UPLD-CL-FILE-PATH-LENGTH   PIC  S9(4) COMP-5.
003360       05 FILLER                           PIC  X(02).
003370       05 COBW3-UPLD-CL-FILE-NAME          PIC  X(128).
003380       05 COBW3-UPLD-CL-FILE-NAME-LENGTH   PIC  S9(4) COMP-5.
003390       05 FILLER                           PIC  X(02).
003400       05 COBW3-UPLD-CONTENT-TYPE          PIC  X(64).
003410       05 COBW3-UPLD-CONTENT-TYPE-LENGTH   PIC  S9(4) COMP-5.
003420       05 FILLER                           PIC  X(02).
003430       05 COBW3-UPLD-FILE-SIZE             PIC  S9(18) COMP-5.
003440       05 COBW3-UPLOADED-FILENAME          PIC  X(256).
003450

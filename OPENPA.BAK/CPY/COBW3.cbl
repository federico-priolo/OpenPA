000010**************************************************************************
000020**  All Rights Reserved, CopyRight(C) FUJITSU LIMITED 1998-1999
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
000430*-------------------------------------------------------------------------
000440* GET-DATA: Character string of VALUE of NAME
000450*-------------------------------------------------------------------------
000460       05 COBW3-GET-DATA                   PIC  X(1024).
000470*-------------------------------------------------------------------------
000480* GET-LENGTH: Length of VALUE character string (number of bytes) to NAME
000490*-------------------------------------------------------------------------
000500       05 COBW3-GET-LENGTH                 PIC  9(9) COMP-5.
000510*-------------------------------------------------------------------------
000520* SEARCH-FLAG: Retrieval result
000530*-------------------------------------------------------------------------
000540       05 COBW3-SEARCH-FLAG                PIC  X(1).
000550         88 COBW3-SEARCH-FLAG-NON          VALUE "0".
000560         88 COBW3-SEARCH-FLAG-EXIST        VALUE "1".
000570       05 FILLER                           PIC  X(3).
000580     03 FILLER                             PIC  X(12).
000590
000600**************************************************************************
000610* The information data definition related to HTML
000620**************************************************************************
000630     03 COBW3-HTMLINFO.
000640*-------------------------------------------------------------------------
000650* HTML-FILENAME: HTML document file name
000660*-------------------------------------------------------------------------
000670       05 COBW3-HTML-FILENAME              PIC  X(256).
000680       05 FILLER                           PIC  X(4).
000690*-------------------------------------------------------------------------
000700* CNV-NAME: Conversion name defined in HTML document
000710*-------------------------------------------------------------------------
000720       05 COBW3-CNV-NAME                   PIC  X(30).
000730       05 FILLER                           PIC  X(2).
000740*-------------------------------------------------------------------------
000750* CNV-NAME-LENGTH: Character string length of conversion name
000760*  defined in HTML document (byte length)
000770*-------------------------------------------------------------------------
000780       05 COBW3-CNV-NAME-LENGTH            PIC  S9(4) COMP-5.
000790       05 FILLER                           PIC  X(2).
000800*-------------------------------------------------------------------------
000810* CNV-VALUE-LENGTH: Character string length of conversion value
000820*-------------------------------------------------------------------------
000830       05 COBW3-CNV-VALUE-LENGTH           PIC  S9(4) COMP-5.
000840       05 FILLER                           PIC  X(2).
000850*-------------------------------------------------------------------------
000860* CNV-VALUE: Conversion character string defined in HTML document
000870*-------------------------------------------------------------------------
000880       05 COBW3-CNV-VALUE                  PIC  X(1024).
000890*-------------------------------------------------------------------------
000900* CNV-MODE: Maintenance of instruction of change and additional
000910*  processing of conversion name defined in HTML document flag
000920*-------------------------------------------------------------------------
000930       05 COBW3-CNV-MODE                   PIC  X(1).
000940         88 COBW3-CNV-MODE-ADDREP    VALUE LOW-VALUE.
000950         88 COBW3-CNV-MODE-REPLACE   VALUE       "1".
000960         88 COBW3-CNV-MODE-ADD       VALUE       "2".
000970*-------------------------------------------------------------------------
000980*-------------------------------------------------------------------------
000990       05 FILLER                           PIC  X(3).
001000     03 FILLER                             PIC  X(12).
001010
001020**************************************************************************
001030* The information data definition related to PUT_HEAD
001040**************************************************************************
001050     03 COBW3-HEADINFO.
001060*-------------------------------------------------------------------------
001070* PUT-HEAD-LENGTH: The Header-data length of the data output to Browser
001080*-------------------------------------------------------------------------
001090       05 COBW3-PUT-HEAD-LENGTH            PIC  S9(9) COMP-5.
001100*-------------------------------------------------------------------------
001110* PUT-HEAD: The Header-data output to Browser(option header)
001120*-------------------------------------------------------------------------
001130       05 COBW3-PUT-HEAD                   PIC  X(512).
001140*-------------------------------------------------------------------------
001150* CONTENT-TYPE: The Conten-Type Header output to Browser
001160*-------------------------------------------------------------------------
001170       05 COBW3-CONTENT-TYPE               PIC  X(32).
001180         88 COBW3-CONTENT-TYPE-HTML        VALUE "text/html".
001190         88 COBW3-CONTENT-TYPE-TEXT        VALUE "text/plain".
001200         88 COBW3-CONTENT-TYPE-NON         VALUE HIGH-VALUE.
001210*-------------------------------------------------------------------------
001220* STATUS-CODE: The Status-code Header output to Browser
001230*-------------------------------------------------------------------------
001240       05 COBW3-STATUS-CODE                PIC  X(3).
001250         88 COBW3-STATUS-CODE-200          VALUE "200".
001260         88 COBW3-STATUS-CODE-NON          VALUE HIGH-VALUE.
001270       05 FILLER                           PIC  X(1).
001280       05 FILLER                           PIC  X(4).
001290     03 FILLER                             PIC  X(12).
001300
001310**************************************************************************
001320* The information data definition related to PUT_TEXT
001330**************************************************************************
001340     03 COBW3-TEXTINFO.
001350*-------------------------------------------------------------------------
001360* PUT-STRING-LENGTH: The data length of the data output to Browser
001370*-------------------------------------------------------------------------
001380       05 COBW3-PUT-STRING-LENGTH          PIC  S9(9) COMP-5.
001390*-------------------------------------------------------------------------
001400* PUT-STRING: The data output to Browser
001410*-------------------------------------------------------------------------
001420       05 COBW3-PUT-STRING                 PIC  X(1024).
001430     03 FILLER                             PIC  X(12).
001440
001450**************************************************************************
001460* The information data definition related to AUTHORIZE
001470**************************************************************************
001480     03 COBW3-AUTHORIZEINFO.
001490*-------------------------------------------------------------------------
001500* USER-ID: User ID information on client
001510*-------------------------------------------------------------------------
001520       05 COBW3-USERID-LENGTH              PIC  9(9)  COMP-5.
001530       05 COBW3-USERID                     PIC  X(90).
001540       05 FILLER                           PIC  X(2).
001550       05 COBW3-PASSWORD-LENGTH            PIC  9(9)  COMP-5.
001560       05 COBW3-PASSWORD                   PIC  X(90).
001570       05 FILLER                           PIC  X(2).
001580*-------------------------------------------------------------------------
001590* IP-ADDRESS: Internet Protocol address information on client
001600*-------------------------------------------------------------------------
001610       05 COBW3-IP-ADDRESS-LENGTH          PIC  9(9)  COMP-5.
001620       05 COBW3-IP-ADDRESS                 PIC  X(90).
001630       05 FILLER                           PIC  X(2).
001640     03 FILLER                             PIC  X(12).
001650
001660**************************************************************************
001670* The information data definition related to SYSTEM
001680**************************************************************************
001690     03 COBW3-SYSTEMINFO.
001700*-------------------------------------------------------------------------
001710* SYSTEM-COMMAND: System command and parameter character string
001720*-------------------------------------------------------------------------
001730       05 COBW3-SYSTEM-COMMAND             PIC  X(512).
001740     03 FILLER                             PIC  X(12).
001750
001760**************************************************************************
001770* EXTENSIONINFO: The information data definition related to extension
001780**************************************************************************
001790     03 COBW3-EXTENSIONINFO.
001800*-------------------------------------------------------------------------
001810* Web subroutine context data pointer
001820*-------------------------------------------------------------------------
001830       05 COBW3-CONTEXT                    POINTER.
001840       05 FILLER                           PIC  X(12).
001850
001860**************************************************************************
001870* The information data definition related to AUTHORIZE TYPE
001880**************************************************************************
001890     03 COBW3-AUTHORIZE-TYPE-INFO.
001900*-------------------------------------------------------------------------
001910* AUTH-TYPE: Authorize type
001920*-------------------------------------------------------------------------
001930       05 COBW3-AUTH-TYPE-LENGTH           PIC  9(9)  COMP-5.
001940       05 COBW3-AUTH-TYPE                  PIC  X(36).
001950       05 FILLER                           PIC  X(132).
001960
001970**************************************************************************
001980* The information data definition related to subroutine
001990*  work area
002000**************************************************************************
002010     03 FILLER                     PIC  X(600).
002020
002030**************************************************************************
002040* The information data definition related to HEADER
002050**************************************************************************
002060     03 COBW3-HEADERINFO.
002070*-------------------------------------------------------------------------
002080* HEADER-NAME-LENGTH: The data length of the Header name
002090*-------------------------------------------------------------------------
002100       05 COBW3-HEADER-NAME-LENGTH         PIC  S9(9) COMP-5.
002110*-------------------------------------------------------------------------
002120* HEADER-NAME: The data of Header name
002130*-------------------------------------------------------------------------
002140       05 COBW3-HEADER-NAME                PIC  X(64).
002150*-------------------------------------------------------------------------
002160* HEADER-VALUE-LENGTH: The data length of the Header value
002170*-------------------------------------------------------------------------
002180       05 COBW3-HEADER-VALUE-LENGTH        PIC  S9(9) COMP-5.
002190*-------------------------------------------------------------------------
002200* HEADER-VALUE: The data of Header value
002210*-------------------------------------------------------------------------
002220       05 COBW3-HEADER-VALUE               PIC  X(512).
002230     03 FILLER                             PIC  X(12).
002240
002250**************************************************************************
002260* The information data definition related to Request
002270**************************************************************************
002280     03 COBW3-REQUESTINFO.
002290*-------------------------------------------------------------------------
002300* REQUEST-INFO-TYPE: The type of request
002310*-------------------------------------------------------------------------
002320       05 COBW3-REQUEST-INFO-TYPE    PIC  X(1).
002330         88 COBW3-URI                VALUE LOW-VALUE.
002340         88 COBW3-URL                VALUE "1".
002350         88 COBW3-SERVER-TYPE        VALUE "2".
002360         88 COBW3-LISTENERTYPE       VALUE "2".
002370         88 COBW3-VIRTUALPATH        VALUE "3".
002380         88 COBW3-PHYSICALPATH       VALUE "4".
002390         88 COBW3-QUERYSTRING        VALUE "5".
002400         88 COBW3-LANGUAGE           VALUE "6".
002410         88 COBW3-ENCODING           VALUE "7".
002420         88 COBW3-REQMIMETYPE        VALUE "8".
002430         88 COBW3-REQUEST-METHOD     VALUE "9".
002440         88 COBW3-PATH-INFO          VALUE "A".
002450         88 COBW3-PATH-TRANSLATED    VALUE "B".
002460         88 COBW3-REMOTE-ADDR        VALUE "C".
002470         88 COBW3-REMOTE-HOST        VALUE "D".
002480         88 COBW3-GATEWAY-INTERFACE  VALUE "E".
002490         88 COBW3-SERVER-NAME        VALUE "F".
002500         88 COBW3-SERVER-PORT        VALUE "G".
002510         88 COBW3-SERVER-PROTOCOL    VALUE "H".
002520         88 COBW3-SERVER-PORT-SECURE VALUE "I".
002530       05 FILLER                     PIC  X(3).
002540*-------------------------------------------------------------------------
002550* REQUEST-INFO-LENGTH: The data length of the Request infomation
002560*-------------------------------------------------------------------------
002570       05 COBW3-REQUEST-INFO-LENGTH  PIC  S9(9) COMP-5.
002580*-------------------------------------------------------------------------
002590* REQUEST-INFO: The data of Request information
002600*-------------------------------------------------------------------------
002610       05 COBW3-REQUEST-INFO               PIC  X(1024).
002620     03 FILLER                             PIC  X(12).
002630*-------------------------------------------------------------------------
002640* COOKIE-INFO : Information of request and response cookie data.
002650*-------------------------------------------------------------------------
002660     03 COBW3-COOKIE-INFO.
002670       05 COBW3-COOKIE-NAME                PIC  X(64).
002680       05 COBW3-COOKIE-NAME-LENGTH         PIC  S9(9) COMP-5.
002690       05 COBW3-COOKIE-VALUE               PIC  X(1024).
002700       05 COBW3-COOKIE-VALUE-LENGTH        PIC  S9(9) COMP-5.
002710       05 COBW3-COOKIE-EXPIRES.
002720          07 COBW3-COOKIE-EXPIRES-YMD.
002730             09 COBW3-COOKIE-EXPIRES-YEAR  PIC  X(04).
002740             09 COBW3-COOKIE-EXPIRES-MONTH PIC  X(02).
002750             09 COBW3-COOKIE-EXPIRES-DAY   PIC  X(02).
002760          07 COBW3-COOKIE-EXPIRES-HMS.
002770             09 COBW3-COOKIE-EXPIRES-HOUR  PIC  X(02).
002780             09 COBW3-COOKIE-EXPIRES-MIN   PIC  X(02).
002790             09 COBW3-COOKIE-EXPIRES-SEC   PIC  X(02).
002800       05 FILLER                           PIC  X(02).
002810       05 COBW3-COOKIE-DOMAIN              PIC  X(256).
002820       05 COBW3-COOKIE-PATH                PIC  X(512).
002830       05 COBW3-COOKIE-SECURE              PIC  X(1).
002840          88 COBW3-COOKIE-SECURE-OFF       VALUE LOW-VALUE.
002850          88 COBW3-COOKIE-SECURE-ON        VALUE "1".
002860       05 COBW3-COOKIE-MODE                PIC  X(1).
002870          88 COBW3-COOKIE-MODE-ADDREP      VALUE LOW-VALUE.
002880          88 COBW3-COOKIE-MODE-REPLACE     VALUE "1".
002890          88 COBW3-COOKIE-MODE-ADD         VALUE "2".
002900       05 COBW3-COOKIE-INIT-MODE           PIC  X(1).
002910          88 COBW3-COOKIE-INIT-MODE-NORMAL VALUE LOW-VALUE.
002920          88 COBW3-COOKIE-INIT-MODE-REQUEST
002930                                           VALUE "1".
002940       05 FILLER                           PIC  X(1).

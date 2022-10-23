000010*
000020* Copyright (C) 2010-2021 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000030*
000040* This program is free software; you can redistribute it and/or modify
000050* it under the terms of the GNU General Public License as published by
000060* the Free Software Foundation; either version 2, or (at your option)
000070* any later version.
000080*
000090* This program is distributed in the hope that it will be useful,
000100* but WITHOUT ANY WARRANTY; without even the implied warranty of
000110* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000120* GNU General Public License for more details.
000130*
000140* You should have received a copy of the GNU General Public License
000150* along with this software; see the file COPYING.  If not, write to
000160* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000170* Boston, MA 02110-1301 USA
000180*
000190
000200* FILE DESCRIPTION PER IL FILE TABELLE
000210*
000220  FD ARKTAB LABEL RECORD IS STANDARD GLOBAL
000230          RECORD CONTAINS 4096 CHARACTERS.
000240
000250  01 TABELLA.
000260
000270          02 CHIAVE-TAB.
000280           03 ENTE-TAB            PIC 99.
000290           03 TIPO-TAB            PIC XX.
000300           03 ELEMENTO-TAB.
000310             05 PROG-TAB          PIC 9(6).
000320             05 FILLER REDEFINES PROG-TAB.
000330               07 TIPO-PROG-TAB   PIC 999.
000340               07 SOTTOTIPO-TAB   PIC 999.
000350             05 FILLER REDEFINES PROG-TAB.
000360               07 AA-TAB          PIC 99.
000370               07 PERIODO-TAB.
000380                17 MM-TAB         PIC 99.
000390                17 GG-TAB         PIC 99.
000400
000410             05 FILLER REDEFINES PROG-TAB.
000420               07 CONTRATTO-TAB   PIC 9999.
000430               07 GIORNI-TAB      PIC 99.
000440*
000450* il sotto riportato campo permette di inibire la cancellazione
000460* dei records di tabella 'riservati' sulle transazioni di
000470* gestione
000480*
000490          02 FLAG-DEL-TAB PIC X.
000500             88 TABELLA-NON-CANCELLABILE VALUE "S".
000510
000520          02 DATI-TAB.
000530            03 DESC-TAB          PIC X(35).
000540            03 DATI-TABELLA-TAB  PIC X(2989).
000550
000560            03 DESCRIZIONI-TAB.
000570             09 DESCR-TAB        PIC X(40) OCCURS 20 TIMES.
000580            03 MAX-DESC-TAB      PIC 9(5).
000590
000600
000610
000620*
000630* TABELLA DATI ENTE (01)
000640*
000650          02 TABELLA-001 REDEFINES DATI-TAB.
000660           03 DESC-001            PIC X(35).
000670           03 VIA-001             PIC X(40).
000680           03 CAP-001             PIC X(5).
000690           03 CITTA-001           PIC X(40).
000700           03 PROV-001            PIC XX.
000710           03 PI-001              PIC X(11).
000720           03 CF-001              PIC X(16).
000730           03 TEL-001             PIC X(17).
000740           03 FIRMA-001           PIC X(40).
000750           03 TIPO-ENTE-001       PIC X.
000760           03 SUFF-001            PIC X(10).
000770           03 WEB-001             PIC X(40).
000780           03 FILLER              PIC XXX.
000790           03 EMAIL-001           PIC X(40).
000800           03 DESC-ENTE-001       PIC X(80).
000810           03 PASSWORD-EMAIL-001  PIC X(40).
000820
000830*
000840* area definizione progressivi matricole                  (02)
000850*
000860          02 TABELLA-002 REDEFINES DATI-TAB.
000870           03  FILLER             PIC 9(7).
000880           03  FILLER             PIC X.
000890           03  FILLER             PIC 9(7).
000900           03  FILLER             PIC X.
000910           03  ULT-MATR-002       PIC 9(7).
000920           03  FILLER             PIC X.
000930           03  FILLER             PIC 9(7).
000940           03  FILLER             PIC X.
000950           03  FILLER             PIC 9(7).
000960           03  FILLER             PIC X.
000970           03  FILLER             PIC 9(7).
000980           03  FILLER             PIC X.
000990           03  AUT-002            PIC X.
001000           03  FILLER             PIC X.
001010           03  EURO-002           PIC 9(4)V99.
001020
001160*
001170* area gruppi abilitazioni 03)
001180*
001190
001200          02 TABELLA-003 REDEFINES DATI-TAB.
001210            03 DESC-ABI-003       PIC X(35).
001030
001040*
001050* area definizione tabelle qualifica                      (07)
001060*
001070
001080          02 TABELLA-007 REDEFINES DATI-TAB.
001090            03 DESC-QUAL-007      PIC X(35).
001100            03 FILLER1            PIC X.
001110            03 TIPO-QUAL-007      PIC X.
001120            03 FILLER             PIC X.
001130            03 FILLER             PIC 99.
001140            03 CONTO-007          PIC X(6).
001150
001160*
001170* area definizione uffici                                 (08)
001180*
001190
001200          02 TABELLA-008 REDEFINES DATI-TAB.
001210            03 DESC-UFF-008       PIC X(35).
001220
001230*
001240
001250*
001260* area definizione monte ferie maturate                   (09)
001270*
001280
001290          02 TABELLA-009 REDEFINES DATI-TAB.
001300            03 DESC-009           PIC X(35).
001310            03 GIORNI-009         PIC 999.
001320            03 ORE-009            PIC 999.
001330
001340
001350          02 TABELLA-010 REDEFINES DATI-TAB.
001360            03 DESC-COSTO-010     PIC X(35).
001370            03 PROFILO-010        PIC 9(6).
001380
001390*
001400* area definizione contratti                              (11)
001410*
001420
001430          02 TABELLA-011 REDEFINES DATI-TAB.
001440            03 DESC-CONT-011      PIC X(35).
001450            03 TIPO-FERIE-011     PIC X.
001460            03 TEMPO-DET-011      PIC X.
001470
001480          02 TABELLA-012 REDEFINES DATI-TAB.
001490            03 DESC-ASL-012       PIC X(35).
001500            03 FILLER             PIC X.
001510            03 VIA-ASL-012        PIC X(35).
001520            03 FILLER             PIC X.
001530            03 TEL-ASL-012        PIC X(35).
001540
001550*
001560* area definizione titoli di studio                       (13)
001570*
001580
001590          02 TABELLA-013 REDEFINES DATI-TAB.
001600            03 DESC-STUDIO-013    PIC X(35).
001610            03 FILLER             PIC X.
001620            03 TIPO-STUDIO-013    PIC X.
001630
001640*
001650*
001660* area definizione stato civile                           (14)
001670*
001680
001690          02 TABELLA-014 REDEFINES DATI-TAB.
001700            03 DESC-STATOCIV-014  PIC X(35).
001710            03 FILLER             PIC X(210).
001720*
001730* area definizione terminali rilevazione/controllo accessi(15)
001740*
001750
001760          02 TABELLA-015 REDEFINES DATI-TAB.
001770            03 DESC-TERM-015      PIC X(35).
001780            03 FILLER             PIC X.
001790            03 UBIC-TERM-015      PIC X(35).
001800            03 FILLER             PIC X.
001810            03 TIPO-TERM-015      PIC X.
001820            03 DISATTIVO-015      PIC 9.
001830
001840*
001850* area definizione indennita'                             (16)
001860*
001870
001880          02 TABELLA-016 REDEFINES DATI-TAB.
001890            03 DESC-IND-016       PIC X(34).
001900            03 DEBUG-016          PIC X.
001910                    03 CAR-INDENNITA-016.
001920             05 INDENNITA-016 OCCURS 35 TIMES.
001930              09 IND-016          PIC X(6).
001940            03 TAB-INDENNITA-016 REDEFINES CAR-INDENNITA-016.
001950              09 IND1-016         PIC X(6).
001960              09 IND2-016         PIC X(6).
001970              09 IND3-016         PIC X(6).
001980              09 IND4-016         PIC X(6).
001990              09 IND5-016         PIC X(6).
002000              09 IND6-016         PIC X(6).
002010              09 IND7-016         PIC X(6).
002020              09 IND8-016         PIC X(6).
002030              09 IND9-016         PIC X(6).
002040              09 IND10-016         PIC X(6).
002050              09 IND11-016         PIC X(6).
002060              09 IND12-016         PIC X(6).
002070              09 IND13-016         PIC X(6).
002080              09 IND14-016         PIC X(6).
002090              09 IND15-016         PIC X(6).
002100              09 IND16-016         PIC X(6).
002110              09 IND17-016         PIC X(6).
002120              09 IND18-016         PIC X(6).
002130              09 IND19-016         PIC X(6).
002140              09 IND20-016         PIC X(6).
002150              09 IND21-016         PIC X(6).
002160              09 IND22-016         PIC X(6).
002170              09 IND23-016         PIC X(6).
002180              09 IND24-016         PIC X(6).
002190              09 IND25-016         PIC X(6).
002200              09 IND26-016         PIC X(6).
002210              09 IND27-016         PIC X(6).
002220              09 IND28-016         PIC X(6).
002230              09 IND29-016         PIC X(6).
002240              09 IND30-016         PIC X(6).
002250              09 IND31-016         PIC X(6).
002260              09 IND32-016         PIC X(6).
002270              09 IND33-016         PIC X(6).
002280              09 IND34-016         PIC X(6).
002290              09 IND35-016         PIC X(6).
002300
002310
002320
002330
002340          02 TABELLA-030 REDEFINES DATI-TAB.
002350              03  DESC-ISTAT-PROV-030     PIC X(35).
002360              03  FILLER                  PIC X.
002370              03  PROV-ISTAT-030          PIC XX.
002380              03  FILLER                  PIC X.
002390              03  REG-ISTAT-030           PIC 99.
002400              03  FILLER                  PIC X.
002410              03  CATAST-030              PIC X(4).
002420              03  FILLER                  PIC X.
002430              03  STATO-030               PIC XXXX.
002440              03  FILLER                  PIC X.
002450              03  EUROPA-030              PIC X.
002460* area definizione pianificazione orari                   (32)
002470*
002480          02 TABELLA-032 REDEFINES DATI-TAB.
002490              03  DESC-PIAN-032           PIC X(35).
002500              03  PIANIFICAZIONE-032.
002510                05 TAB-PIAN-032 OCCURS 10 TIMES.
002520                 09 DATA-INIZIO-032.
002530                   10 MM-INIZIO-032       PIC 99.
002540                   10 GG-INIZIO-032       PIC 99.
002550                 09 DATA-FINE-032.
002560                   10 MM-FINE-032         PIC 99.
002570                   10 GG-FINE-032         PIC 99.
002580                 09 PROFILO-032           PIC 9(6).
002590              03 NEXT-PROF-032            PIC 9(6).
002600
002610
002620
002630          02 TABELLA-033 REDEFINES DATI-TAB.
002640            03 DESC-033           PIC X(35).
002650            03 FILLER             PIC X.
002660            03 TAB-REGOLE-033.
002670              04 ELEMENTO-033     PIC 999 OCCURS 20 TIMES.
002680*
002690*  01 TOLLERANZA ANTICIPATA   1^ ENTRATA
002700*  02 TOLLERANZA POSTICIPATA  1^ ENTRATA
002710*  03 TOLLERANZA ANTICIPATA   1^ USCITA
002720*  04 TOLLERANZA POSTICIPATA  1^ USCITA
002730*  05 TOLLERANZA ANTICIPATA   2^ ENTRATA
002740*  06 TOLLERANZA POSTICIPATA  2^ ENTRATA
002750*  07 TOLLERANZA ANTICIPATA   2^ USCITA
002760*  08 TOLLERANZA POSTICIPATA  2^ USCITA
002770*  09 FLESS.     ANTICIPATA   ENTRATA
002780*  10 FLESS.     POSTICIPATA  ENTRATA
002790*  11 FLESS.     ANTICIPATA   RIENTRO
002800*  12 FLESS.     ANTICIPATA   RIENTRO
002810*  13 FLESS.     ANTICIPATA   2 ENTRATA
002820*  14 FLESS.     POSTICIPATA  2 ENTRATA
002830*  15 FLESS.     ANTICIPATA   2 RIENTRO
002840*  16 FLESS.     ANTICIPATA   2 RIENTRO
002850*
002860*
002870* area definizione festivi                                (35)
002880*
002890
002900          02 TABELLA-035 REDEFINES DATI-TAB.
002910            03 DESC-FEST-035      PIC X(35).
002920            03 FILLER             PIC X.
002930            03 LAVORO-FEST-035.
002940              09 ORE-FEST-035     PIC 99.
002950              09 MIN-FEST-035     PIC 99.
002960            03 ORARIO-FEST-035 REDEFINES LAVORO-FEST-035
002970                                  PIC 9(4).
002980            03 MINUTI-FEST-035    PIC S9(9) COMP-5.
002990            03 FILLER             PIC 9.
003000            03 TIPO-035           PIC 9.
003010            03 LAVORO-DOV-035.
003020              09 ORE-DOV-035     PIC 99.
003030              09 MIN-DOV-035     PIC 99.
003040            03 ORARIO-DOV-035 REDEFINES LAVORO-DOV-035
003050                                  PIC 9(4).
003060            03 MINUTI-DOV-035     PIC S9(9) COMP-5.
003070            03 FILLER             PIC 9.
003080            03 TIPO-DOV-035       PIC 9.
003090            03 FILLER             PIC X(189).
003100*
003110* area definizione tipologia calendari                    (36)
003120*
003130          02 TABELLA-036 REDEFINES DATI-TAB.
003140            03 DESC-CALEN-036    PIC X(35).
003150            03 FILLER            PIC X(210).
003160*
003170* area definizione tipologia servizi                      (37)
003180*
003190          02 TABELLA-037 REDEFINES DATI-TAB.
003200            03 DESC-SERV-037     PIC X(35).
003210            03 FILLER            PIC X.
003220            03 AREA-037          PIC X(06).
003230*
003240* area definizione tipologia istituti                     (37)
003250*
003260          02 TABELLA-038 REDEFINES DATI-TAB.
003270            03 DESC-038          PIC X(35).
003280*
003290* area definizione categorie istituti /ditte              (39)
003300*
003310          02 TABELLA-039 REDEFINES DATI-TAB.
003320            03 DESC-CAT-039      PIC X(35).
003330            03 ICO-039           PIC S9(9) COMP-5.
003340            03 FILLER            PIC X(206).
003350* area definizione AGGIUNTIVE CARTELLINO                  (40)
003360*
003370          02 TABELLA-040 REDEFINES DATI-TAB.
003380            03 DESC-AGG-040      PIC X(35).
003390            03 TESTO-040         PIC X(210).
003400
003410*
003420* area definizione CATEGORIE CAUSALI                      (42)
003430*
003440          02 TABELLA-042 REDEFINES DATI-TAB.
003450            03 DESC-CAT-042      PIC X(35).
003460            03 IND-042           PIC X.
003470
003480* area definizione COSTANTI STAMP WEB                     (44)
003490*
003500          02 TABELLA-044 REDEFINES DATI-TAB.
003510            03 DESC-044          PIC X(35).
003520            03 TESTO-044         PIC X(80).
003530* area definizione livelli                                (48)
003540*
003550          02 TABELLA-048 REDEFINES DATI-TAB.
003560            03 DESC-LIV-048       PIC X(35).
003570            03 MINIMO-048         PIC 999999.
003580            03 VOCE-048           PIC X(6).
003590            03 NOCONTO-048        PIC X.
003600            03 DESC-CONTO-048     PIC X(40).
003610
003620* area definizione gerarchie                              (43)
003630*
003640          02 TABELLA-043 REDEFINES DATI-TAB.
003650            03 NOME-043           PIC X(35).
003660            03 USA-043            PIC X.
003670            03 MATR-043           PIC 9(7).
003680            03 FILE-043           PIC X(100).
003690            03 FIRMA-043          PIC X(035).
003700            03 DATA-043.
003710             09 AA-043            PIC 9999.
003720             09 MM-043            PIC 99.
003730             09 GG-043            PIC 99.
003740            03 FILLER-043         PIC X(54).
003750            03 DOMANDE-043        PIC 999.
003760            03 EMAIL-043          PIC X.
003770*
003780* area definizione Codici I.N.A.I.L                       (18)
003790*
003800
003810          02 TABELLA-018 REDEFINES DATI-TAB.
003820            03 DESC-INAIL-018     PIC X(35).
003830            03 IMP-OPE-018        PIC X.
003840            03 FILLER             PIC X(177).
003850            03 CODICE-INAIL-018.
003860             05 POS-INAIL-018     PIC 9(8).
003870             05 CON-INAIL-018     PIC 99.
003880            03 FILLER             PIC X(22).
003890
003900*
003910* area parametri elaborazione timbrature                  (041)
003920*
003930          02 TABELLA-041 REDEFINES DATI-TAB.
003940            03 DESC-ELAB-041              PIC X(35).
003950            03 DATA-INI-ACQ-041.
003960               09 AA-INI-ACQ-041          PIC 9999.
003970               09 MM-INI-ACQ-041          PIC 99.
003980               09 GG-INI-ACQ-041          PIC 99.
003990            03 DATA-FIN-ACQ-041.
004000               09 AA-FIN-ACQ-041          PIC 9999.
004010               09 MM-FIN-ACQ-041          PIC 99.
004020               09 GG-FIN-ACQ-041          PIC 99.
004030            03 DATA-INI-ELA-041.
004040               09 AA-INI-ELA-041          PIC 9999.
004050               09 MM-INI-ELA-041          PIC 99.
004060               09 GG-INI-ELA-041          PIC 99.
004070            03 DATA-FIN-ELA-041.
004080               09 AA-FIN-ELA-041          PIC 9999.
004090               09 MM-FIN-ELA-041          PIC 99.
004100               09 GG-FIN-ELA-041          PIC 99.
004110            03 COMPENSA-041               PIC X.
004120            03 PRE-ELAB-041               PIC X.
004130            03 ANTEPRIMA-041              PIC X(50).
004140            03 FILE-ERRORI-041            PIC X(49).
004150            03 INDENNITA-041              PIC X.
004160            03 FORMATO-041                PIC 9(6).
004170            03 DEBUG-041                  PIC X.
004180            03 SEQUENZA-041               PIC X.
004190            03 COLORI-041.
004200               09 COLORE-041  OCCURS 15 TIMES PIC S9(9) COMP-5.
004210            03 IGNORA-ERRORI-041          PIC X.
004220            03 USA-EXCEL-041              PIC X.
004230            03 NEWCALC-041                PIC X.
004240            03 OUTPUT-041                 PIC 9(5).
004250*
004260* area definizione Formato sequenziale                    (45)
004270*
004280
004290*
004300* 1-VERSO    TIMBRATURA
004310* 2-ANNO     TIMBRATURA
004320* 3-MESE     TIMBRATURA
004330* 4-GIORNO   TIMBRATURA
004340* 5-ORA      TIMBRATURA
004350* 6-MINUTI   TIMBRATURA
004360* 7-BADGE    TIMBRATURA
004370* 8-CAUSALE  TIMBRATURA
004380* 9-OROLOGIO TIMBRATURA
004390* 10-ERRORE  TIMBRATURA (FLAG TIMBRATURE ERRATE..)
004400
004410          02 TABELLA-045 REDEFINES DATI-TAB.
004420            03 DESC-SEQ-045               PIC X(35).
004430            03 CAMPI-SEQ-045.
004440              05 CAMPO-045 OCCURS 20 TIMES.
004450               15 OFFSET-SEQ-045          PIC 999.
004460               15 SIZE-SEQ-045            PIC 999.
004470
004480            03 TAB-CAMPI-SEQ-045 REDEFINES CAMPI-SEQ-045.
004490
004500               15 OFFSET1-SEQ-045          PIC 999.
004510               15 SIZE1-SEQ-045            PIC 999.
004520
004530               15 OFFSET2-SEQ-045          PIC 999.
004540               15 SIZE2-SEQ-045            PIC 999.
004550
004560               15 OFFSET3-SEQ-045          PIC 999.
004570               15 SIZE3-SEQ-045            PIC 999.
004580
004590               15 OFFSET4-SEQ-045          PIC 999.
004600               15 SIZE4-SEQ-045            PIC 999.
004610
004620               15 OFFSET5-SEQ-045          PIC 999.
004630               15 SIZE5-SEQ-045            PIC 999.
004640
004650               15 OFFSET6-SEQ-045          PIC 999.
004660               15 SIZE6-SEQ-045            PIC 999.
004670
004680               15 OFFSET7-SEQ-045          PIC 999.
004690               15 SIZE7-SEQ-045            PIC 999.
004700
004710               15 OFFSET8-SEQ-045          PIC 999.
004720               15 SIZE8-SEQ-045            PIC 999.
004730
004740               15 OFFSET9-SEQ-045          PIC 999.
004750               15 SIZE9-SEQ-045            PIC 999.
004760
004770               15 OFFSET10-SEQ-045          PIC 999.
004780               15 SIZE10-SEQ-045            PIC 999.
004790
004800               15 OFFSET11-SEQ-045          PIC 999.
004810               15 SIZE11-SEQ-045            PIC 999.
004820
004830               15 OFFSET12-SEQ-045          PIC 999.
004840               15 SIZE12-SEQ-045            PIC 999.
004850
004860               15 OFFSET13-SEQ-045          PIC 999.
004870               15 SIZE13-SEQ-045            PIC 999.
004880
004890               15 OFFSET14-SEQ-045          PIC 999.
004900               15 SIZE14-SEQ-045            PIC 999.
004910
004920               15 OFFSET15-SEQ-045          PIC 999.
004930               15 SIZE15-SEQ-045            PIC 999.
004940
004950               15 OFFSET16-SEQ-045          PIC 999.
004960               15 SIZE16-SEQ-045            PIC 999.
004970
004980               15 OFFSET17-SEQ-045          PIC 999.
004990               15 SIZE17-SEQ-045            PIC 999.
005000
005010               15 OFFSET18-SEQ-045          PIC 999.
005020               15 SIZE18-SEQ-045            PIC 999.
005030
005040               15 OFFSET19-SEQ-045          PIC 999.
005050               15 SIZE19-SEQ-045            PIC 999.
005060
005070               15 OFFSET20-SEQ-045          PIC 999.
005080               15 SIZE20-SEQ-045            PIC 999.
005090
005100
005110              03 VERSO-E-045              PIC X.
005120              03 VERSO-U-045              PIC X.
005130            03 CORR-ANNO-045              PIC 9999.
005140            03 DOPPIA-045                 PIC X(1).
005150            03 ERRORE-045                 PIC X(01).
005160            03 CRIPTA-045                 PIC X(01).
005170            03 FILE-045                   PIC X(77).
005180            03 SIZE-045                   PIC 9999.
005190*
005200*
005210* area definizione Formato output                         (46)
005220*
005230**************************************************************
005240* 01-ANNO
005250* 02-MESE
005260* 03-GIORNO
005270* 04-ORA/MINUTI
005280* 05-CAUSALE
005290* 06-DIPENDENTE
005300* 07-DESCRIZIONE
005310* 08-VOCE
005320* 09-IMPORTO
005330* 10-MINUTI TOTALI
005340**************************************************************
005350          02 TABELLA-046 REDEFINES DATI-TAB.
005360            03 DESC-SEQ-046               PIC X(35).
005370            03 CAMPI-SEQ-046.
005380              05 CAMPO-046 OCCURS 20 TIMES.
005390               15 OFFSET-SEQ-046          PIC 999.
005400               15 SIZE-SEQ-046            PIC 999.
005410
005420            03 TAB-CAMPI-SEQ-046 REDEFINES CAMPI-SEQ-046.
005430
005440               15 OFFSET1-SEQ-046         PIC 999.
005450               15 SIZE1-SEQ-046           PIC 999.
005460
005470               15 OFFSET2-SEQ-046         PIC 999.
005480               15 SIZE2-SEQ-046           PIC 999.
005490
005500               15 OFFSET3-SEQ-046         PIC 999.
005510               15 SIZE3-SEQ-046           PIC 999.
005520
005530               15 OFFSET4-SEQ-046         PIC 999.
005540               15 SIZE4-SEQ-046           PIC 999.
005550
005560               15 OFFSET5-SEQ-046         PIC 999.
005570               15 SIZE5-SEQ-046           PIC 999.
005580
005590               15 OFFSET6-SEQ-046         PIC 999.
005600               15 SIZE6-SEQ-046           PIC 999.
005610
005620               15 OFFSET7-SEQ-046         PIC 999.
005630               15 SIZE7-SEQ-046           PIC 999.
005640
005650               15 OFFSET8-SEQ-046         PIC 999.
005660               15 SIZE8-SEQ-046           PIC 999.
005670
005680               15 OFFSET9-SEQ-046         PIC 999.
005690               15 SIZE9-SEQ-046           PIC 999.
005700
005710               15 OFFSET10-SEQ-046         PIC 999.
005720               15 SIZE10-SEQ-046           PIC 999.
005730
005740               15 OFFSET11-SEQ-046         PIC 999.
005750               15 SIZE11-SEQ-046           PIC 999.
005760
005770               15 OFFSET12-SEQ-046         PIC 999.
005780               15 SIZE12-SEQ-046           PIC 999.
005790
005800               15 OFFSET13-SEQ-046         PIC 999.
005810               15 SIZE13-SEQ-046           PIC 999.
005820
005830               15 OFFSET14-SEQ-046         PIC 999.
005840               15 SIZE14-SEQ-046           PIC 999.
005850
005860               15 OFFSET15-SEQ-046         PIC 999.
005870               15 SIZE15-SEQ-046           PIC 999.
005880
005890               15 OFFSET16-SEQ-046         PIC 999.
005900               15 SIZE16-SEQ-046           PIC 999.
005910
005920               15 OFFSET17-SEQ-046         PIC 999.
005930               15 SIZE17-SEQ-046           PIC 999.
005940
005950               15 OFFSET18-SEQ-046         PIC 999.
005960               15 SIZE18-SEQ-046           PIC 999.
005970
005980               15 OFFSET19-SEQ-046         PIC 999.
005990               15 SIZE19-SEQ-046           PIC 999.
006000
006010               15 OFFSET20-SEQ-046         PIC 999.
006020               15 SIZE20-SEQ-046           PIC 999.
006030
006040
006050
006060            03 FILE-046                   PIC X(80).
006070            03 SIZE-046                   PIC 9999.
006080            03 FORMATO-046                PIC 9.
006090
006100
006110          02 TABELLA-047 REDEFINES DATI-TAB.
006120            03 DESC-047                   PIC X(35).
006130            03 FILE-UTEN-047              PIC X(100).
006140            03 IND-DEB-047                PIC X(6).
006150            03 IND-CRE-047                PIC X(6).
006160            03 AVANZATA-047               PIC X.
006170            03 BOLD-047                   PIC X.
006180            03 FONT-047                   PIC X(50).
006190            03 SIZE-047                   PIC X.
006200            03 UTENTE-047                 PIC X.
006210*
006220* area definizione file utenze                            (47)
006230*
006240
006250          02 TABELLA-050 REDEFINES DATI-TAB.
006260            03 DESC-050       PIC X(35).
006270            03 COLORI-050.
006280               09 COLORE-050  OCCURS 50 TIMES PIC S9(9) COMP-5.
006290
006300          02 TABELLA-051 REDEFINES DATI-TAB.
006310            03 DESC-051       PIC X(35).
006320            03 COLORI-051.
006330               09 COLORE-051  OCCURS 50 TIMES PIC S9(9) COMP-5.
006340
006350          02 TABELLA-052 REDEFINES DATI-TAB.
006360            03 DESC-ORIG-052      PIC X(35).
006370            03 PROG-052           PIC X(100).
006380            03 FILE-052           PIC X(90).
006390            03 EST-052            PIC XXX.
006400            03 CANCELLA-052       PIC X.
006410
006420          02 TABELLA-053 REDEFINES DATI-TAB.
006430            03 DESC-053           PIC X(35).
006440
006450          02 CHIAVE-SEC-TAB.
006460              03 ENTE-SEC-TAB             PIC 99.
006470              03 TIPO-SEC-TAB             PIC XX.
006480              03 DESC-SEC-TAB             PIC X(40).
006490
006500          02 ALTRO-FILLER                 PIC X(212).
006510
006520          02 PARAMETRI-041 REDEFINES ALTRO-FILLER.
006530
006540              03 NEG-041                  PIC 999.
006550              03 POS-041                  PIC 999.
006560
006570

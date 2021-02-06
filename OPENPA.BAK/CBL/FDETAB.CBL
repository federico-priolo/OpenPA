000010*
000011* Copyright (C) 2010-2020 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000012*
000013* This program is free software; you can redistribute it and/or modify
000014* it under the terms of the GNU General Public License as published by
000015* the Free Software Foundation; either version 2, or (at your option)
000016* any later version.
000017*
000018* This program is distributed in the hope that it will be useful,
000019* but WITHOUT ANY WARRANTY; without even the implied warranty of
000020* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000021* GNU General Public License for more details.
000022*
000023* You should have received a copy of the GNU General Public License
000024* along with this software; see the file COPYING.  If not, write to
000025* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000026* Boston, MA 02110-1301 USA
000027*
000028
000029* FILE DESCRIPTION PER IL FILE TABELLE
000030*
000040  FD ARKTAB LABEL RECORD IS STANDARD GLOBAL
000050          RECORD CONTAINS 1024 CHARACTERS.
000060
000070  01 TABELLA.
000080
000090          02 CHIAVE-TAB.
000100           03 ENTE-TAB            PIC 99.
000110           03 TIPO-TAB            PIC XX.
000120           03 ELEMENTO-TAB.
000130             05 PROG-TAB          PIC 9(6).
000140             05 FILLER REDEFINES PROG-TAB.
000150               07 TIPO-PROG-TAB   PIC 999.
000160               07 SOTTOTIPO-TAB   PIC 999.
000170             05 FILLER REDEFINES PROG-TAB.
000180               07 AA-TAB          PIC 99.
000190               07 PERIODO-TAB.
000200                17 MM-TAB         PIC 99.
000210                17 GG-TAB         PIC 99.
000220
000230             05 FILLER REDEFINES PROG-TAB.
000240               07 CONTRATTO-TAB   PIC 9999.
000250               07 GIORNI-TAB      PIC 99.
000260*
000270* il sotto riportato campo permette di inibire la cancellazione
000280* dei records di tabella 'riservati' sulle transazioni di
000290* gestione
000300*
000310          02 FLAG-DEL-TAB PIC X.
000320             88 TABELLA-NON-CANCELLABILE VALUE "S".
000330
000340          02 DATI-TAB             PIC X(757).
000350          02 FILLER REDEFINES DATI-TAB.
000360            03 DESC-TAB           PIC X(35).
000370            03 FILLER             PIC X(210).
000380*
000390* TABELLA DATI ENTE (01)
000400*
000410          02 TABELLA-001 REDEFINES DATI-TAB.
000420           03 VIA-001             PIC X(40).
000430           03 CAP-001             PIC X(5).
000440           03 CITTA-001           PIC X(40).
000450           03 PROV-001            PIC XX.
000460           03 PI-001              PIC X(11).
000470           03 CF-001              PIC X(16).
000480           03 TEL-001             PIC X(17).
000490           03 FIRMA-001           PIC X(40).
000500           03 TIPO-ENTE-001       PIC X.
000510           03 SUFF-001            PIC X(10).
000520           03 WEB-001             PIC X(40).
000530           03 FILLER              PIC XXX.
000540           03 EMAIL-001           PIC X(40).
000550           03 DESC-ENTE-001       PIC X(80).
000560           03 PASSWORD-EMAIL-001  PIC X(40).
000570           
000580*
000590* area definizione progressivi matricole                  (02)
000600*
000610          02 TABELLA-002 REDEFINES DATI-TAB.
000620           03  FILLER             PIC 9(7).
000630           03  FILLER             PIC X.
000640           03  FILLER             PIC 9(7).
000650           03  FILLER             PIC X.
000660           03  ULT-MATR-002       PIC 9(7).
000670           03  FILLER             PIC X.
000680           03  FILLER             PIC 9(7).
000690           03  FILLER             PIC X.
000700           03  FILLER             PIC 9(7).
000710           03  FILLER             PIC X.
000720           03  FILLER             PIC 9(7).
000730           03  FILLER             PIC X.
000740           03  AUT-002            PIC X.
000750           03  FILLER             PIC X.
000760           03  EURO-002           PIC 9(4)V99.
000770           03  FILLER             PIC X.
000780           03  FILLER             PIC 9(7).
000790           03  FILLER             PIC X(117).
000800           03  FILLER             PIC X(64).
000810
000820*
000830* area definizione tabelle qualifica                      (07)
000840*
000850
000860          02 TABELLA-007 REDEFINES DATI-TAB.
000870            03 DESC-QUAL-007      PIC X(35).
000880            03 FILLER             PIC X.
000890            03 TIPO-QUAL-007      PIC X.
000900            03 FILLER             PIC X.
000910            03 FILLER             PIC 99.
000920            03 CONTO-007          PIC X(6).
000930            03 FILLER             PIC X(198).
000940*
000950* area definizione uffici                                 (08)
000960*
000970
000980          02 TABELLA-008 REDEFINES DATI-TAB.
000990            03 DESC-UFF-008      PIC X(35).
001000            03 FILLER            PIC X(210).
001010*
001020
001030*
001040* area definizione monte ferie maturate                   (09)
001050*
001060
001070          02 TABELLA-009 REDEFINES DATI-TAB.
001080            03 DESC-009          PIC X(35).
001090            03 GIORNI-009        PIC 999.
001100            03 ORE-009           PIC 999.
001110            03 FILLER            PIC X(204).
001120
001130          02 TABELLA-010 REDEFINES DATI-TAB.
001140            03 DESC-COSTO-010    PIC X(35).
001150            03 PROFILO-010       PIC 9(6).
001160            03 FILLER            PIC X(204).
001170*
001180* area definizione contratti                              (11)
001190*
001200
001210          02 TABELLA-011 REDEFINES DATI-TAB.
001220            03 DESC-CONT-011     PIC X(35).
001230            03 TIPO-FERIE-011    PIC X.
001240            03 TEMPO-DET-011     PIC X.
001250
001260          02 TABELLA-012 REDEFINES DATI-TAB.
001270            03 DESC-ASL-012      PIC X(35).
001280            03 FILLER            PIC X.
001290            03 VIA-ASL-012       PIC X(35).
001300            03 FILLER            PIC X.
001310            03 TEL-ASL-012       PIC X(35).
001320            03 FILLER            PIC X(138).
001330*
001340* area definizione titoli di studio                       (13)
001350*
001360
001370          02 TABELLA-013 REDEFINES DATI-TAB.
001380            03 DESC-STUDIO-013   PIC X(35).
001390            03 FILLER            PIC X.
001400            03 TIPO-STUDIO-013   PIC X.
001410            03 FILLER            PIC X(208).
001420*
001430*
001440* area definizione stato civile                           (14)
001450*
001460
001470          02 TABELLA-014 REDEFINES DATI-TAB.
001480            03 DESC-STATOCIV-014 PIC X(35).
001490            03 FILLER            PIC X(210).
001500*
001510* area definizione terminali rilevazione/controllo accessi(15)
001520*
001530
001540          02 TABELLA-015 REDEFINES DATI-TAB.
001550            03 DESC-TERM-015     PIC X(35).
001560            03 FILLER            PIC X.
001570            03 UBIC-TERM-015     PIC X(35).
001580            03 FILLER            PIC X.
001590            03 TIPO-TERM-015     PIC X.
001600            03 DISATTIVO-015     PIC 9.
001610            03 FILLER            PIC X(171).
001620*
001630* area definizione indennita'                             (16)
001640*
001650
001660          02 TABELLA-016 REDEFINES DATI-TAB.
001670            03 DESC-IND-016      PIC X(34).
001680            03 DEBUG-016         PIC X.
001690            03 INDENNITA-016 OCCURS 35 TIMES.
001700              09 IND-016         PIC X(6).
001710
001720
001730          02 TABELLA-030 REDEFINES DATI-TAB.
001740              03  DESC-ISTAT-PROV-030     PIC X(35).
001750              03  FILLER                  PIC X.
001760              03  PROV-ISTAT-030          PIC XX.
001770              03  FILLER                  PIC X.
001780              03  REG-ISTAT-030           PIC 99.
001790              03  FILLER                  PIC X.
001800              03  CATAST-030              PIC X(4).
001810              03  FILLER                  PIC X.
001820              03  STATO-030               PIC XXXX.
001830              03  FILLER                  PIC X.
001840              03  EUROPA-030              PIC X.
001850* area definizione pianificazione orari                   (32)
001860*
001870          02 TABELLA-032 REDEFINES DATI-TAB.
001880              03  DESC-PIAN-032           PIC X(35).
001890              03  PIANIFICAZIONE-032.
001900                05 TAB-PIAN-032 OCCURS 10 TIMES.
001910                 09 DATA-INIZIO-032.
001920                   10 MM-INIZIO-032       PIC 99.
001930                   10 GG-INIZIO-032       PIC 99.
001940                 09 DATA-FINE-032.
001950                   10 MM-FINE-032         PIC 99.
001960                   10 GG-FINE-032         PIC 99.
001970                 09 PROFILO-032           PIC 9(6).
001980              03 NEXT-PROF-032            PIC 9(6).
001990              03 FILLER                   PIC X(64).
002000
002010
002020          02 TABELLA-033 REDEFINES DATI-TAB.
002030            03 DESC-033           PIC X(35).
002040            03 FILLER             PIC X.
002050            03 TAB-REGOLE-033.
002060              04 ELEMENTO-033     PIC 999 OCCURS 20 TIMES.
002070*
002080*  01 TOLLERANZA ANTICIPATA   1^ ENTRATA
002090*  02 TOLLERANZA POSTICIPATA  1^ ENTRATA
002100*  03 TOLLERANZA ANTICIPATA   1^ USCITA
002110*  04 TOLLERANZA POSTICIPATA  1^ USCITA
002120*  05 TOLLERANZA ANTICIPATA   2^ ENTRATA
002130*  06 TOLLERANZA POSTICIPATA  2^ ENTRATA
002140*  07 TOLLERANZA ANTICIPATA   2^ USCITA
002150*  08 TOLLERANZA POSTICIPATA  2^ USCITA
002160*  09 FLESS.     ANTICIPATA   ENTRATA
002170*  10 FLESS.     POSTICIPATA  ENTRATA
002180*  11 FLESS.     ANTICIPATA   RIENTRO
002190*  12 FLESS.     ANTICIPATA   RIENTRO
002200*  13 FLESS.     ANTICIPATA   2 ENTRATA
002210*  14 FLESS.     POSTICIPATA  2 ENTRATA
002220*  15 FLESS.     ANTICIPATA   2 RIENTRO
002230*  16 FLESS.     ANTICIPATA   2 RIENTRO
002240*
002250*
002260* area definizione festivi                                (35)
002270*
002280
002290          02 TABELLA-035 REDEFINES DATI-TAB.
002300            03 DESC-FEST-035      PIC X(35).
002310            03 FILLER             PIC X.
002320            03 LAVORO-FEST-035.
002330              09 ORE-FEST-035     PIC 99.
002340              09 MIN-FEST-035     PIC 99.
002350            03 ORARIO-FEST-035 REDEFINES LAVORO-FEST-035
002360                                  PIC 9(4).
002370            03 MINUTI-FEST-035    PIC S9(9) COMP-5.
002380            03 FILLER             PIC 9.
002390            03 TIPO-035           PIC 9.
002400            03 LAVORO-DOV-035.
002410              09 ORE-DOV-035     PIC 99.
002420              09 MIN-DOV-035     PIC 99.
002430            03 ORARIO-DOV-035 REDEFINES LAVORO-DOV-035
002440                                  PIC 9(4).
002450            03 MINUTI-DOV-035     PIC S9(9) COMP-5.
002460            03 FILLER             PIC 9.
002470            03 TIPO-DOV-035       PIC 9.
002480            03 FILLER             PIC X(189).
002490*
002500* area definizione tipologia calendari                    (36)
002510*
002520          02 TABELLA-036 REDEFINES DATI-TAB.
002530            03 DESC-CALEN-036    PIC X(35).
002540            03 FILLER            PIC X(210).
002550*
002560* area definizione tipologia servizi                      (37)
002570*
002580          02 TABELLA-037 REDEFINES DATI-TAB.
002590            03 DESC-SERV-037     PIC X(35).
002600            03 FILLER            PIC X.
002610            03 AREA-037          PIC X(06).
002620*
002630* area definizione tipologia istituti                     (37)
002640*
002650          02 TABELLA-038 REDEFINES DATI-TAB.
002660            03 DESC-038          PIC X(35).
002670*
002680* area definizione categorie istituti /ditte              (39)
002690*
002700          02 TABELLA-039 REDEFINES DATI-TAB.
002710            03 DESC-CAT-039      PIC X(35).
002720            03 ICO-039           PIC S9(9) COMP-5.
002730            03 FILLER            PIC X(206).
002740* area definizione AGGIUNTIVE CARTELLINO                  (40)
002750*
002760          02 TABELLA-040 REDEFINES DATI-TAB.
002770            03 DESC-AGG-040      PIC X(35).
002780            03 TESTO-040         PIC X(210).
002790
002800*
002810* area definizione CATEGORIE CAUSALI                      (42)
002820*
002830          02 TABELLA-042 REDEFINES DATI-TAB.
002840            03 DESC-CAT-042      PIC X(35).
002850            03 IND-042           PIC X.
002860
002870* area definizione COSTANTI STAMP WEB                     (44)
002880*
002890          02 TABELLA-044 REDEFINES DATI-TAB.
002900            03 DESC-044          PIC X(35).
002910            03 TESTO-044         PIC X(80).
002920* area definizione livelli                                (48)
002930*
002940          02 TABELLA-048 REDEFINES DATI-TAB.
002950            03 DESC-LIV-048       PIC X(35).
002960            03 MINIMO-048         PIC 999999.
002970            03 VOCE-048           PIC X(6).
002980            03 NOCONTO-048        PIC X.
002990            03 DESC-CONTO-048     PIC X(40).
003000
003010* area definizione gerarchie                              (43)
003020*
003030          02 TABELLA-043 REDEFINES DATI-TAB.
003040            03 NOME-043           PIC X(35).
003050            03 USA-043            PIC X.
003060            03 MATR-043           PIC 9(7).
003070            03 FILE-043           PIC X(100).
003080            03 FIRMA-043          PIC X(035).
003090            03 DATA-043.
003100             09 AA-043            PIC 9999.
003110             09 MM-043            PIC 99.
003120             09 GG-043            PIC 99.
003130            03 FILLER-043         PIC X(54).
003140            03 DOMANDE-043        PIC 999.
003150            03 EMAIL-043          PIC X.
003160*
003170* area definizione Codici I.N.A.I.L                       (18)
003180*
003190
003200          02 TABELLA-018 REDEFINES DATI-TAB.
003210            03 DESC-INAIL-018     PIC X(35).
003220            03 IMP-OPE-018        PIC X.
003230            03 FILLER             PIC X(177).
003240            03 CODICE-INAIL-018.
003250             05 POS-INAIL-018     PIC 9(8).
003260             05 CON-INAIL-018     PIC 99.
003270            03 FILLER             PIC X(22).
003280
003290*
003300* area parametri elaborazione timbrature                  (041)
003310*
003320          02 TABELLA-041 REDEFINES DATI-TAB.
003330            03 DESC-ELAB-041              PIC X(35).
003340            03 DATA-INI-ACQ-041.
003350               09 AA-INI-ACQ-041          PIC 9999.
003360               09 MM-INI-ACQ-041          PIC 99.
003370               09 GG-INI-ACQ-041          PIC 99.
003380            03 DATA-FIN-ACQ-041.
003390               09 AA-FIN-ACQ-041          PIC 9999.
003400               09 MM-FIN-ACQ-041          PIC 99.
003410               09 GG-FIN-ACQ-041          PIC 99.
003420            03 DATA-INI-ELA-041.
003430               09 AA-INI-ELA-041          PIC 9999.
003440               09 MM-INI-ELA-041          PIC 99.
003450               09 GG-INI-ELA-041          PIC 99.
003460            03 DATA-FIN-ELA-041.
003470               09 AA-FIN-ELA-041          PIC 9999.
003480               09 MM-FIN-ELA-041          PIC 99.
003490               09 GG-FIN-ELA-041          PIC 99.
003500            03 COMPENSA-041               PIC X.
003510            03 PRE-ELAB-041               PIC X.
003520            03 ANTEPRIMA-041              PIC X(50).
003530            03 FILE-ERRORI-041            PIC X(49).
003540            03 INDENNITA-041              PIC X.
003550            03 FORMATO-041                PIC 9(6).
003560            03 DEBUG-041                  PIC X.
003570            03 SEQUENZA-041               PIC X.
003580            03 COLORI-041.
003590               09 COLORE-041  OCCURS 15 TIMES PIC S9(9) COMP-5.
003600            03 IGNORA-ERRORI-041          PIC X.
003610            03 USA-EXCEL-041              PIC X.
003620            03 NEWCALC-041                PIC X.
003630            03 OUTPUT-041                 PIC 9(5).
003640*
003650* area definizione Formato sequenziale                    (45)
003660*
003670
003680*
003690* 1-VERSO    TIMBRATURA
003700* 2-ANNO     TIMBRATURA
003710* 3-MESE     TIMBRATURA
003720* 4-GIORNO   TIMBRATURA
003730* 5-ORA      TIMBRATURA
003740* 6-MINUTI   TIMBRATURA
003750* 7-BADGE    TIMBRATURA
003760* 8-CAUSALE  TIMBRATURA
003770* 9-OROLOGIO TIMBRATURA
003780* 10-ERRORE  TIMBRATURA (FLAG TIMBRATURE ERRATE..)
003790
003800          02 TABELLA-045 REDEFINES DATI-TAB.
003810            03 DESC-SEQ-045               PIC X(35).
003820            03 CAMPI-SEQ-045.
003830              05 CAMPO-045 OCCURS 20 TIMES.
003840               15 OFFSET-SEQ-045          PIC 999.
003850               15 SIZE-SEQ-045            PIC 999.
003860              05 VERSO-E-045              PIC X.
003870              05 VERSO-U-045              PIC X.
003880            03 CORR-ANNO-045              PIC 9999.
003890            03 DOPPIA-045                 PIC X(1).
003900            03 ERRORE-045                 PIC X(01).
003910            03 CRIPTA-045                 PIC X(01).
003920            03 FILE-045                   PIC X(77).
003930            03 SIZE-045                   PIC 9999.
003940*
003950*
003960* area definizione Formato output                         (46)
003970*
003980**************************************************************
003990* 01-ANNO
004000* 02-MESE
004010* 03-GIORNO
004020* 04-ORA/MINUTI
004030* 05-CAUSALE
004040* 06-DIPENDENTE
004050* 07-DESCRIZIONE
004060* 08-VOCE
004070* 09-IMPORTO
004080* 10-MINUTI TOTALI
004090**************************************************************
004100          02 TABELLA-046 REDEFINES DATI-TAB.
004110            03 DESC-SEQ-046               PIC X(35).
004120            03 CAMPI-SEQ-046.
004130              05 CAMPO-046 OCCURS 20 TIMES.
004140               15 OFFSET-SEQ-046          PIC 999.
004150               15 SIZE-SEQ-046            PIC 999.
004160            03 FILE-046                   PIC X(80).
004170            03 SIZE-046                   PIC 9999.
004180            03 FORMATO-046                PIC 9.
004190
004200
004210          02 TABELLA-047 REDEFINES DATI-TAB.
004220            03 DESC-047                   PIC X(35).
004230            03 FILE-UTEN-047              PIC X(100).
004240            03 IND-DEB-047                PIC X(6).
004250            03 IND-CRE-047                PIC X(6).
004260            03 AVANZATA-047               PIC X.
004270            03 BOLD-047                   PIC X.
004280            03 FONT-047                   PIC X(50).
004290            03 SIZE-047                   PIC X.
004300            03 UTENTE-047                 PIC X.
004310*
004320* area definizione file utenze                            (47)
004330*
004340
004350          02 TABELLA-050 REDEFINES DATI-TAB.
004360            03 DESC-050       PIC X(35).
004370            03 COLORI-050.
004380               09 COLORE-050  OCCURS 50 TIMES PIC S9(9) COMP-5.
004390
004400          02 TABELLA-051 REDEFINES DATI-TAB.
004410            03 DESC-051       PIC X(35).
004420            03 COLORI-051.
004430               09 COLORE-051  OCCURS 50 TIMES PIC S9(9) COMP-5.
004440
004450          02 TABELLA-052 REDEFINES DATI-TAB.
004460            03 DESC-ORIG-052      PIC X(35).
004470            03 PROG-052           PIC X(100).
004480            03 FILE-052           PIC X(90).
004490            03 EST-052            PIC XXX.
004500            03 CANCELLA-052       PIC X.
004510
004520          02 TABELLA-053 REDEFINES DATI-TAB.
004530            03 DESC-053           PIC X(35).
004540
004550          02 CHIAVE-SEC-TAB.
004560              03 ENTE-SEC-TAB             PIC 99.
004570              03 TIPO-SEC-TAB             PIC XX.
004580              03 DESC-SEC-TAB             PIC X(40).
004590
004600          02 ALTRO-FILLER                 PIC X(212).
004610
004620          02 PARAMETRI-041 REDEFINES ALTRO-FILLER.
004630
004640              03 NEG-041                  PIC 999.
004650              03 POS-041                  PIC 999.
004660
004670

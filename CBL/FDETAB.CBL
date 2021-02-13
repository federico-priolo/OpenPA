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
000880
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
                  03 DESCRIZIONI-TAB.
000550             09 DESCR-TAB        PIC X(40) OCCURS 20 TIMES.
000600            03 MAX-DESC-TAB      PIC 9(5).
000610            03 DATI-TABELLA-TAB PIC X(2989).
000620
000630
000640*
000650* TABELLA DATI ENTE (01)
000660*
000670          02 TABELLA-001 REDEFINES DATI-TAB.
000680           03 FILLER1             PIC X(880).
000690           03 VIA-001             PIC X(40).
000700           03 CAP-001             PIC X(5).
000710           03 CITTA-001           PIC X(40).
000720           03 PROV-001            PIC XX.
000730           03 PI-001              PIC X(11).
000740           03 CF-001              PIC X(16).
000750           03 TEL-001             PIC X(17).
000760           03 FIRMA-001           PIC X(40).
000770           03 TIPO-ENTE-001       PIC X.
000780           03 SUFF-001            PIC X(10).
000790           03 WEB-001             PIC X(40).
000800           03 FILLER              PIC XXX.
000810           03 EMAIL-001           PIC X(40).
000820           03 DESC-ENTE-001       PIC X(80).
000830           03 PASSWORD-EMAIL-001  PIC X(40).
000840
000850*
000860* area definizione progressivi matricole                  (02)
000870*
000880          02 TABELLA-002 REDEFINES DATI-TAB.
000680           03 FILLER1             PIC X(880).
000900           03  FILLER             PIC 9(7).
000910           03  FILLER             PIC X.
000920           03  FILLER             PIC 9(7).
000930           03  FILLER             PIC X.
000940           03  ULT-MATR-002       PIC 9(7).
000950           03  FILLER             PIC X.
000960           03  FILLER             PIC 9(7).
000970           03  FILLER             PIC X.
000980           03  FILLER             PIC 9(7).
000990           03  FILLER             PIC X.
001000           03  FILLER             PIC 9(7).
001010           03  FILLER             PIC X.
001020           03  AUT-002            PIC X.
001030           03  FILLER             PIC X.
001040           03  EURO-002           PIC 9(4)V99.
001050
001060*
001070* area definizione tabelle qualifica                      (07)
001080*
001090
001100          02 TABELLA-007 REDEFINES DATI-TAB.
001110            03 FILLER1            PIC X(880).
001120            03 DESC-QUAL-007      PIC X(35).
001130            03 FILLER1            PIC X.
001140            03 TIPO-QUAL-007      PIC X.
001150            03 FILLER             PIC X.
001160            03 FILLER             PIC 99.
001170            03 CONTO-007          PIC X(6).
001180
001190*
001200* area definizione uffici                                 (08)
001210*
001220
001230          02 TABELLA-008 REDEFINES DATI-TAB.
001880            03 FILLER1            PIC X(880).
001250            03 DESC-UFF-008       PIC X(35).
001260
001270*
001280
001290*
001300* area definizione monte ferie maturate                   (09)
001310*
001320
001330          02 TABELLA-009 REDEFINES DATI-TAB.
001340            03 FILLER1            PIC X(880).
001350            03 DESC-009           PIC X(35).
001360            03 GIORNI-009         PIC 999.
001370            03 ORE-009            PIC 999.
001380
001390
001400          02 TABELLA-010 REDEFINES DATI-TAB.
001410            03 FILLER1            PIC X(880).
001420            03 DESC-COSTO-010     PIC X(35).
001430            03 PROFILO-010        PIC 9(6).
001440
001450*
001460* area definizione contratti                              (11)
001470*
001480
001490          02 TABELLA-011 REDEFINES DATI-TAB.
001500            03 FILLER1            PIC X(880).
001510            03 DESC-CONT-011      PIC X(35).
001520            03 TIPO-FERIE-011     PIC X.
001530            03 TEMPO-DET-011      PIC X.
001540
001550          02 TABELLA-012 REDEFINES DATI-TAB.
001560            03 FILLER1            PIC X(880).
001570            03 DESC-ASL-012       PIC X(35).
001580            03 FILLER             PIC X.
001590            03 VIA-ASL-012        PIC X(35).
001600            03 FILLER             PIC X.
001610            03 TEL-ASL-012        PIC X(35).
001620
001630*
001640* area definizione titoli di studio                       (13)
001650*
001660
001670          02 TABELLA-013 REDEFINES DATI-TAB.
001680            03 FILLER1            PIC X(880).
001690            03 DESC-STUDIO-013    PIC X(35).
001700            03 FILLER             PIC X.
001710            03 TIPO-STUDIO-013    PIC X.
001720
001730*
001740*
001750* area definizione stato civile                           (14)
001760*
001770
001780          02 TABELLA-014 REDEFINES DATI-TAB.
001790            03 FILLER1            PIC X(880).
001800            03 DESC-STATOCIV-014  PIC X(35).
001810            03 FILLER             PIC X(210).
001820*
001830* area definizione terminali rilevazione/controllo accessi(15)
001840*
001850
001860          02 TABELLA-015 REDEFINES DATI-TAB.
001870            03 FILLER1            PIC X(880).
001880            03 DESC-TERM-015      PIC X(35).
001890            03 FILLER             PIC X.
001900            03 UBIC-TERM-015      PIC X(35).
001910            03 FILLER             PIC X.
001920            03 TIPO-TERM-015      PIC X.
001930            03 DISATTIVO-015      PIC 9.
001940
001950*
001960* area definizione indennita'                             (16)
001970*
001980
001990          02 TABELLA-016 REDEFINES DATI-TAB.
002000            03 FILLER1            PIC X(880).
002010            03 DESC-IND-016       PIC X(34).
002020            03 DEBUG-016          PIC X.
002021			  03 CAR-INDENNITA-016.
002030             05 INDENNITA-016 OCCURS 35 TIMES.
002040              09 IND-016          PIC X(6).
002050            03 TAB-INDENNITA-016 REDEFINES CAR-INDENNITA-016.
002060              09 IND1-016         PIC X(6).                  
002070              09 IND2-016         PIC X(6).                  
002080              09 IND3-016         PIC X(6).                  
002090              09 IND4-016         PIC X(6).                  
002100              09 IND5-016         PIC X(6).                  
002110              09 IND6-016         PIC X(6).                  
002120              09 IND7-016         PIC X(6).                  
002130              09 IND8-016         PIC X(6).                  
002140              09 IND9-016         PIC X(6).                  
002150              09 IND10-016         PIC X(6).                  
002160              09 IND11-016         PIC X(6).                  
002170              09 IND12-016         PIC X(6).                  
002180              09 IND13-016         PIC X(6).                  
002190              09 IND14-016         PIC X(6).                  
002200              09 IND15-016         PIC X(6).                  
002210              09 IND16-016         PIC X(6).                  
002220              09 IND17-016         PIC X(6).                  
002230              09 IND18-016         PIC X(6).                  
002880              09 IND19-016         PIC X(6).                  
002250              09 IND20-016         PIC X(6).                  
002260              09 IND21-016         PIC X(6).                  
002270              09 IND22-016         PIC X(6).                  
002280              09 IND23-016         PIC X(6).                  
002290              09 IND24-016         PIC X(6).                  
002300              09 IND25-016         PIC X(6).                  
002310              09 IND26-016         PIC X(6).                  
002320              09 IND27-016         PIC X(6).                  
002330              09 IND28-016         PIC X(6).                  
002340              09 IND29-016         PIC X(6).                  
002350              09 IND30-016         PIC X(6).                  
002360              09 IND31-016         PIC X(6).                  
002370              09 IND32-016         PIC X(6).                  
002380              09 IND33-016         PIC X(6).                  
002390              09 IND34-016         PIC X(6).                  
008800              09 IND35-016         PIC X(6).                  
002410              
002420              
002430
002440
002450          02 TABELLA-030 REDEFINES DATI-TAB.
002460              03 FILLER1            PIC X(880).
002470              03  DESC-ISTAT-PROV-030     PIC X(35).
002480              03  FILLER                  PIC X.
002490              03  PROV-ISTAT-030          PIC XX.
002500              03  FILLER                  PIC X.
002510              03  REG-ISTAT-030           PIC 99.
002520              03  FILLER                  PIC X.
002530              03  CATAST-030              PIC X(4).
002540              03  FILLER                  PIC X.
002550              03  STATO-030               PIC XXXX.
002560              03  FILLER                  PIC X.
002570              03  EUROPA-030              PIC X.
002580* area definizione pianificazione orari                   (32)
002590*
002600          02 TABELLA-032 REDEFINES DATI-TAB.
002610            03 FILLER1            PIC X(880).
002620              03  DESC-PIAN-032           PIC X(35).
002630              03  PIANIFICAZIONE-032.
002640                05 TAB-PIAN-032 OCCURS 10 TIMES.
002650                 09 DATA-INIZIO-032.
002660                   10 MM-INIZIO-032       PIC 99.
002670                   10 GG-INIZIO-032       PIC 99.
002680                 09 DATA-FINE-032.
002690                   10 MM-FINE-032         PIC 99.
002700                   10 GG-FINE-032         PIC 99.
002710                 09 PROFILO-032           PIC 9(6).
002720              03 NEXT-PROF-032            PIC 9(6).
002730            
002740
002750
002760          02 TABELLA-033 REDEFINES DATI-TAB.
002770            03 FILLER1            PIC X(880).
002780            03 DESC-033           PIC X(35).
002790            03 FILLER             PIC X.
002800            03 TAB-REGOLE-033.
002810              04 ELEMENTO-033     PIC 999 OCCURS 20 TIMES.
002820*
002830*  01 TOLLERANZA ANTICIPATA   1^ ENTRATA
002840*  02 TOLLERANZA POSTICIPATA  1^ ENTRATA
002850*  03 TOLLERANZA ANTICIPATA   1^ USCITA
002860*  04 TOLLERANZA POSTICIPATA  1^ USCITA
002870*  05 TOLLERANZA ANTICIPATA   2^ ENTRATA
002880*  06 TOLLERANZA POSTICIPATA  2^ ENTRATA
002890*  07 TOLLERANZA ANTICIPATA   2^ USCITA
002900*  08 TOLLERANZA POSTICIPATA  2^ USCITA
002910*  09 FLESS.     ANTICIPATA   ENTRATA
002920*  10 FLESS.     POSTICIPATA  ENTRATA
002930*  11 FLESS.     ANTICIPATA   RIENTRO
002940*  12 FLESS.     ANTICIPATA   RIENTRO
002950*  13 FLESS.     ANTICIPATA   2 ENTRATA
002960*  14 FLESS.     POSTICIPATA  2 ENTRATA
002970*  15 FLESS.     ANTICIPATA   2 RIENTRO
002980*  16 FLESS.     ANTICIPATA   2 RIENTRO
002990*
003000*
003010* area definizione festivi                                (35)
003020*
003030
003040          02 TABELLA-035 REDEFINES DATI-TAB.
003050            03 FILLER1            PIC X(880).
003060            03 DESC-FEST-035      PIC X(35).
003070            03 FILLER             PIC X.
003080            03 LAVORO-FEST-035.
003090              09 ORE-FEST-035     PIC 99.
003100              09 MIN-FEST-035     PIC 99.
003110            03 ORARIO-FEST-035 REDEFINES LAVORO-FEST-035
003120                                  PIC 9(4).
003130            03 MINUTI-FEST-035    PIC S9(9) COMP-5.
003140            03 FILLER             PIC 9.
003150            03 TIPO-035           PIC 9.
003160            03 LAVORO-DOV-035.
003170              09 ORE-DOV-035     PIC 99.
003180              09 MIN-DOV-035     PIC 99.
003190            03 ORARIO-DOV-035 REDEFINES LAVORO-DOV-035
003200                                  PIC 9(4).
003210            03 MINUTI-DOV-035     PIC S9(9) COMP-5.
003220            03 FILLER             PIC 9.
003230            03 TIPO-DOV-035       PIC 9.
003880            03 FILLER             PIC X(189).
003250*
003260* area definizione tipologia calendari                    (36)
003270*
003280          02 TABELLA-036 REDEFINES DATI-TAB.
003290            03 FILLER1            PIC X(880).
003300            03 DESC-CALEN-036    PIC X(35).
003310            03 FILLER            PIC X(210).
003320*
003330* area definizione tipologia servizi                      (37)
003340*
003350          02 TABELLA-037 REDEFINES DATI-TAB.
003360            03 FILLER1            PIC X(880).
003370            03 DESC-SERV-037     PIC X(35).
003380            03 FILLER            PIC X.
003390            03 AREA-037          PIC X(06).
003400*
003410* area definizione tipologia istituti                     (37)
003420*
003430          02 TABELLA-038 REDEFINES DATI-TAB.
003440            03 FILLER1            PIC X(880).
003450            03 DESC-038          PIC X(35).
003460*
003470* area definizione categorie istituti /ditte              (39)
003480*
003490          02 TABELLA-039 REDEFINES DATI-TAB.
003500            03 FILLER1            PIC X(880).
003510            03 DESC-CAT-039      PIC X(35).
003520            03 ICO-039           PIC S9(9) COMP-5.
003530            03 FILLER            PIC X(206).
003540* area definizione AGGIUNTIVE CARTELLINO                  (40)
003550*
003560          02 TABELLA-040 REDEFINES DATI-TAB.
003570            03 FILLER1            PIC X(880).
003580            03 DESC-AGG-040      PIC X(35).
003590            03 TESTO-040         PIC X(210).
003600
003610*
003620* area definizione CATEGORIE CAUSALI                      (42)
003630*
003640          02 TABELLA-042 REDEFINES DATI-TAB.
003650            03 FILLER1            PIC X(880).
003660            03 DESC-CAT-042      PIC X(35).
003670            03 IND-042           PIC X.
003680
003690* area definizione COSTANTI STAMP WEB                     (44)
003700*
003710          02 TABELLA-044 REDEFINES DATI-TAB.
003720            03 FILLER1            PIC X(880).
003730            03 DESC-044          PIC X(35).
003740            03 TESTO-044         PIC X(80).
003750* area definizione livelli                                (48)
003760*
003770          02 TABELLA-048 REDEFINES DATI-TAB.
003780            03 FILLER1            PIC X(880).
003790            03 DESC-LIV-048       PIC X(35).
003800            03 MINIMO-048         PIC 999999.
003810            03 VOCE-048           PIC X(6).
003820            03 NOCONTO-048        PIC X.
003830            03 DESC-CONTO-048     PIC X(40).
003840
003850* area definizione gerarchie                              (43)
003860*
003870          02 TABELLA-043 REDEFINES DATI-TAB.
003880            03 FILLER1            PIC X(880).
003890            03 NOME-043           PIC X(35).
003900            03 USA-043            PIC X.
003910            03 MATR-043           PIC 9(7).
003920            03 FILE-043           PIC X(100).
003930            03 FIRMA-043          PIC X(035).
003940            03 DATA-043.
003950             09 AA-043            PIC 9999.
003960             09 MM-043            PIC 99.
003970             09 GG-043            PIC 99.
003980            03 FILLER-043         PIC X(54).
003990            03 DOMANDE-043        PIC 999.
004000            03 EMAIL-043          PIC X.
004010*
004020* area definizione Codici I.N.A.I.L                       (18)
004030*
004040
004050          02 TABELLA-018 REDEFINES DATI-TAB.
004060            03 FILLER1            PIC X(880).
004070            03 DESC-INAIL-018     PIC X(35).
004080            03 IMP-OPE-018        PIC X.
004090            03 FILLER             PIC X(177).
004100            03 CODICE-INAIL-018.
004110             05 POS-INAIL-018     PIC 9(8).
004120             05 CON-INAIL-018     PIC 99.
004130            03 FILLER             PIC X(22).
004140
004150*
004160* area parametri elaborazione timbrature                  (041)
004170*
004180          02 TABELLA-041 REDEFINES DATI-TAB.
004190            03 FILLER1            PIC X(880).
004200            03 DESC-ELAB-041              PIC X(35).
004210            03 DATA-INI-ACQ-041.
004220               09 AA-INI-ACQ-041          PIC 9999.
004230               09 MM-INI-ACQ-041          PIC 99.
004880               09 GG-INI-ACQ-041          PIC 99.
004250            03 DATA-FIN-ACQ-041.
004260               09 AA-FIN-ACQ-041          PIC 9999.
004270               09 MM-FIN-ACQ-041          PIC 99.
004280               09 GG-FIN-ACQ-041          PIC 99.
004290            03 DATA-INI-ELA-041.
004300               09 AA-INI-ELA-041          PIC 9999.
004310               09 MM-INI-ELA-041          PIC 99.
004320               09 GG-INI-ELA-041          PIC 99.
004330            03 DATA-FIN-ELA-041.
004340               09 AA-FIN-ELA-041          PIC 9999.
004350               09 MM-FIN-ELA-041          PIC 99.
004360               09 GG-FIN-ELA-041          PIC 99.
004370            03 COMPENSA-041               PIC X.
004380            03 PRE-ELAB-041               PIC X.
004390            03 ANTEPRIMA-041              PIC X(50).
004400            03 FILE-ERRORI-041            PIC X(49).
004410            03 INDENNITA-041              PIC X.
004420            03 FORMATO-041                PIC 9(6).
004430            03 DEBUG-041                  PIC X.
004440            03 SEQUENZA-041               PIC X.
004450            03 COLORI-041.
004460               09 COLORE-041  OCCURS 15 TIMES PIC S9(9) COMP-5.
004470            03 IGNORA-ERRORI-041          PIC X.
004480            03 USA-EXCEL-041              PIC X.
004490            03 NEWCALC-041                PIC X.
004500            03 OUTPUT-041                 PIC 9(5).
004510*
004520* area definizione Formato sequenziale                    (45)
004530*
004540
004550*
004560* 1-VERSO    TIMBRATURA
004570* 2-ANNO     TIMBRATURA
004580* 3-MESE     TIMBRATURA
004590* 4-GIORNO   TIMBRATURA
004600* 5-ORA      TIMBRATURA
004610* 6-MINUTI   TIMBRATURA
004620* 7-BADGE    TIMBRATURA
004630* 8-CAUSALE  TIMBRATURA
004640* 9-OROLOGIO TIMBRATURA
004650* 10-ERRORE  TIMBRATURA (FLAG TIMBRATURE ERRATE..)
004660
004670          02 TABELLA-045 REDEFINES DATI-TAB.
004680            03 FILLER1            PIC X(880).
004690            03 DESC-SEQ-045               PIC X(35).
004700            03 CAMPI-SEQ-045.
004710              05 CAMPO-045 OCCURS 20 TIMES.
004720               15 OFFSET-SEQ-045          PIC 999.
004730               15 SIZE-SEQ-045            PIC 999.
004740              05 VERSO-E-045              PIC X.
004750              05 VERSO-U-045              PIC X.
004760            03 CORR-ANNO-045              PIC 9999.
004770            03 DOPPIA-045                 PIC X(1).
004780            03 ERRORE-045                 PIC X(01).
004790            03 CRIPTA-045                 PIC X(01).
004800            03 FILE-045                   PIC X(77).
004810            03 SIZE-045                   PIC 9999.
004820*
004830*
004840* area definizione Formato output                         (46)
004850*
004860**************************************************************
004870* 01-ANNO
004880* 02-MESE
004890* 03-GIORNO
004900* 04-ORA/MINUTI
004910* 05-CAUSALE
004920* 06-DIPENDENTE
004930* 07-DESCRIZIONE
004940* 08-VOCE
004950* 09-IMPORTO
004960* 10-MINUTI TOTALI
004970**************************************************************
004980          02 TABELLA-046 REDEFINES DATI-TAB.
004990            03 FILLER1            PIC X(880).
005000            03 DESC-SEQ-046               PIC X(35).
005010            03 CAMPI-SEQ-046.
005020              05 CAMPO-046 OCCURS 20 TIMES.
005030               15 OFFSET-SEQ-046          PIC 999.
005040               15 SIZE-SEQ-046            PIC 999.
005050            03 FILE-046                   PIC X(80).
005060            03 SIZE-046                   PIC 9999.
005070            03 FORMATO-046                PIC 9.
005080
005090
005100          02 TABELLA-047 REDEFINES DATI-TAB.
005110            03 FILLER1            PIC X(880).
005120            03 DESC-047                   PIC X(35).
005130            03 FILE-UTEN-047              PIC X(100).
005140            03 IND-DEB-047                PIC X(6).
005150            03 IND-CRE-047                PIC X(6).
005160            03 AVANZATA-047               PIC X.
005170            03 BOLD-047                   PIC X.
005180            03 FONT-047                   PIC X(50).
005190            03 SIZE-047                   PIC X.
005200            03 UTENTE-047                 PIC X.
005210*
005220* area definizione file utenze                            (47)
005230*
005880
005250          02 TABELLA-050 REDEFINES DATI-TAB.
005260            03 FILLER1            PIC X(880).
005270            03 DESC-050       PIC X(35).
005280            03 COLORI-050.
005290               09 COLORE-050  OCCURS 50 TIMES PIC S9(9) COMP-5.
005300
005310          02 TABELLA-051 REDEFINES DATI-TAB.
005320            03 FILLER1            PIC X(880).
005330            03 DESC-051       PIC X(35).
005340            03 COLORI-051.
005350               09 COLORE-051  OCCURS 50 TIMES PIC S9(9) COMP-5.
005360
005370          02 TABELLA-052 REDEFINES DATI-TAB.
005380            03 FILLER1            PIC X(880).
005390            03 DESC-ORIG-052      PIC X(35).
005400            03 PROG-052           PIC X(100).
005410            03 FILE-052           PIC X(90).
005420            03 EST-052            PIC XXX.
005430            03 CANCELLA-052       PIC X.
005440
005450          02 TABELLA-053 REDEFINES DATI-TAB.
005460            03 FILLER1            PIC X(880).
005470            03 DESC-053           PIC X(35).
005480
005490          02 CHIAVE-SEC-TAB.
005500              03 ENTE-SEC-TAB             PIC 99.
005510              03 TIPO-SEC-TAB             PIC XX.
005520              03 DESC-SEC-TAB             PIC X(40).
005530
005540          02 ALTRO-FILLER                 PIC X(212).
005550
005560          02 PARAMETRI-041 REDEFINES ALTRO-FILLER.
005570
005580              03 NEG-041                  PIC 999.
005590              03 POS-041                  PIC 999.
005600
005610

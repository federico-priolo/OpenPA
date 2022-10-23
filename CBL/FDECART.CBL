000010*
000020** tracciato archivio cartellino interattivo
000030*
000040  FD ARKCART LABEL RECORD IS STANDARD GLOBAL
000050             RECORD CONTAINS 512 CHARACTERS.
000060
000070  01 CARTELLINO.
000080
000090          02 CHIAVE-CART.
000100            09 ENTE-CART        PIC 99.
000110            09 DIP-CART         PIC 9(7).
000120            09 DATA-CART.
000130              12 AA-CART        PIC 9999.
000140              12 MM-CART        PIC 99.
000150              12 GG-CART        PIC 99.
000160
000170          02 BADGE-CART         PIC 9(7).
000180          02 PROV-BADGE-CART    PIC 9(7).
000190          02 DATI-CART.
000200           05 GIORNO-CART       PIC 9.
000210*
000220** TIPO-GIORNO-CART = L=LAVORATIVO FERIALE
000230**                    F=FESTIVO
000240*
000250           05 TIPO-GIORNO-CART  PIC X.
000260           05 NUM-TIMBRA-CART   PIC 99.
000270           05 CONTA-ASS-CART    PIC X.
000280           05 SIGLA-GG-CART     PIC XX.
000290           05 TURNO-CART        PIC 9.
000300           05 ULT-VERSO-CART    PIC X.
000310           05 ULT-CAUS-CART     PIC 999.
000320           05 PRI-VERSO-CART    PIC X.
000330           05 PRI-CAUS-CART     PIC 999.
000340           05 ASS-PRES-CART     PIC X.
000350           05 PROFILO-CART      PIC 9(6).
000360*
000370* TIPO PROFILO = 'M' e' forzato rispetto a quello convenzionale
000380*                    del dipendente e viene desunto o caricato
000390*                    dalla gestione orari dipendente
000400*                'F' e' forzato dal cartellino e non puo' essere
000410*                    cambiato
000420
000430           05 TIPO-PROF-CART    PIC X.
000440           05 ORARIO-CART       PIC X(05).
000450           05 TIPO-ORA-CART     PIC X.
000460           05 ORARIO-ELAB-CART  PIC X(05).
000470          02 TOTALI-CART.
000480           05 DOVUTO-CART.
000490             09 ORE-DOV-CART     PIC 99.
000500             09 MIN-DOV-CART     PIC 99.
000510           05 DOV-CART           REDEFINES DOVUTO-CART PIC 9(4).
000520           05 MINUTI-DOV-CART    PIC S9(9) COMP-5.
000530           05 LAVORO-CART.
000540             09 ORE-LAV-CART     PIC 99.
000550             09 MIN-LAV-CART     PIC 99.
000560           05 LAV-CART           REDEFINES LAVORO-CART PIC 9(4).
000570           05 MINUTI-LAV-CART    PIC S9(9) COMP-5.
000580           05 DEBITO-CART.
000590             09 ORE-DEB-CART     PIC 99.
000600             09 MIN-DEB-CART     PIC 99.
000610           05 DEB-CART           REDEFINES DEBITO-CART PIC 9(4).
000620           05 MINUTI-DEB-CART    PIC S9(9) COMP-5.
000630           05 CREDITO-CART.
000640             09 ORE-CRE-CART     PIC 99.
000650             09 MIN-CRE-CART     PIC 99.
000660           05 CRE-CART           REDEFINES CREDITO-CART PIC 9(4).
000670           05 MINUTI-CRE-CART    PIC S9(9) COMP-5.
000680*
000690**  il cartellino e' stato chiuso non e' rielaborabile C=CHIUSO
000700*
000710          02 FLAGS-CART.
000720           05 STATO-CART         PIC X.
000730           05 FORZATO-CART       PIC X.
000740          02 DESC-CART           PIC X(25).
000750
000760          02 COD-ERRORE-CART     PIC 99.
000770*
000780* LEGENDA CODICI ERRORI
000790*
000800* 00     =giornata elaborata correttamente
000810* 01     =manca la timbratura di ENTRATA o USCITA
000820* 02     =sequenza errata (doppia entrata)
000830* 03     =sequenza errata (doppia uscita)
000840* 04     =causale non presente in archivio
000850* 05     =sequenza errata su causale tipo 2 (U/E,Ent.Post,Usc.Ant)
000860* 06     =sequenza errata su causale tipo 4  (E/U,Ent.Ant, Usc.Pos)
000870* 07     =codice orario non presente o pianificazione errata
000880* 08     =sequenza errata su causale tipo 3) (ENTRATA USCITA)
000890* 09     =Ent./Usc. posticipata fuori orario
000900* 10     =turno non assegnato
000910* 11     =entrata anticipata non autorizzata
000920* 12     =Doppia entrata orario normale
000930* 13     =uscita con causale errata
000940* 14     =incongruenza nei conteggi (ORE > 24)
000950* 15     =causale di orario normale non ammessa
000960* 16     =incongruenza sequenza tipi causale
000970* 17     =assenza di timbrature o giustificativi
000980* 18     =codice orario su profilo errato o mancante
000990* 99     =Non sono stati eseguiti i conteggi
001000
001010*
001020* LEGENDA NOTE DOCUMENTATIVE
001030*
001040* 00     =giornata elaborata correttamente
001050* 01     =azzerato credito su entrata anticipata
001060* 02     =condonato debito su entrata/uscita posticipata
001070* 03     =applicata flessibilita dall'entrata anticipata
001080* 04     =applicata flessibilita' dall'entrata posticipata
001090* 05     =orario fuori profilo....
001100* 06     =errore interno rilevazione
001110* 07     =cod.assenza su dovuto = zero
001120* 08     =conteggi forzati da terminale
001130* 09     =orario normale fuori profilo (azzerato)
001140* 10     =sequenza timbrature ignorata
001150* 11     =orario continuato su art. (autoinserito rientro)
001160* 12     =Impossibile determinare il turno del dipendente
001170
001180
001190          02 COD-NOTA-CART       PIC 99.
001200*
001210** dettaglio indennita notturna, festive, nott+fest.
001220*
001230          02 INDENNITA-CART.
001240           05 IND-DIU-CART.
001250            09 ORE-IND-DIU-CART PIC 99.
001260            09 MIN-IND-DIU-CART PIC 99.
001270           05 I-DIU-CART REDEFINES IND-DIU-CART PIC 9(4).
001280           05 MINUTI-DIU-CART   PIC S9(9) COMP-5.
001290           05 IND-NOT-CART.
001300            09 ORE-IND-NOT-CART PIC 99.
001310            09 MIN-IND-NOT-CART PIC 99.
001320           05 I-NOT-CART REDEFINES IND-NOT-CART PIC 9(4).
001330           05 MINUTI-NOT-CART   PIC S9(9) COMP-5.
001340           05 IND-FES-CART.
001350            09 ORE-IND-FES-CART PIC 99.
001360            09 MIN-IND-FES-CART PIC 99.
001370           05 I-FES-CART REDEFINES IND-FES-CART PIC 9(4).
001380           05 MINUTI-FES-CART   PIC S9(9) COMP-5.
001390           05 IND-NOF-CART.
001400            09 ORE-IND-NOF-CART PIC 99.
001410            09 MIN-IND-NOF-CART PIC 99.
001420           05 I-NOF-CART REDEFINES IND-NOF-CART PIC 9(4).
001430           05 MINUTI-NOF-CART   PIC S9(9) COMP-5.
001440          02 COD-TURNO-CART     PIC X(05).
001450          02 TIPO-TURNO-CART    PIC X(01).
001460          02 MESE-PREC-CART     PIC X(01).
001460          02 FILLER             PIC X.
001470          02 APPLICA-MENSA-CART PIC X.
001470          02 MENSA-CART         PIC X.
001480          02 NUM-TURNO-CART     PIC 99.
001490          02 UTENTE-CART        PIC X(6).
001500          02 DATA-UTENTE-CART.
001510            09 AA-UTENTE-CART   PIC 9999.
001520            09 MM-UTENTE-CART   PIC 9999.
001530            09 GG-UTENTE-CART   PIC 9999.
001540          02 COMPL-CART         PIC X.
001550          02 ORARIO-BASE-CART   PIC X(05).
001560          02 BASE-DOVUTO-CART.
001570             09 BASE-ORE-DOV-CART PIC 99.
001580             09 BASE-MIN-DOV-CART PIC 99.
001590          02 BASE-DOV-CART REDEFINES BASE-DOVUTO-CART PIC 9(4).
001600          02 BASE-MINUTI-DOV-CART PIC S9(9) COMP-5.
                02 CAUS-ASS-CART      PIC 999.
                02 ORARIO-FORZ-CART   PIC X(05).
                02 COD-IND-CART       PIC X(06).
                02 ORE-AGG-CART       PIC S9(9) COMP-5.
                02 ORARIO-AGG-CART.
                  09 ORA-AGG-CART     PIC 99.
                  09 MIN-AGG-CART     PIC 99.
001610          02 FILLER             PIC X(19).
001620          02 CHIAVE-SEC-CART.
001630            09 DATA-SEC-CART    PIC 9(8).
001640            09 ERRORE-SEC-CART  PIC 99.
001240          02 IND-TURNO-CART.
001250            09 ORE-IND-TUR-CART PIC 99.
001260            09 MIN-IND-TUR-CART PIC 99.
001270          02 I-TUR-CART REDEFINES IND-TURNO-CART PIC 9(4).
001280          02 MINUTI-TUR-CART    PIC S9(9) COMP-5.
                02 DEB-PER-MESE-PREC-CART.
000580           05 DEBITO1-CART.
000590             09 ORE-DEB1-CART    PIC 99.
000600             09 MIN-DEB1-CART    PIC 99.
000610           05 DEB1-CART          REDEFINES DEBITO1-CART PIC 9(4).
000620           05 MINUTI-DEB1-CART   PIC S9(9) COMP-5.
000210          02 ORARI-CART.
000220             07 ORARIO-ORA-CART OCCURS 2 TIMES.
000230               09 ENTRATA-ORA-CART    PIC 9999.
000240               09 MINUTI-ENT-ORA-CART PIC S9(9) COMP-5.
000250               09 USCITA-ORA-CART     PIC 9999.
000260               09 MINUTI-USC-ORA-CART PIC S9(9) COMP-5.
                02 LAVORO-PREC-CART    PIC 9999.
                02 SW-PREC-CART        PIC X.
001650          02 FILLER             PIC X(203).

001660  66 G-CART                     RENAMES GIORNO-CART.
001670  66 T-CART                     RENAMES TURNO-CART.
001680

000010*
000020** tracciato archivio presenze accumuli
000030*
000040  FD ARKCAUS LABEL RECORD IS STANDARD GLOBAL
000050             RECORD CONTAINS 1024 CHARACTERS.
000060
000070  01 CAUSALE.
000080     02 CHIAVE-CAUS.
000090      05 PROG-CAUS               PIC 999.
000100     02 DESC-CAUS                PIC X(30).
000110     02 CAUS-COMP-CAUS           PIC 999.
000120     02 WEB-CAUS                 PIC X.
000130     02 ARC-CAUS                 PIC X.
000140     02 CAT-CAUS                 PIC 999.
000150     02 CHIAVE-SEC-CAUS.
000160      05 CAT-SEC-CAUS            PIC 999.
000170      05 PROG-SEC-CAUS           PIC 999.
000180     02 PARAMETRI-CAUS.
000190       05 PAR-CAUS               PIC X OCCURS 20 TIMES.
000200
000210     02 NOMI-PAR-CAUS REDEFINES PARAMETRI-CAUS.
000220
000230*
000240* TIPO-CAUS     : valori  ammessi 1,2
000250*
000260* Specifica il tipo di causale
000270*
000280* 1= -la causale e' di assenza-
000290* 2= -la causale e' di presenza-
000300* 3= -la causale e' di presenza 1/2 GIORNATA  (non usato)
000310* 4= -la causale e' FIGURATIVA
000320
000330      05 TIPO-CAUS               PIC X.
000340*
000350* TIPO-CONT-CAUS: valori  ammessi 1,2,3,4
000360*
000370* Specifica il trattamento da operare per i conteggi sulle presenze /caus.
000380*
000390* 1= -la causale e' di assenza-
000400*
000410* 2= -entrata posticipata-
000420*      per conteggiare la presenza associata a timbratura in Entrata
000430*      posticipata a quel titolo. Il conteggio parte dall'Entrata teorica
000440*      fino a quella da terminale es:entrata 9:00 servizio (8:00-9:00 servizio)
000450*      (si applica alla prima causale in entrata diversa da <>0
000460*      -uscita anticipata-
000470*      per conteggiare l'uscita anticipata associata a timbratura in uscita
000480*      a quel titolo. Il conteggio parte dall'uscita effettiva fino a quella
000490*      teorica (ES:servizio 13:00 considera 13:00+14:00 servizio)
000500*      (si applica all'ultima causale in uscita diversa da <>0
000510*      -coppie Uscita/Entrata-
000520*      per conteggiare coppie di timbrature in ordine Uscita/Entrata
000530*      a quel titolo il tempo intercorso.
000540*      nel caso in cui la timbratura non sia la prima dell'inizio turno
000550*      la timbratura deve sempre iniziare in USCITA
000560*
000570* 3= -Conteggio Entrata /Uscita
000580*     per conteggiare coppie di timbrature in ordine Entrata/Uscita
000590*
000600* 4= -entrata anticipata-      ENTRA-PRIMA ENTRA-ESCE ESCE-DOPO
000610*     Inizio da straord. prima orario lavoro es:07:14 07:14-08:00 =straor.
000620*     -uscita posticipata
000630*     uscita da straord. dopo orario lavoro es:18:14 (18:00+18:14=straord)
000640*     -coppie Entrata Uscita
000650*      per conteggiare coppie di timbrature in ordine Entrata/Uscita
000660*      a quel titolo il tempo intercorso.
000670*
000680* 5= -Conteggio manuale
000690*     per conteggiare coppie di timbrature in ordine Entrata/Uscita
000700       05 TIPO-CONT-CAUS         PIC 9.
000710
000720*
000730* TRAT-FEST-CAUS: valori  ammessi 0,1,2 3
000740*
000750* Specifica il trattamento da operare in caso di assenza su festivo
000760*
000770* 1= -la causale e' di presenza
000780* 2= -non influenza conteggi e giorni assenza (ferie)
000790* 3= -esegue conteggio orario e dei giorni (malattia di turnista su
000800*     giorno festivo coincidente con riposo...
000810* 4=  influenza solo i giorni    (aspettativa per malattia)
000820*
000830       05 TRAT-FEST-CAUS         PIC 9.
000840
000850*
000860* VAL-ASS-CAUS   : valori  ammessi 0,1,2 3
000870*
000880* Specifica il valore da assegnare alla causale per le assenze
000890*
000900* 1= -la causale e' di presenza
000910* 2= -monte ore/settimanale/gg.lavorativi da contratto
000920* 3= -dovuto del giorno
000930* 4= -nessun valore (riposo su giornata diurna, riposo da recuperare
000940* 5= -monte ore settimanale / 6
000950* 6= -valore specificato manualmente
000960*
000970
000980       05 VAL-ASS-CAUS           PIC 9.
000990
001000*
001010* ASS-CONT-CAUS  : valori  ammessi 0,1,2,3
001020*
001030* Specifica i conteggi da eseguire con le causali di assenza
001040*
001050* 1= -la causale e' di presenza
001060* 2= -aumenta le ore lavorate
001070* 3= -nessuna valorizzazione  (da usare anche se VAL-ASS-CAUS = 4
001080* 4= -decrementa le ore lavorate
001090*
001100       05 ASS-CONT-CAUS          PIC 9.
001110
001120*
001130* RIP-CONT-CAUS  : valori ammessi  0,1,2,3
001140*
001150* Specifica il tipo di ripartizione da operare per le causali
001160*
001170* 1=la causale e' di assenza
001180* 2=nessuna ripartizione
001190* 3=ripartizione in feriale,Notturno,festivo+notturno
001200* 4=ripartizione solo su indennita'
001210*
001220*
001230       05 RIP-CONT-CAUS          PIC 9.
001240
001250*
001260* CONSIDERA-CAUS: valori ammessi 1,2,3,4
001270* specifica se i conteggi delle timbrature con la causale devono
001280* essere considerati nelle ore lavorative
001290*
001300* 1=la causale e' di assenza
001310* 2=esclusione dalle ore di lavoro normali
001320* 3=somma nelle ore di lavoro
001330* 4=sottrae delle ore di lavoro
001340*
001350       05 CONSIDERA-CAUS         PIC 9.
001360*
001370* GIORNI-ASS-CAUS   : valori ammessi 1,2,3
001380* specifica per le assenze da....a come quali giorni considerare per
001390* l'attribuzione dell'assenza..
001400*
001410* 1=la causale e' di presenza
001420* 2=considera tutta la settimana
001430* 3=considera solo i lavorativi
001440* 4=considera i lavorativi su sett. 6 gg.
001450*
001460       05 GIORNI-ASS-CAUS        PIC 9.
001470
001480       05 FILLER                 PIC 9.
001490       05 FILLER                 PIC 9.
001500     02 FILLER                   PIC X(02).
001510     02 BRUNETTA-CAUS            PIC X.
001520     02 USA-COMP-CAUS            PIC X.
001530     02 SCRIVI1-CAUS             PIC XXX.
001540     02 AUTORIZZA-CAUS           PIC X.
001550     02 DOC-CAUS                 PIC X.
001560     02 EMENS-CAUS               PIC X.
001570     02 GIUST-CAUS               PIC X.
001580     02 SCRIVI-CAUS              PIC XXX.
001590     02 AZZERA-CAUS              PIC X.
001600     02 GRUPPO-CAUS              PIC 9.
001610     02 FLESS-CAUS               PIC X.
001620     02 CONTO-CAUS               PIC 9.
001630     02 COMPENSADEB-CAUS         PIC X.
001640     02 ECCEDENZA-CAUS           PIC 999.
001650     02 COMPENSA-CAUS            PIC X.
001660     02 NOFASCIA-CAUS            PIC X.
001670     02 INDENNITA1-CAUS          PIC X.
001680     02 GIUSTIFICA-CAUS          PIC X.
001690     02 CESSATA-CAUS             PIC X.
001700     02 COLLEGA-CAUS             PIC X.
001710     02 NOPAGHE-CAUS             PIC X.
001720     02 INDENNITA-CAUS           PIC X.
001730     02 ICO-CAUS                 PIC 999.
001740     02 MESE-PREC-CAUS           PIC X.
001750     02 SW-MAX-CAUS              PIC X.
001760     02 SOST-CAUS                PIC 999.
001770     02 TIPO-MAX-CAUS            PIC X.
001780     02 USA-LIQ-CAUS             PIC X.
001790     02 USA-MENSA-CAUS           PIC X.
001800     02 USA-REC-CAUS             PIC X.
001810     02 GG-MAX-CAUS              PIC 999.
001820     02 VALORE-ASS-CAUS          PIC 9999.
001830     02 MASSIMO-CAUS.
001840       09 ORA-MAX-CAUS           PIC 99.
001850       09 MIN-MAX-CAUS           PIC 99.
001860     02 ORE-MAX-CAUS REDEFINES MASSIMO-CAUS PIC 9(4).
001870     02 MINIMO-CAUS.
001880       09 ORA-MIN-CAUS           PIC 99.
001890       09 MIN-MIN-CAUS           PIC 99.
001900     02 ORE-MIN-CAUS REDEFINES MINIMO-CAUS PIC 9(4).
001910     02 AUT-CAUS                 PIC X.
001920     02 STAMPA-CAUS              PIC X.
001930     02 FILLER-CAUS              PIC X.
001940     02 NATURA-CAUS              PIC X.
001950     02 DETT-CAUS                PIC X.
001960     02 USA-SALDO-CAUS           PIC X.
001970
001980*
001990* = tipo I= incrementa il saldo con il fruito
002000* =      D= decrementa il fruito dallo spettante
002010*
002020     02 TIPO-SALD-CAUS           PIC X.
002030     02 FLAG-MIN-CAUS            PIC X.
002040     02 SIGLA-CAUS               PIC X(06).
002050
002060*
002070* natura voce=?
002080*
002090* 1-LAVORO
002100* 2-STRAORDINARIO
002110* 3-FERIE
002120* 4-MALATTIA
002130* 5-TRASFERTA
002140* 6-RECUPERI
002150* 7-SCIOPERO
002160* 8-ALTRO
002170*
002180
002190    02 FILLER-CAUS               PIC X(886).
002200
002210

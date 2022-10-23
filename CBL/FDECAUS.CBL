      *
      ** tracciato archivio presenze accumuli
      *
        FD ARKCAUS LABEL RECORD IS STANDARD GLOBAL
                   RECORD CONTAINS 128 CHARACTERS.

        01 CAUSALE.
           02 CHIAVE-CAUS.
            05 PROG-CAUS               PIC 999.
           02 DESC-CAUS                PIC X(30).
           02 CAUS-COMP-CAUS           PIC 999.
           02 WEB-CAUS                 PIC X(1).
           02 ARC-CAUS                 PIC X.
           02 CAT-CAUS                 PIC 999.
           02 CHIAVE-SEC-CAUS.
            05 CAT-SEC-CAUS            PIC 999.
            05 PROG-SEC-CAUS           PIC 999.
           02 PARAMETRI-CAUS.
             05 PAR-CAUS               PIC 9 OCCURS 10 TIMES.

           02 NOMI-PAR-CAUS REDEFINES PARAMETRI-CAUS.

      *
1)    * TIPO-CAUS     : valori  ammessi 1,2
      *
      * Specifica il tipo di causale
      *
      * 1= -la causale e' di assenza-
      * 2= -la causale e' di presenza-
      * 3= -la causale e' di presenza 1/2 GIORNATA
      * 4= -la causale e' FIGURATIVA

            05 TIPO-CAUS               PIC 9.
      *
2)    * TIPO-CONT-CAUS: valori  ammessi 1,2,3,4
      *
      * Specifica il trattamento da operare per i conteggi sulle presenze /caus.
      *
      * 1= -la causale e' di assenza-
      *
      * 2= -entrata posticipata-
      *      per conteggiare la presenza associata a timbratura in Entrata
      *      posticipata a quel titolo. Il conteggio parte dall'Entrata teorica
      *      fino a quella da terminale es:entrata 9:00 servizio (8:00-9:00 servizio)
      *      (si applica alla prima causale in entrata diversa da <>0
      *      -uscita anticipata-
      *      per conteggiare l'uscita anticipata associata a timbratura in uscita
      *      a quel titolo. Il conteggio parte dall'uscita effettiva fino a quella
      *      teorica (ES:servizio 13:00 considera 13:00+14:00 servizio)
      *      (si applica all'ultima causale in uscita diversa da <>0
      *      -coppie Uscita/Entrata-
      *      per conteggiare coppie di timbrature in ordine Uscita/Entrata
      *      a quel titolo il tempo intercorso.
      *      nel caso in cui la timbratura non sia la prima dell'inizio turno
      *      la timbratura deve sempre iniziare in USCITA
      *
      * 3= -Conteggio Entrata /Uscita
      *     per conteggiare coppie di timbrature in ordine Entrata/Uscita
      *
      * 4= -entrata anticipata-      ENTRA-PRIMA ENTRA-ESCE ESCE-DOPO
      *     Inizio da straord. prima orario lavoro es:07:14 07:14-08:00 =straor.
      *     -uscita posticipata
      *     uscita da straord. dopo orario lavoro es:18:14 (18:00+18:14=straord)
      *     -coppie Entrata Uscita
      *      per conteggiare coppie di timbrature in ordine Entrata/Uscita
      *      a quel titolo il tempo intercorso.
      *
      * 5= -Conteggio manuale
      *     per conteggiare coppie di timbrature in ordine Entrata/Uscita
             05 TIPO-CONT-CAUS         PIC 9.

      *
 3)   * TRAT-FEST-CAUS: valori  ammessi 0,1,2 3
      *
      * Specifica il trattamento da operare in caso di assenza su festivo
      *
      * 1= -la causale e' di presenza
      * 2= -non influenza conteggi e giorni assenza (ferie)
      * 3= -esegue conteggio orario e dei giorni (malattia di turnista su
      *     giorno festivo coincidente con riposo...
      * 4=  influenza solo i giorni    (aspettativa per malattia)
      *
             05 TRAT-FEST-CAUS         PIC 9.

      *
 4)   * VAL-ASS-CAUS   : valori  ammessi 0,1,2 3
      *
      * Specifica il valore da assegnare alla causale per le assenze
      *
      * 1= -la causale e' di presenza
      * 2= -monte ore/settimanale/gg.lavorativi da contratto
      * 3= -dovuto del giorno
      * 4= -nessun valore (riposo su giornata diurna, riposo da recuperare
      * 5= -monte ore settimanale / 6
      * 6= -valore specificato manualmente
      *

             05 VAL-ASS-CAUS           PIC 9.

      *
 5)   * ASS-CONT-CAUS  : valori  ammessi 0,1,2,3
      *
      * Specifica i conteggi da eseguire con le causali di assenza
      *
      * 1= -la causale e' di presenza
      * 2= -aumenta le ore lavorate
      * 3= -nessuna valorizzazione  (da usare anche se VAL-ASS-CAUS = 4
      * 4= -decrementa le ore lavorate
      *
             05 ASS-CONT-CAUS          PIC 9.

      *
 6)   * RIP-CONT-CAUS  : valori ammessi  0,1,2,3
      *
      * Specifica il tipo di ripartizione da operare per le causali
      *
      * 1=la causale e' di assenza
      * 2=nessuna ripartizione
      * 3=ripartizione in feriale,Notturno,festivo+notturno
      * 4=ripartizione solo su indennita'
      *
      *
             05 RIP-CONT-CAUS          PIC 9.

      *
 7)   * CONSIDERA-CAUS: valori ammessi 1,2,3,4
      * specifica se i conteggi delle timbrature con la causale devono
      * essere considerati nelle ore lavorative
      *
      * 1=la causale e' di assenza
      * 2=esclusione dalle ore di lavoro normali
      * 3=somma nelle ore di lavoro
      * 4=sottrae delle ore di lavoro
      *
             05 CONSIDERA-CAUS         PIC 9.
      *
 8)   * GIORNI-ASS-CAUS   : valori ammessi 1,2,3
      * specifica per le assenze da....a come quali giorni considerare per
      * l'attribuzione dell'assenza..
      *
      * 1=la causale e' di presenza
      * 2=considera tutta la settimana
      * 3=considera solo i lavorativi
      * 4=considera i lavorativi su sett. 6 gg.
      *
             05 GIORNI-ASS-CAUS        PIC 9.

             05 FILLER                 PIC 9.
             05 FILLER                 PIC 9.
           02 FILLER                   PIC X(02).
           02 BRUNETTA-CAUS            PIC X.
           02 USA-COMP-CAUS            PIC X.
           02 SCRIVI1-CAUS             PIC XXX.
           02 AUTORIZZA-CAUS           PIC X.
           02 DOC-CAUS                 PIC X.
           02 EMENS-CAUS               PIC X.
           02 GIUST-CAUS               PIC X.
           02 SCRIVI-CAUS              PIC XXX.
           02 AZZERA-CAUS              PIC X.
           02 GRUPPO-CAUS              PIC 9.
           02 FLESS-CAUS               PIC X.
           02 CONTO-CAUS               PIC 9.
           02 COMPENSADEB-CAUS         PIC X.
           02 ECCEDENZA-CAUS           PIC 999.
           02 COMPENSA-CAUS            PIC X.
           02 NOFASCIA-CAUS            PIC X.
           02 INDENNITA1-CAUS          PIC X.
           02 GIUSTIFICA-CAUS          PIC X.
           02 CESSATA-CAUS             PIC X.
           02 COLLEGA-CAUS             PIC X.
           02 NOPAGHE-CAUS             PIC X.
           02 INDENNITA-CAUS           PIC X.
           02 ICO-CAUS                 PIC 999.
           02 MESE-PREC-CAUS           PIC X.
           02 SW-MAX-CAUS              PIC X.
           02 SOST-CAUS                PIC 999.
           02 TIPO-MAX-CAUS            PIC X.
           02 USA-LIQ-CAUS             PIC X.
           02 USA-MENSA-CAUS           PIC X.
           02 USA-REC-CAUS             PIC X.
           02 GG-MAX-CAUS              PIC 999.
           02 VALORE-ASS-CAUS          PIC 9999.
           02 MASSIMO-CAUS.
             09 ORA-MAX-CAUS           PIC 99.
             09 MIN-MAX-CAUS           PIC 99.
           02 ORE-MAX-CAUS REDEFINES MASSIMO-CAUS PIC 9(4).
           02 MINIMO-CAUS.
             09 ORA-MIN-CAUS           PIC 99.
             09 MIN-MIN-CAUS           PIC 99.
           02 ORE-MIN-CAUS REDEFINES MINIMO-CAUS PIC 9(4).
           02 AUT-CAUS                 PIC X.
           02 STAMPA-CAUS              PIC X.
           02 SIGLA-CAUS               PIC X.
           02 NATURA-CAUS              PIC X.
           02 DETT-CAUS                PIC X.
           02 USA-SALDO-CAUS           PIC X.

      *
      * = tipo I= incrementa il saldo con il fruito
      * =      D= decrementa il fruito dallo spettante
      *
           02 TIPO-SALD-CAUS           PIC X.
           02 FLAG-MIN-CAUS            PIC X.
           02 BREVE-CAUS               PIC X(06).

      *
      * natura voce=?
      *
      * 1-LAVORO
      * 2-STRAORDINARIO
      * 3-FERIE
      * 4-MALATTIA
      * 5-TRASFERTA
      * 6-RECUPERI
      * 7-SCIOPERO
      * 8-ALTRO
      *





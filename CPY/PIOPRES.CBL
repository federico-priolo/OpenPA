

      *
      * OPERAZIONI DI I-O SULL'ARCHIVIO PRESIFICATIVI
      *
        OPEN-I-PRES.

                PERFORM PREPARO-PRES.
                MOVE ZEROS      TO STATUS-PRES.
                OPEN INPUT ARKPRES.
                IF STATUS-PRES NOT = ZEROS
                 PERFORM ERRORE-PRES THRU EX-ERRORE-PRES
                 CLOSE ARKPRES
                 GO TO OPEN-I-PRES.
        EX-OPEN-I-PRES.
                EXIT.
      *
      ***
      *
        OPEN-IO-PRES.

                PERFORM PREPARO-PRES.
                MOVE ZEROS      TO STATUS-PRES.
                OPEN I-O ARKPRES.
                IF STATUS-PRES NOT = ZEROS
                 PERFORM ERRORE-PRES THRU EX-ERRORE-PRES
                 CLOSE ARKPRES
                 GO TO OPEN-IO-PRES.
        EX-OPEN-IO-PRES.
                EXIT.

        CLOSE-PRES.
                CLOSE ARKPRES.
        EX-CLOSE-PRES.
                EXIT.

        ERRORE-PRES.

                STRING "ERRORE SU " DELIMITED BY SIZE
                FILE-PRES DELIMITED BY "   "
                " STATO:" STATUS-PRES
                  DELIMITED BY  SIZE INTO MESSAGGIO
                PERFORM VIS-MESS        THRU EX-VIS-MESS.

        EX-ERRORE-PRES.
                EXIT.
      *
      ***
      *
        PREPARO-PRES.

   
                IF PATH-WEB = SPACE
                MOVE "FILES/ARKPRES"  TO FILE-PRES
                 ELSE
                MOVE SPACES           TO FILE-PRES
                
                STRING PATH-WEB DELIMITED BY "  "
                  "ARKPRES" DELIMITED BY SIZE INTO FILE-PRES.
001710             
        EX-PREPARO-PRES.
                EXIT.

      *
      ***
      *
        STARTO-PRES.
                MOVE "SI"       TO ESITO.
                MOVE ZEROS      TO PROG-PRES.
                START ARKPRES KEY IS NOT < CHIAVE-PRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.
        EX-STARTO-PRES.
                EXIT.
      *
      ***
      *
        STARTO-SEC-PRES.


                MOVE "SI"       TO ESITO.
                START ARKPRES KEY IS NOT < CHIAVE-SEC-PRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

        EX-STARTO-SEC-PRES.
                EXIT.
      *
      ***
      *
        STARTO-CAUS-PRES.
                MOVE "SI"       TO ESITO.
                START ARKPRES KEY IS NOT < CHIAVE-CAUS-PRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.
        EX-STARTO-CAUS-PRES.
                EXIT.
      *
      ***
      *
        LEGGO-NEXT-PRES.
                MOVE         "N"     TO FINE-FILE.
                READ ARKPRES NEXT RECORD  NO LOCK
                 AT END MOVE "S"     TO FINE-FILE.
        EX-LEGGO-NEXT-PRES.
                EXIT.

        LEGGO-PREV-PRES.
                MOVE         "N"     TO FINE-FILE.
                READ ARKPRES PREVIOUS RECORD  NO LOCK
                 AT END MOVE "S"     TO FINE-FILE.
        EX-LEGGO-PREV-PRES.
                EXIT.
      *
      ***
      *
        LEGGO-PRES.
                MOVE "SI"       TO ESITO.
                READ ARKPRES KEY IS CHIAVE-PRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-PRES = LOCK-STATUS
                 MOVE "Record presenza in uso presso altro terminale"
                  TO MESSAGGIO
                  PERFORM VIS-MESS     THRU EX-VIS-MESS
                   GO TO LEGGO-PRES.

                IF STATUS-PRES(1:1) > "2"
                 PERFORM ERRORE-PRES  THRU EX-ERRORE-PRES.

        EX-LEGGO-PRES.
                EXIT.

        LEGGO-NL-PRES.

                MOVE "SI"       TO ESITO.
                READ ARKPRES WITH NO LOCK KEY IS CHIAVE-PRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-PRES(1:1) > "2"
                 PERFORM ERRORE-PRES  THRU EX-ERRORE-PRES.

        EX-LEGGO-NL-PRES.
                EXIT.
      *
      ***
      *
        SCRIVO-PRES.

                MOVE DATA-PRES         TO DATA-SEC-PRES.
                MOVE ORARIO-PRES       TO ORARIO-SEC-PRES.
                MOVE DIP-PRES          TO DIP-SEC-PRES.

                MOVE "SI"       TO ESITO.
                WRITE PRESENZA
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-PRES(1:1) > "2"
                 PERFORM ERRORE-PRES  THRU EX-ERRORE-PRES.

        EX-SCRIVO-PRES.
                EXIT.
      *
      ***
      *
        AGGIORNO-PRES.

                MOVE DATA-PRES         TO DATA-SEC-PRES.
                MOVE ORARIO-PRES       TO ORARIO-SEC-PRES.
                MOVE DIP-PRES          TO DIP-SEC-PRES.

                MOVE "SI"       TO ESITO.
                REWRITE PRESENZA
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-PRES(1:1) > "2"
                 PERFORM ERRORE-PRES  THRU EX-ERRORE-PRES.

        EX-AGGIORNO-PRES.
                EXIT.
      *
      ***
      *
        CANCELLO-PRES.
                MOVE "SI"       TO ESITO.
                DELETE ARKPRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.
        EX-CANCELLO-PRES.
                EXIT.

      *
        LEGGO-CAUS-PRES.

                MOVE "SI"       TO ESITO.
                READ ARKPRES KEY IS CHIAVE-CAUS-PRES
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-PRES = LOCK-STATUS
                 MOVE "Record in uso presso altro terminale"
                  TO MESSAGGIO
                  PERFORM VIS-MESS     THRU EX-VIS-MESS
                   GO TO LEGGO-CAUS-PRES.

                IF STATUS-PRES(1:1) > "2"
                 PERFORM ERRORE-PRES  THRU EX-ERRORE-PRES.

        EX-LEGGO-CAUS-PRES.
                EXIT.

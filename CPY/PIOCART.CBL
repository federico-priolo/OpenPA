


      *
      * OPERAZIONI DI I-O SULL'ARCHIVIO CARTIFICATIVI
      *
        OPEN-I-CART.

                PERFORM PREPARO-CART.
                MOVE ZEROS      TO STATUS-CART.
                OPEN INPUT ARKCART.
                IF STATUS-CART NOT = ZEROS
                 PERFORM ERRORE-CART THRU EX-ERRORE-CART
                 CLOSE ARKCART
                 GO TO OPEN-I-CART.
        EX-OPEN-I-CART.
                EXIT.
      *
      ***
      *
        OPEN-IO-CART.

                PERFORM PREPARO-CART.
                MOVE ZEROS      TO STATUS-CART.
                OPEN I-O ARKCART.
                IF STATUS-CART NOT = ZEROS
                 PERFORM ERRORE-CART THRU EX-ERRORE-CART
                 CLOSE ARKCART
                 GO TO OPEN-IO-CART.
        EX-OPEN-IO-CART.
                EXIT.

        ERRORE-CART.
  
                STRING "ERRORE SU " DELIMITED BY SIZE
                FILE-CART DELIMITED BY "   "
                " STATO:" STATUS-CART
                DELIMITED BY  SIZE INTO MESSAGGIO
                PERFORM VIS-MESS        THRU EX-VIS-MESS.
    
        EX-ERRORE-CART.
                EXIT.
      *
      ***
      *
        PREPARO-CART.

                IF PATH-WEB = SPACE
                MOVE "FILES/ARKCART"  TO FILE-CART
                 ELSE
                MOVE SPACES           TO FILE-CART
                
                STRING PATH-WEB DELIMITED BY "  "
                  "ARKCART" DELIMITED BY SIZE INTO FILE-CART.


        EX-PREPARO-CART.
                EXIT.

      *
      ***
      *
        STARTO-CART.
                MOVE "SI"       TO ESITO.
                START ARKCART KEY IS NOT < CHIAVE-CART
                 INVALID KEY
                 MOVE "NO"      TO ESITO.
        EX-STARTO-CART.
                EXIT.
        STARTO-SEC-CART.
                MOVE "SI"       TO ESITO.
                START ARKCART KEY IS NOT < CHIAVE-SEC-CART
                 INVALID KEY
                 MOVE "NO"      TO ESITO.
        EX-STARTO-SEC-CART.
                EXIT.
      *
      ***
      *
        LEGGO-NEXT-CART.


                MOVE         "N"     TO FINE-FILE.
                READ ARKCART NEXT RECORD  NO LOCK
                 AT END MOVE "S"     TO FINE-FILE.
        EX-LEGGO-NEXT-CART.
                EXIT.
      *
      ***
      *
        LEGGO-CART.

                MOVE "SI"       TO ESITO.
                READ ARKCART KEY IS CHIAVE-CART
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-CART = LOCK-STATUS
                 MOVE "Record cartellino in uso presso altro terminale"
                  TO MESSAGGIO
                  PERFORM VIS-MESS     THRU EX-VIS-MESS
                   GO TO LEGGO-CART.

                IF STATUS-CART(1:1) > "2"
                 PERFORM ERRORE-CART  THRU EX-ERRORE-CART.

        EX-LEGGO-CART.
                EXIT.
      *
      ***
      *
        SCRIVO-CART.


                MOVE SPACES            TO SW-PREC-CART.

                IF LAVORO-PREC-CART NOT = LAVORO-CART
                  AND LAVORO-PREC-CART > ZEROS
                    MOVE "^"           TO SW-PREC-CART.

                MOVE LAVORO-CART       TO LAVORO-PREC-CART.

                MOVE DATA-CART         TO DATA-SEC-CART.
                MOVE COD-ERRORE-CART   TO ERRORE-SEC-CART.

                IF COD-ERRORE-CART = ZEROS OR = 99
                MOVE ZEROS             TO DATA-SEC-CART.

                MOVE "SI"       TO ESITO.
                WRITE CARTELLINO
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-CART(1:1) > "2"
                 PERFORM ERRORE-CART  THRU EX-ERRORE-CART.

        EX-SCRIVO-CART.
                EXIT.
      *
      ***
      *
        AGGIORNO-CART.


                MOVE SPACES            TO SW-PREC-CART.

                IF LAVORO-PREC-CART NOT = LAVORO-CART
                  AND LAVORO-PREC-CART > ZEROS
                    MOVE "^"           TO SW-PREC-CART.

                MOVE LAVORO-CART       TO LAVORO-PREC-CART.

                MOVE DATA-CART         TO DATA-SEC-CART.
                MOVE COD-ERRORE-CART   TO ERRORE-SEC-CART.

                IF COD-ERRORE-CART = ZEROS OR = 99
                MOVE ZEROS             TO DATA-SEC-CART.

                MOVE "SI"       TO ESITO.
                REWRITE CARTELLINO
                 INVALID KEY
                 MOVE "NO"      TO ESITO.

                IF STATUS-CART(1:1) > "2"
                 PERFORM ERRORE-CART  THRU EX-ERRORE-CART.

        EX-AGGIORNO-CART.
                EXIT.
      *
      ***
      *
        CANCELLO-CART.
                MOVE "SI"       TO ESITO.
                DELETE ARKCART
                 INVALID KEY
                 MOVE "NO"      TO ESITO.
        EX-CANCELLO-CART.
                EXIT.

        CLOSE-CART.
                CLOSE ARKCART.
        EX-CLOSE-CART.
                EXIT.
      *
      ** tracciato archivio presenze mese
      *
        FD ARKPRES LABEL RECORD IS STANDARD GLOBAL.

      *            RECORD CONTAINS 64  CHARACTERS.

        01 PRESENZA.

                02 CHIAVE-PRES.
                 05 ENTE-PRES          PIC 99.
                 05 DIP-PRES           PIC 9(7).
                 05 DATA-PRES.
                    09 AA-PRES         PIC 9999.
                    09 MM-PRES         PIC 99.
                    09 GG-PRES         PIC 99.
                 05 ORARIO-PRES.
                  09 ORA-PRES          PIC 99.
                  09 MIN-PRES          PIC 99.
                 05 ORE-PRES           REDEFINES ORARIO-PRES PIC 9(4).
                 05 PROG-PRES          PIC 99.
               02 TIPO-PRES            PIC X.
               02 FLAG-PRES            PIC X.
               02 CHIAVE-CAUS-PRES.
                03 CAUS-PRES           PIC 999.
                03 CHIAVE-SEC-PRES.
                 05 DATA-SEC-PRES      PIC 9(8).
                 05 DIP-SEC-PRES       PIC 9(7).
                 05 ORARIO-SEC-PRES.
                  09 ORA-SEC-PRES      PIC 99.
                  09 MIN-SEC-PRES      PIC 99.
               02 BADGE-PRES           PIC 9(10).
               02 AUTENTICA-PRES       PIC X.
               02 FLAG-AUT-PRES        PIC X.

               02 SW-ERRORE-PRES       PIC X(01).
      *
      * X= la causale non deve essere valorizzata nei conteggi
      * C= considera solo il contatore di n. giorni
      *
      *
               02 STATO-PRES           PIC X(01).
               02 OROLOGIO-PRES        PIC 999.


      *
        FD ARKDATO LABEL RECORD IS STANDARD GLOBAL
                   RECORD CONTAINS 128 CHARACTERS.
        01 DATO.
           02 CHIAVE-DATO.
            05 NOME-DATO                PIC X(08).
           02 FILLER                    PIC X.
           02 NOME-COBOL-DATO           PIC X(30).
           02 FILLER                    PIC X.
           02 ARCHIVIO-DATO             PIC 99.
           02 FILLER                    PIC X.
           02 POS-DATO                  PIC 9999.
           02 FILLER                    PIC X.
           02 SIZE-DATO                 PIC 9999.
           02 FILLER                    PIC X.
           02 TIPO-DATO                 PIC X.
           02 KEY-DATO                  PIC X.
           02 DESC-DATO                 PIC X(70).
           02 SIZERI-DATO               PIC X(01).
           02 FILLER                    PIC X(02).

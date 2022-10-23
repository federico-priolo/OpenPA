        ID DIVISION.
        PROGRAM-ID.     ESTABI.
      *
      * PROGRAMMA PER LA VISUALIZZAZIONE
      *
        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SOURCE-COMPUTER.        PC-IBM.
        OBJECT-COMPUTER.        PC-IBM.
        SPECIAL-NAMES.
                DECIMAL-POINT IS COMMA.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.

                COPY SELABI.

                SELECT FILE2 ASSIGN TO "RM-ABI"
                 ORGANIZATION IS LINE SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.

        FD FILE2 LABEL RECORD IS STANDARD.

        01 REC-FILE2.

          02 DATI            PIC X(256).

                COPY FDEABI.

        WORKING-STORAGE SECTION.
        77      FILE-ABI              PIC X(30)  VALUE "ARKABI".
        77      STATUS-ABI            PIC XX     VALUE "00".
        77      CONFERMA                PIC X.
        77      TASTO                   PIC 99     VALUE ZEROS.
        77      VIS-NUM-7               PIC ZZZZZZZ.
        77      VIS-P                   PIC ZZZ,99 VALUE ZEROS.
        77      VIS-PP                  PIC ZZZ,99 VALUE ZEROS.
        PROCEDURE DIVISION.
        INIZIO.
                OPEN INPUT           ARKABI.
                OPEN OUTPUT          FILE2.
        LEGGO.
                MOVE SPACES  TO ABILITAZIONE REC-FILE2.

                READ ARKABI NEXT AT END GO TO FINE.
                MOVE ABILITAZIONE TO DATI.
                WRITE REC-FILE2.
                GO TO LEGGO.
        FINE.
                CLOSE ARKABI FILE2.
                GOBACK.


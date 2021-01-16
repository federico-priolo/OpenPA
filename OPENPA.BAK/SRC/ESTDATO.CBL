
        ID DIVISION.
        PROGRAM-ID.     ESTDATO.
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

                COPY SELDATO.

                SELECT FILE2 ASSIGN TO "RM-DATO"
                 ORGANIZATION IS LINE SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.

        FD FILE2 LABEL RECORD IS STANDARD.

        01 REC-FILE2.

          02 DATI            PIC X(128).

                COPY FDEDATO.

        WORKING-STORAGE SECTION.
        77      FILE-DATO                PIC X(30)  VALUE "ARKDATO".
        77      STATUS-DATO              PIC XX     VALUE "00".
        77      CONFERMA                PIC X.
        77      TASTO                   PIC 99     VALUE ZEROS.
        77      VIS-NUM-7               PIC ZZZZZZZ.
        77      VIS-P                   PIC ZZZ,99 VALUE ZEROS.
        77      VIS-PP                  PIC ZZZ,99 VALUE ZEROS.
        PROCEDURE DIVISION.
        INIZIO.
                OPEN INPUT           ARKDATO.
                OPEN OUTPUT          FILE2.

                DISPLAY "Conversione ARKDATO in corso . . . ".
        LEGGO.
                READ ARKDATO NEXT AT END GO TO FINE.
                MOVE DATO TO DATI.
                INSPECT DATI REPLACING ALL x"00" BY " ".
                INSPECT DATI REPLACING ALL x"0A" BY " ".
                INSPECT DATI REPLACING ALL x"0D" BY " ".
                
                
                WRITE REC-FILE2.
                GO TO LEGGO.
        FINE.
                CLOSE ARKDATO FILE2.
                GOBACK.


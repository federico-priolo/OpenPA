        IDENTIFICATION DIVISION.
        PROGRAM-ID.     LGTAB1.
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

                COPY SELTAB.

                SELECT FILE2 ASSIGN TO "RM-TAB"
                 ORGANIZATION IS LINE SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.

        FD FILE2 LABEL RECORD IS STANDARD.

        01 REC-FILE2.

           02 DATI-FILE2 PIC X(512).

                COPY FDETAB.

        WORKING-STORAGE SECTION.
        77      FILE-TAB    PIC X(30)  VALUE "ARKTAB".
        77      STATUS-TAB            PIC XX     VALUE "00".
        77      CONFERMA                PIC X.
        77      TASTO                   PIC 99     VALUE ZEROS.
        77      VIS-NUM-7               PIC ZZZZZZZ.
        77      VIS-P                   PIC ZZZ,99 VALUE ZEROS.
        77      VIS-PP                  PIC ZZZ,99 VALUE ZEROS.
        PROCEDURE DIVISION.
        INIZIO.
                DISPLAY  " " AT 0101.
                OPEN INPUT           FILE2.
                OPEN I-O             ARKTAB.
                IF STATUS-TAB NOT = "00"
                DISPLAY "STATO OPEN: " STATUS-TAB
                 GO TO FINE.

        LEGGO.
                MOVE SPACES  TO TABELLA REC-FILE2.

                READ FILE2 NEXT AT END GO TO FINE.

                MOVE DATI-FILE2     TO TABELLA.

                WRITE TABELLA.

                GO TO LEGGO.
        FINE.
                CLOSE ARKTAB FILE2.
                GOBACK.


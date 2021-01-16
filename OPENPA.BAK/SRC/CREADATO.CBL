        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     CREADATO.
      *-----------------------------------------------------------------*
      *                                                                 *
      * (c) 1998 COPYRIGHT T&P SOLUZIONI INFORMATICHE SRC               *
      *                                                                 *
      * COSTRUISCE IL DIZIONARIO PER LA FD SPECIFICATA                  *
      *                                                                 *
      *-----------------------------------------------------------------*
        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SOURCE-COMPUTER.        PC-IBM.
        OBJECT-COMPUTER.        PC-IBM.
        SPECIAL-NAMES.
                DECIMAL-POINT   IS COMMA.

        INPUT-OUTPUT SECTION.
        FILE-CONTROL.

                COPY SELDATO.

        DATA DIVISION.
        FILE SECTION.

                COPY FDEDATO.

        WORKING-STORAGE SECTION.
        77 NUM                         PIC 9(4) BINARY.
        77 W-FILE                      PIC 99  VALUE ZEROS.
        77 CONTA                       PIC 9(6) VALUE ZEROS.
        77 FILE-DATO                    PIC X(20) VALUE "ARKDATO".
        77 STATUS-DATO                  PIC XX VALUE "00".

        77 FINE-FILE                   PIC X.
        77 STATUS-IN                   PIC XX VALUE "00".

        77 CONFERMA                    PIC X.
        77 IND                         PIC 999.
        77 IND1                        PIC 999.
        77 IND2                        PIC 999.
        77 IND3                        PIC 999.
        77 IND4                        PIC 999.

        01 W-NUMERO1.
          02 W-NUM1                    PIC 9.

        01 W-NUMERO2.
          02 W-NUM2                    PIC 99.

        01 FILE-IN                     PIC X(50).

        01 SUFF-FILE                   PIC XX.

        77 SIZE-CAMPO                  PIC 9(4).
        77 OFFSET                      PIC 9(4).
        01 STRINGA                     PIC X(18).
        01 NUMERO                      PIC 9(18).

        01 NUM-FILE                    PIC XX.
        01 NOME-FILE                   PIC X(30).

        01 PARAMETRI                   PIC X(100).

        PROCEDURE DIVISION.
        MAIN SECTION.
        INIZIO.

                OPEN OUTPUT ARKDATO.
                CLOSE ARKDATO.
                STOP RUN.
      ***********************************************************
      * FINE PROGRAMMA                                          *
      ***********************************************************
      *

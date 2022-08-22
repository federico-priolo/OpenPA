        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     CREADATI.
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

                ARGUMENT-NUMBER IS ARG-NUM
                ARGUMENT-VALUE  IS ARG-VAL
                DECIMAL-POINT   IS COMMA.

        INPUT-OUTPUT SECTION.
        FILE-CONTROL.

                COPY SELDATO.

                SELECT ARK-IN ASSIGN TO FILE-IN
                 ORGANIZATION IS LINE SEQUENTIAL
                 FILE STATUS  IS STATUS-IN.

        DATA DIVISION.
        FILE SECTION.

                COPY FDEDATO.

        FD ARK-IN  LABEL RECORD IS STANDARD.

        01 REC-IN80.
          02 FILLER                    PIC X(80).

        01 REC-IN.
          02 LIV-IN                    PIC 99.
          02 BAD-IN                    PIC X.
          02 NOME-IN                   PIC X(32).
          02 GRUPPO-IN                 PIC X(05).
          02 PIC-IN                    PIC X(12).
          02 TIPO-PIC-IN               PIC XX.
          02 OCC-IN.
           05 OCCURS-IN                PIC 9(08).
          02 FILLER                    PIC X.
          02 SIZ-IN.
           05 SIZE-IN                  PIC 9(6).
          02 OFF-IN.
           05 OFFSET-IN                PIC 9(7).

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

                ACCEPT NUM FROM ARG-NUM

                IF NUM = 3
                 ACCEPT NOME-FILE FROM ARG-VAL
                 ACCEPT NUM-FILE  FROM ARG-VAL
                 ACCEPT SUFF-FILE FROM ARG-VAL
                 ELSE
                DISPLAY "NOME DEL FILE FD ? " AT 0101
                ACCEPT NOME-FILE AT 0150

                DISPLAY "NUMERO FILE ? " AT 0201
                  ACCEPT NUM-FILE AT 0250

                DISPLAY "SUFFISSO CAMPI" AT 0301
                  ACCEPT SUFF-FILE AT 0350.


      *         DISPLAY "ELABORO IL FLUSSO: " NOME-FILE " NUMERO "
      *          NUM-FILE.

                MOVE NOME-FILE TO FILE-IN.
                MOVE NUM-FILE  TO W-FILE.

                OPEN I-O ARKDATO.

                OPEN INPUT ARK-IN.

        LETTURA.

                PERFORM LEGGI-IN       THRU EX-LEGGI-IN.

        FINE.
                CLOSE ARK-IN ARKDATO.
                GOBACK.

        TRATTA.

                READ ARKDATO KEY IS CHIAVE-DATO
                 INVALID KEY
                  CONTINUE
                   NOT INVALID KEY GO TO EX-TRATTA.

                MOVE SPACES            TO TIPO-DATO.

                IF TIPO-PIC-IN = "N"  MOVE "9" TO TIPO-DATO.
                IF TIPO-PIC-IN = "AN" MOVE "X" TO TIPO-DATO.
                IF TIPO-PIC-IN = " "  MOVE "X" TO TIPO-DATO.

                IF NOME-IN(1:5) = "DATA-"
                                      MOVE "D" TO TIPO-DATO.

                PERFORM TIPO     THRU EX-TIPO.

                MOVE OCC-IN            TO STRINGA.
                PERFORM ALFA-TO-NUM    THRU EX-ALFA-TO-NUM.
                MOVE NUMERO            TO OCCURS-IN.

                MOVE SIZ-IN            TO STRINGA.
                PERFORM ALFA-TO-NUM    THRU EX-ALFA-TO-NUM.
                MOVE NUMERO            TO SIZE-IN.
                MOVE SIZE-IN           TO SIZE-DATO.

                MOVE OFF-IN            TO STRINGA.
                PERFORM ALFA-TO-NUM    THRU EX-ALFA-TO-NUM.
                MOVE NUMERO            TO OFFSET-IN.
                MOVE OFFSET-IN         TO POS-DATO.
                ADD  1                 TO POS-DATO.
                MOVE NUM-FILE          TO ARCHIVIO-DATO.

                PERFORM SCRITTURA-DATO  THRU EX-SCRITTURA-DATO.

        EX-TRATTA.
                EXIT.

        TIPO.

                MOVE 1                TO IND.

                 PERFORM VARYING IND FROM IND BY 1 UNTIL IND > 12
                 OR PIC-IN(IND:1) NOT = " "
                  CONTINUE
                 END-PERFORM.

                 PERFORM VARYING IND FROM IND BY 1 UNTIL IND > 12
                 OR PIC-IN(IND:1) = " "
                  CONTINUE

                 IF PIC-IN(IND:1) = "X" MOVE "X" TO TIPO-DATO
                 END-IF

                 IF PIC-IN(IND:1) = "9"
                  AND TIPO-DATO = SPACES
                   MOVE "9" TO TIPO-DATO
                 END-IF
                END-PERFORM.

        EX-TIPO.
                EXIT.


        SCRITTURA-DATO.

                IF NOME-IN = "FILLER" GO TO EX-SCRITTURA-DATO.

                MOVE SPACES TO NOME-DATO.

                ADD 1 TO CONTA.
                STRING SUFF-FILE
                  CONTA DELIMITED BY SIZE INTO NOME-DATO.

                MOVE NOME-IN           TO NOME-COBOL-DATO.
                MOVE SPACES            TO KEY-DATO.

                IF NOME-COBOL-DATO(1:7) = "COMUNE-"
                 MOVE "S"              TO SIZERI-DATO.

                IF NOME-COBOL-DATO = "ISTAT-001"
                 MOVE "S"              TO SIZERI-DATO.

                IF NOME-COBOL-DATO = "COD-ISTAT-CHIAMATA"
                 MOVE "S"              TO SIZERI-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-ANA"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-FAM"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-VIA"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-CIV"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-COD"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-TAB"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "PROG-TAB"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "ELEMENTO-TAB"
                 MOVE "K"              TO KEY-DATO.

                IF NOME-COBOL-DATO = "CHIAVE-COM"
                 MOVE "K"              TO KEY-DATO.


                WRITE DATO.

      *          DISPLAY NOME-DATO " " SIZE-DATO " " NOME-COBOL-DATO
      *           " " POS-DATO " " TIPO-DATO.

                MOVE SPACES            TO DATO.

        EX-SCRITTURA-DATO.
                EXIT.

        LEGGI-IN.

                MOVE SPACES  TO REC-IN.

                READ ARK-IN NEXT RECORD AT END GO TO EX-LEGGI-IN.

                IF LIV-IN NOT NUMERIC GO TO LEGGI-IN.

                IF LIV-IN = ZEROS GO TO LEGGI-IN.

                IF REC-IN(38:09) = "Condition"
                 GO TO LEGGI-IN.

                IF BAD-IN NOT = SPACES GO TO LEGGI-IN.
                
                
                INSPECT REC-IN REPLACING ALL x"00" BY " ".
                INSPECT REC-IN REPLACING ALL x"0A" BY " ".
                INSPECT REC-IN REPLACING ALL x"0D" BY " ".
                

                PERFORM TRATTA         THRU EX-TRATTA.

                GO TO LEGGI-IN.

        EX-LEGGI-IN.
                EXIT.


        ALFA-TO-NUM.

               MOVE ALL ZEROS          TO NUMERO.
               MOVE 18                 TO IND3
               PERFORM VARYING IND2 FROM 18 BY -1 UNTIL IND2 = ZERO
               IF STRINGA(IND2:1) NUMERIC
                MOVE  STRINGA(IND2:1)   TO NUMERO(IND3:1)
                SUBTRACT 1 FROM IND3
                END-IF

               END-PERFORM.

        EX-ALFA-TO-NUM.
               EXIT.
      *
      ***********************************************************
      * FINE PROGRAMMA                                          *
      ***********************************************************
      *

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     CREAMENU.
      *-----------------------------------------------------------------*
      * CREAZIONE FILE MENU'SCELTE                                      *
      *-----------------------------------------------------------------*
        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SOURCE-COMPUTER.        PC-IBM.
        OBJECT-COMPUTER.        PC-IBM.
        SPECIAL-NAMES.
                COPY WSPECIAL.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.

                COPY SELMENU.

                SELECT FILE-IN ASSIGN TO "ARKMENU.TXT"
                 ORGANIZATION IS LINE SEQUENTIAL
                 FILE STATUS  IS STATUS-IN.

        DATA DIVISION.
        FILE SECTION.

                COPY FDEMENU.

        FD FILE-IN LABEL RECORD IS STANDARD.
        01 REC-IN.
           02 MOD-IN                   PIC XX.
           02 FILLER                   PIC X.
           02 ENT-IN                   PIC XX.
           02 FILLER                   PIC X.
           02 FUN-IN                   PIC XX.
           02 FILLER                   PIC X.
           02 ENT-PROG-IN              PIC XX.
           02 FILLER                   PIC X.
           02 FUN-PROG-IN              PIC XX.
           02 FILLER                   PIC X.
           02 DESC-IN                  PIC X(40).
           02 FILLER                   PIC X.
           02 PROG-IN                  PIC X(14).
           02 FILLER                   PIC X.
           02 LIB-IN                   PIC X(14).
           02 FILLER                   PIC X.
           02 MULTIUSER-IN             PIC X.
           02 FILLER                   PIC X.
           02 PASSO-IN                 PIC X.
           02 FILLER                   PIC X.
           02 I-IMG-IN                 PIC 9999.
           02 FILLER                   PIC X.
           02 BARRA-IN                 PIC X.

        WORKING-STORAGE SECTION.

        77 RIC-MOD                     PIC XX.
        77 STATUS-MENU                 PIC XX VALUE "00".
        77 STATUS-IN                   PIC XX VALUE "00".
        77 SW-LAVORO                   PIC X.
        77 CONTA                       PIC 9(7) VALUE ZEROS.
        77 FILE-MENU                    PIC X(30) VALUE SPACE.
        PROCEDURE DIVISION.
        MAIN SECTION.
        INIZIO.

                MOVE "ARKMENU"      TO FILE-MENU.
        
                OPEN OUTPUT ARKMENU.
                CLOSE ARKMENU.
                OPEN I-O ARKMENU.
                

                OPEN INPUT FILE-IN.
                IF STATUS-IN NOT = "00"
                   DISPLAY "ERRORE APERTURA FILE SEQ ".
                    

                MOVE ZEROS             TO CONTA.
                MOVE SPACES            TO RIC-MOD.

        CICLO-CREA-MENU.

                MOVE SPACES            TO REC-IN.

                READ FILE-IN NEXT RECORD AT END GO TO FINE.

                IF REC-IN(1:6) = SPACES GO TO CICLO-CREA-MENU.

                IF REC-IN = SPACES GO TO CICLO-CREA-MENU.

                IF REC-IN(1:1) = "*" GO TO CICLO-CREA-MENU.

                INITIALIZE MENU.

                ADD 1                  TO CONTA.
                MOVE CONTA             TO NUM-MENU.

                MOVE DESC-IN           TO DESC-MENU.

                IF MOD-IN NOT = SPACES
                 MOVE MOD-IN           TO RIC-MOD.

                MOVE MOD-IN            TO MOD-MENU.

                IF MOD-MENU = SPACES
                MOVE RIC-MOD           TO MOD-MENU.
                MOVE ENT-IN            TO ENT-MENU.
                MOVE FUN-IN            TO FUNZ-MENU.
                MOVE PROG-IN           TO PROG-MENU.
                MOVE LIB-IN            TO DLL-MENU.
                MOVE MULTIUSER-IN      TO MULTI-USER-MENU.
                MOVE ENT-PROG-IN       TO ENT-PROG-MENU.
                MOVE FUN-PROG-IN       TO FUNZ-PROG-MENU.
                MOVE PASSO-IN          TO PASSO-MENU.

                IF PASSO-MENU = SPACES
                 AND FUNZ-MENU NOT = SPACES
                 MOVE "+"              TO PASSO-MENU.

                MOVE I-IMG-IN          TO IMG-MENU.
                MOVE BARRA-IN          TO BARRA-MENU.

                WRITE MENU.

                DISPLAY NUM-MENU " " CHIAVE-SEC-MENU " " DESC-MENU " ".

                GO TO CICLO-CREA-MENU.

        FINE.
                CLOSE ARKMENU FILE-IN.
                STOP RUN.

      ***********************************************************
      * FINE PROGRAMMA                                          *
      ***********************************************************
      *
        END PROGRAM CREAMENU.


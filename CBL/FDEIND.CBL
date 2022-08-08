000010*
000020** tracciato archivio indennita
000030*
000040  FD ARKIND  LABEL RECORD IS STANDARD GLOBAL
000050             RECORD CONTAINS 2048 CHARACTERS.
000060
000070  01 INDENNITA.
000080
000090          02 CHIAVE-IND.
                 05 CODICE-IND         PIC 9(6).

                02 DESC-IND            PIC X(40).
                02 RISULTATO-IND       PIC X.
                02 FILLER              PIC X.
                02 GIORNO-IND          PIC XX.
                02 LIV-IND             PIC X(06).
                02 FASCIE-IND.
                 05 TAB-IND OCCURS 24 TIMES.
                  15 USA-IND           PIC X.
                  15 FILLER-IND        PIC X.
                  15 ORARIO-IND.
                   25 ORE-IND          PIC 999.
                   25 MIN-IND          PIC 999.
                 05 MINUTI-IND.
                  15 FASC-IND          PIC X OCCURS 1440.
                02 VOCE1-IND           PIC XXXX.
                02 VOCE2-IND           PIC XXXX.
                02 VOCE3-IND           PIC XXXX.
                02 VOCE4-IND           PIC XXXX.
                02 VOCE5-IND           PIC XXXX.
                02 CAUS-IND            PIC 999.
                02 VALORI-IND.
                  05 DA-VALORE-IND     PIC 999999.
                  05 A-VALORE-IND      PIC 999999.
                  05 VALORE-IND        PIC 999999.
                02 IND-IND             PIC 9999.
                02 IND1-IND            PIC 9999.
                02 UNITARIO-IND        PIC S9(10)V99.
                02 DISATTIVA-IND       PIC X.
                02 DEBUG-IND           PIC X.
                02 EU-IND              PIC X.
                02 CONVERTI-IND        PIC X(6).
                02 CAUS-CONV-IND       PIC 999.
                02 FILLER              PIC XXX.
                02 AZZERA-ECC-IND      PIC X.
                02 NO-CONS-IND         PIC X.
                02 AUTORIZZA-IND       PIC X.
                02 INIZIO-IND          PIC 999999.
                02 COMPENSA-IND        PIC XXXXXX.
                02 ALIV-IND            PIC X(06).
                02 MINIMO-IND          PIC S9(9) COMP-5.
                02 FUORI-IND           PIC X.
                02 PRESENZA-IND        PIC X.
                02 NOCOMP-IND          PIC X.
                02 CAUSALE-IND         PIC 999.
                02 RIENTRO-IND         PIC X.
                02 NORIENTRO-IND       PIC X.
                02 NODUPL-IND          PIC X.
                02 PROSSIMA-IND        PIC X(06).
                02 MASSIMO-IND         PIC S9(9) COMP-5.
                02 TEMPO-IND           PIC 9.
                02 COD-ORA-IND         PIC X(6).
                02 MATTINA-IND         PIC X.
                02 RISULTATO1-IND      PIC S9(5)V99.
                02 CAUS-A-IND          PIC XXX.
                02 CAUS-B-IND          PIC XXX.
                02 CAUS-C-IND          PIC XXX.
                02 CAUS-FES-IND        PIC 999.
                02 CAUS-NOT-IND        PIC 999.
                02 CAUS-NOF-IND        PIC 999.
                02 ENTRATA-IND         PIC 9999.
                02 ENTRATAX-IND REDEFINES ENTRATA-IND.
                  09 ORA-ENT-IND       PIC 99.
                  09 MIN-ENT-IND       PIC 99.
                02 MINUTI-ENT-IND      PIC S9(9) COMP-5.

                02 PAUSA-MIN-IND        PIC 9999.
                02 PAUSAX-MIN-IND REDEFINES PAUSA-MIN-IND.
                  09 ORA-PAUSA-MIN-IND  PIC 99.
                  09 MIN-PAUSA-MIN-IND  PIC 99.
                02 MINUTI-PAUSA-MIN-IND PIC S9(9) COMP-5.

                02 PAUSA-MAX-IND        PIC 9999.
                02 PAUSAX-MAX-IND REDEFINES PAUSA-MAX-IND.
                  09 ORA-PAUSA-MAX-IND  PIC 99.
                  09 MIN-PAUSA-MAX-IND  PIC 99.
                02 MINUTI-PAUSA-MAX-IND PIC S9(9) COMP-5.

                02 PAUSA-DALLE-IND      PIC 9999.
                02 PAUSAX-DALLE-IND REDEFINES PAUSA-DALLE-IND.
                  09 ORA-PAUSA-DALLE-IND  PIC 99.
                  09 MIN-PAUSA-DALLE-IND  PIC 99.
                02 MINUTI-PAUSA-DALLE-IND PIC S9(9) COMP-5.

                02 PAUSA-ALLE-IND      PIC 9999.
                02 PAUSAX-ALLE-IND REDEFINES PAUSA-ALLE-IND.
                  09 ORA-PAUSA-ALLE-IND  PIC 99.
                  09 MIN-PAUSA-ALLE-IND  PIC 99.
                02 MINUTI-PAUSA-ALLE-IND PIC S9(9) COMP-5.

                02 FILLER              PIC X(161).
                02 SOLO-SU-CAUS-IND    PIC 999.
                02 ASS-CAUS-IND        PIC X.
                02 FILLER1             PIC XX.
               66 PROG-IND RENAMES CODICE-IND.


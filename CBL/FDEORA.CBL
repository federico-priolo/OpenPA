000010
000020*
000030** tracciato archivio orario dipendente
000040*
000050  FD ARKORA  LABEL RECORD IS STANDARD IS GLOBAL
000060             RECORD CONTAINS 512 CHARACTERS.
000070
000080  01 ORARIO.
000090
000100          02 CHIAVE-ORA.
000110            09 CODICE-ORA       PIC 9(05).
000120          02 DESC-ORA           PIC X(35).
000130          02 DATI-ORA.
000130            04 REGOLE-ORA       PIC 9(06).
                  04 FILLER           PIC X(16).
000150            04 FLAG-GIORNI-ORA  PIC X.
000160            04 TIPO-ORA         PIC X.
000170            04 TOL-ANT-ORA      PIC 99.
000180            04 TOL-POS-ORA      PIC 99.
000190            04 FLE-ANT-ORA      PIC 99.
000200            04 FLE-POS-ORA      PIC 99.
000210          02 ORARI-ORA.
000220             07 ORARIO-ORA OCCURS 2 TIMES.
000230               09 ENTRATA-ORA    PIC 9999.
000240               09 MINUTI-ENT-ORA PIC 9(9) COMP-5.
000250               09 USCITA-ORA     PIC 9999.
000260               09 MINUTI-USC-ORA PIC 9(9) COMP-5.
000270               09 DOVUTO-ORA     PIC 9999.
000280               09 MINUTI-DOV-ORA PIC 9(9) COMP-5.
000290             07 TOTALE-ORA       PIC 9999.
000300             07 MINUTI-TOT-ORA   PIC 9(9) COMP-5.
000310             07 RIENTRO-ORA      PIC X.
000320          02 BASE6-ASS-ORA.
000330             05 ORE6-ASS-ORA     PIC 99.
000340             05 MIN6-ASS-ORA     PIC 99.
000350          02 MINUTI-ASS6-ORA     PIC 9(9) COMP-5.
000360          02 FILLER              PIC X(7).
                02 FASCIA-ORA          PIC 9.
000370          02 LIBERE-ORA          PIC X.
                02 MENSA-ORA           PIC X.
                02 RIENTRI-ORA         PIC 9999.
                02 MINUTI-RIE-ORA      PIC 9(9) COMP-5.


000570          02 MINIMO-ORA.
000580            05 MIN-ORA           PIC 9999.
000590            05 MINUTI-MIN-ORA    PIC 9(9) COMP-5.
000600          02 MASSIMO-ORA.
000610            05 MAX-ORA           PIC 9999.
000620            05 MINUTI-MAX-ORA    PIC 9(9) COMP-5.
                02 TESTO-ORA           PIC X(100).
000380          02 FILLER              PIC X(241).

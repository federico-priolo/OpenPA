000010*
000020** tracciato archivio orario dipendente
000030*
000040  FD ARKPROF LABEL RECORD IS STANDARD GLOBAL
000050             RECORD CONTAINS 2048 CHARACTERS.
000060
000070  01 PROFILO.
000080
000090          02 CHIAVE-PROF.
000100           05 PROG-PROF          PIC 9(6).
000110          02 DESC-PROF           PIC X(35).
000120          02 DATI-PROF.
000130            04 FILLER            PIC X(06).
                  04 TOL4-ANT-PROF     PIC 99.
                  04 TOL4-POS-PROF     PIC 99.
                  04 TOL3-ANT-PROF     PIC 99.
                  04 TOL3-POS-PROF     PIC 99.
000150            04 TOL2-ANT-PROF     PIC 99.
000160            04 TOL2-POS-PROF     PIC 99.
000170            04 FLE2-ANT-PROF     PIC 99.
000180            04 FLE2-POS-PROF     PIC 99.
                  04 SW-FLES-PROF      PIC X.
000140            04 TIPO-PROF         PIC X.
000150            04 TOL-ANT-PROF      PIC 99.
000160            04 TOL-POS-PROF      PIC 99.
000170            04 FLE-ANT-PROF      PIC 99.
000180            04 FLE-POS-PROF      PIC 99.
000190          02 ORARI-PROF.
000200            04 GIORNI-PROF OCCURS 7 TIMES.
000210             07 ORARIO-PROF       PIC X(05).
000220             07 TOTALE-PROF       PIC 9999.
000230             07 MINUTI-TOT-PROF   PIC S9(9) COMP-5.
000240              07 RIENTRO-PROF     PIC X.
000250            04 DOVUTO-SETT-PROF.
000260               09 DOV-SETT-PROF    PIC 9999.
000270               09 MINUTI-SETT-PROF PIC S9(9) COMP-5.
000280               09 DOV1-SETT-PROF    PIC 9999.
000290               09 MINUTI1-SETT-PROF PIC S9(9) COMP-5.
000300            04 PAUSA-MENSA-PROF.
000310               09 MENSA-PROF        PIC 9999.
000320               09 MINUTI-MENSA-PROF PIC S9(9) COMP-5.
000330            04 PRESENZA-MENSA-PROF.
000340               09 PRES-MENSA-PROF   PIC 9999.
000350               09 MINUTI-PRES-MENSA-PROF  PIC S9(9) COMP-5.
000360          02 NUM-GG-PROF         PIC 9.
000370          02 AUT-PROF            PIC X.
000380          02 LIBERE-PROF         PIC X.
000390          02 VAL-ASS-PROF        PIC 9999.
000400          02 MINUTI-ASS-PROF     PIC S9(9) COMP-5.
000410          02 VAL1-ASS-PROF       PIC 9999.
000420          02 MINUTI1-ASS-PROF    PIC S9(9) COMP-5.
000430          02 TIPO-MENSA-PROF     PIC X.
000440          02 IGNORA-FEST-PROF    PIC X.
000450          02 COMPENSA-DEB-PROF   PIC X.
000460          02 DATI-TURNI-PROF.
000470           03 TURNI-ALTERNATIVI-PROF.
000480             05 TURNO-ALT-PROF   PIC X(05) OCCURS 50 TIMES.
000490           03 TIPO-TURNO-PROF    PIC X.
000500           03 RUOTAZ-PROF        PIC 99.
000510           03 TURNI-PROF.
000520             05 TURNO-PROF       PIC X(05) OCCURS 14 TIMES.
000530          02 USA-DOV-TURNO-PROF  PIC X.
000540          02 MENSA-INI-PROF      PIC 9999.
000550          02 MENSA-FIN-PROF      PIC 9999.
000560          02 CHIUDI-PROF         PIC X.
000570          02 MINIMO-PROF.
000580            05 MIN-PROF          PIC 9999.
000590            05 MINUTI-MIN-PROF   PIC S9(9) COMP-5.
000600          02 MASSIMO-PROF.
000610            05 MAX-PROF          PIC 9999.
000620            05 MINUTI-MAX-PROF   PIC S9(9) COMP-5.
000630          02 CAUS-MENSA-PROF     PIC 999.
000640          02 MAX-ECC-PROF        PIC 9999.
000640          02 MINUTI-ECC-PROF     PIC S9(9) COMP-5.
000650*
000660* azzera l'eccedenza se maggiore del massimo al= M=MESE G=giorno
000670*
000680          02 AZZ-ORE-PROF        PIC X.
000690          02 MESI-REC-PROF       PIC 99.
000500          02 RUOTAZ1-PROF        PIC 99.
000570          02 DURATA-TURNO-PROF.
000580            05 MIN-TURNO-PROF    PIC 9999.
000590            05 MINUTI-TUR-PROF   PIC S9(9) COMP-5.
000600          02 SOTTRAI-PROF        PIC X.
                02 MAX-PERC-PROF       PIC 999V999.
                02 PERIODO-PROF        PIC 99.
                02 INDENNITA-PROF      PIC X(6).
                02 INIZIO-DIURNO-PROF.
                  09 ORA-DIURNO-PROF   PIC 99.
                  09 MIN-DIURNO-PROF   PIC 99.
                02 DIURNO-PROF REDEFINES INIZIO-DIURNO-PROF
                                       PIC 9999.
                02 INIZIO-NOTT-PROF.
                  09 ORA-NOTT-PROF     PIC 99.
                  09 MIN-NOTT-PROF     PIC 99.
                02 NOTTURNO-PROF REDEFINES INIZIO-NOTT-PROF
                                       PIC 9999.
                02 AUTO-PROF           PIC X.
                02 COMPENSA-PROF       PIC X.
                02 NOLIMITI-PROF       PIC X.
                02 USA-AZZ-PROF        PIC X.
                02 MASSIMO-MENSA.
0310             09 MAX-MENSA-PROF     PIC 9999.
0320             09 MINUTI-MAX-MENSA-PROF PIC S9(9) COMP-5.
                02 USA-ANNO-CAUS-PROF  PIC X.
                02 PAUSE-PROF          PIC X.
                02 TAB-REGOLE-PROF.
                 09 REGOLE-PROF        PIC 9(6).
                 09 TABELLA-REG-PROF.
                   12 REGOLA-PROF      PIC 9(6) OCCURS 7 TIMES.
000610          02 FILLER              PIC X(1349).
                02 ANNUALI1-PROF       PIC 99.
                02 ANNUALI2-PROF       PIC 99.
                02 MENSILI1-PROF       PIC 99.
                02 MENSILI2-PROF       PIC 99.
                02 BASE1-PROF          PIC 9999.
                02 BASE2-PROF          PIC 9999.

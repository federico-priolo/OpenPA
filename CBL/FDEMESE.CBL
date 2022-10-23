        FD ARKMESE LABEL RECORD IS STANDARD GLOBAL
                   RECORD CONTAINS 128 CHARACTERS.

        01 MENSILITA.

                02 CHIAVE-MESE.
                 05 ENTE-MESE          PIC 99.
                 05 DIP-MESE           PIC 9(7).
                 05 ANNO-MESE          PIC 9999.
                 05 MESE-MESE          PIC 99.
                 05 CAUS-MESE          PIC 999.
                02 CHIAVE-SEC-MESE.
                 05 MESE-SEC-MESE      PIC 99.
                 05 CAUS-SEC-MESE      PIC 999.
                 05 DIP-SEC-MESE       PIC 9(7).
                02 TOTALI-MESE.
                 05 ASSENZE-MESE.
                   09 GIORNI-MESE      PIC 999.
                   09 ORARIO-ASS-MESE.
                     12 ORE-ASS-MESE   PIC 9(4).
                     12 MIN-ASS-MESE   PIC 99.
                   09 ASS-MESE REDEFINES ORARIO-ASS-MESE PIC 9(6).
                   09 MINUTI-ASS-MESE  PIC S9(9) COMP-5.

                 05 PRESENZE-MESE.

                   09 ORARIO-PRES-MESE.
                     12 ORE-PRES-MESE  PIC 9(4).
                     12 MIN-PRES-MESE  PIC 99.
                   09 TOTALE-MESE REDEFINES ORARIO-PRES-MESE PIC 9(6).
                   09 MINUTI-PRES-MESE PIC S9(9) COMP-5.

                   09 RIPARTIZIONE-MESE.

                     12 COM-MESE.
                      19 ORE-COM-MESE  PIC 9(4).
                      19 MIN-COM-MESE  PIC 99.
                     12 COMPENSATO-MESE REDEFINES COM-MESE PIC 9(6).
                     12 MINUTI-COM-MESE PIC S9(9) COMP-5.

                     12 DIU-MESE.
                      19 ORE-DIU-MESE  PIC 9(4).
                      19 MIN-DIU-MESE  PIC 99.
                     12 DIURNO-MESE REDEFINES DIU-MESE PIC 9(6).
                     12 MINUTI-DIU-MESE PIC S9(9) COMP-5.

                     12 NOT-MESE.
                      19 ORE-NOT-MESE  PIC 9(4).
                      19 MIN-NOT-MESE  PIC 99.
                     12 NOTTURNO-MESE REDEFINES NOT-MESE PIC 9(6).
                     12 MINUTI-NOT-MESE PIC S9(9) COMP-5.

                     12 FES-MESE.
                      19 ORE-FES-MESE  PIC 9(4).
                      19 MIN-FES-MESE  PIC 99.
                     12 FESTIVO-MESE REDEFINES FES-MESE PIC 9(6).
                     12 MINUTI-FES-MESE PIC S9(9) COMP-5.

                     12 NOF-MESE.
                      19 ORE-NOF-MESE  PIC 9(4).
                      19 MIN-NOF-MESE  PIC 99.
                     12 NOTFEST-MESE REDEFINES NOF-MESE PIC 9(6).
                     12 MINUTI-NOF-MESE PIC S9(9) COMP-5.

                02 GG-PRES-MESE        PIC 999.
                02 RIENTRI-MESE        PIC 99.
                02 FILLER              PIC X(20).



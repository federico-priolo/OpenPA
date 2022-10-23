      *
      * il mese indica il saldo a quale mese e' riferito
      *
      *


        FD ARKANNO LABEL RECORD IS STANDARD GLOBAL
                   RECORD CONTAINS 128 CHARACTERS.

        01 ANNUALITA.

                02 CHIAVE-ANNO.
                 05 ENTE-ANNO          PIC 99.
                 05 DIP-ANNO           PIC 9(7).
                 05 ANNO-ANNO          PIC 9999.
                 05 MESE-ANNO          PIC 99.
                 05 CAUS-ANNO          PIC 999.
                02 CHIAVE-SEC-ANNO.
                 05 ANNO-SEC-ANNO      PIC 9999.
                 05 CAUS-SEC-ANNO      PIC 999.
                 05 DIP-SEC-ANNO       PIC 9(7).
                02 TOTALI-ANNO.
                 05 ASSENZE-ANNO.
                   09 GIORNI-ANNO      PIC 999.
                   09 ORARIO-ASS-ANNO.
                     12 ORE-ASS-ANNO   PIC 9(4).
                     12 MIN-ASS-ANNO   PIC 99.
                   09 ASS-ANNO REDEFINES ORARIO-ASS-ANNO PIC 9(6).
                   09 MINUTI-ASS-ANNO  PIC S9(9) COMP-5.

                 05 PRESENZE-ANNO.

                   09 ORARIO-PRES-ANNO.
                     12 ORE-PRES-ANNO  PIC 9(4).
                     12 MIN-PRES-ANNO  PIC 99.
                   09 TOTALE-ANNO REDEFINES ORARIO-PRES-ANNO PIC 9(6).
                   09 MINUTI-PRES-ANNO PIC S9(9) COMP-5.

                   09 RIPARTIZIONE-ANNO.

                     12 COM-ANNO.
                      19 ORE-COM-ANNO  PIC 9(4).
                      19 MIN-COM-ANNO  PIC 99.
                     12 COMPENSATO-ANNO REDEFINES COM-ANNO PIC 9(6).
                     12 MINUTI-COM-ANNO PIC S9(9) COMP-5.

                     12 DIU-ANNO.
                      19 ORE-DIU-ANNO  PIC 9(4).
                      19 MIN-DIU-ANNO  PIC 99.
                     12 DIURNO-ANNO REDEFINES DIU-ANNO PIC 9(6).
                     12 MINUTI-DIU-ANNO PIC S9(9) COMP-5.

                     12 NOT-ANNO.
                      19 ORE-NOT-ANNO  PIC 9(4).
                      19 MIN-NOT-ANNO  PIC 99.
                     12 NOTTURNO-ANNO REDEFINES NOT-ANNO PIC 9(6).
                     12 MINUTI-NOT-ANNO PIC S9(9) COMP-5.

                     12 FES-ANNO.
                      19 ORE-FES-ANNO  PIC 9(4).
                      19 MIN-FES-ANNO  PIC 99.
                     12 FESTIVO-ANNO REDEFINES FES-ANNO PIC 9(6).
                     12 MINUTI-FES-ANNO PIC S9(9) COMP-5.

                     12 NOF-ANNO.
                      19 ORE-NOF-ANNO  PIC 9(4).
                      19 MIN-NOF-ANNO  PIC 99.
                     12 NOTFEST-ANNO REDEFINES NOF-ANNO PIC 9(6).
                     12 MINUTI-NOF-ANNO PIC S9(9) COMP-5.

                02 GG-PRES-ANNO        PIC 999.
                02 FILLER              PIC X(20).



      *
      ** tracciato record archivio dipendenti RILEVAZIONE
      *
        FD ARKMATR LABEL RECORD IS STANDARD GLOBAL
                   RECORD CONTAINS 2048 CHARACTERS.
        01 MATRICOLA.
                02 CHIAVE-MATR.
                 05 ENTE-MATR                   PIC 99.
                 05 PROG-MATR                   PIC 9(7).
                02 DATI-MATR.
                 05 GENERALITA-MATR.
                   08 COGNOME-MATR              PIC X(30).
                   08 NOME-MATR                 PIC X(30).
                02 NASCITA-MATR.
                 05 DATA-NASC-MATR.
                   09 AA-NASC-MATR               PIC 9999.
                   09 MM-NASC-MATR               PIC 99.
                   09 GG-NASC-MATR               PIC 99.
                 05 COMUNE-NASC-MATR             PIC X(35).
                 05 PROV-NASC-MATR               PIC XX.
                 05 SESSO-MATR                   PIC X.
                   88 SESSO-OK                  VALUE "M" "F".
                   88 MASCHIO                   VALUE "M".
                   88 FEMMINA                   VALUE "F".
                 05 CF-MATR                      PIC X(16).
                02 FILLER                        PIC XX.
                02 RESIDENZA-MATR.
                 05 COMUNE-RES-MATR              PIC X(35).
                 05 PROV-RES-MATR                PIC XX.
                 05 VIA-RES-MATR                 PIC X(35).
                 05 CAP-RES-MATR                 PIC X(5).
                 05 TEL-MATR                     PIC X(50).
                 05 EMAIL-MATR                   PIC X(50).
                02 ASSUNZIONE-MATR.
                 05 DATA-ASS-MATR.
                   09 AA-ASS-MATR                PIC 9999.
                   09 MM-ASS-MATR                PIC 99.
                   09 GG-ASS-MATR                PIC 99.
                 05 SERVIZIO-MATR                PIC X(06).
                 05 DATA-FINE-RAPP-MATR.
                   09 AA-FINE-RAPP-MATR          PIC 9999.
                   09 MM-FINE-RAPP-MATR          PIC 99.
                   09 GG-FINE-RAPP-MATR          PIC 99.
                 05 ELIMINATO-MATR               PIC X.
                02 POSTO-MATR.
                 05 UFFICIO-MATR                 PIC X(06).
                 05 REPARTO-MATR                 PIC X(06).
                 05 CENTRO-COSTO-MATR            PIC X(06).
                 05 QUALIFICA-MATR               PIC X(06).
                 05 MANSIONE-MATR                PIC X(06).
                02 TIPO-ORARIO-MATR              PIC X.
                02 BADGE-MATR                    PIC 9(10).
                02 CHIAVE-SEC-MATR.
                 05 ENTE-SEC-MATR                PIC 99.
                 05 DIP-MATR                     PIC 9(07).
                02 ORARIO-MATR                   PIC 9(06).
                02 FERIE-MATR.
                 05 RES-FERIE-MATR               PIC 999.
                 05 RES-FERIE-AP-MATR            PIC 999.
                 05 TOT-FERIE-MATR               PIC 999.
                02 ANNOTAZIONI-MATR.
                 05 NOTE-MATR OCCURS 4 TIMES     PIC X(70).
                02 FILLER1-MATR                  PIC X(70).
                02 BADGE-PROV-MATR               PIC 9(10).
                02 RUOLO-MATR.
                   09 RUO-MATR                   PIC 99.
                   09 SUBRUO-MATR                PIC 99.
                02 CATEGORIA-MATR                PIC XXXX.
                02 CAUS-ASS-MATR                 PIC 999.
                02 TABELLA-FERIE-MATR.
                 09 SALDO-FERIE-MATR  OCCURS 12 TIMES
                                                 PIC S999.
                02 TABELLA-PRES-MATR.
                 09 NUM-GG-PRES-MATR  OCCURS 12 TIMES
                                                 PIC 99.
                02 TABELLA-IND-MATR.
                 09 INDENNITA-MATR    OCCURS 12 TIMES.
                  15 NOTTURNO-MATR               PIC S9(6).
                  15 FESTIVO-MATR                PIC S9(6).
                  15 NOTTFEST-MATR               PIC S9(6).
                02 TABELLA-DOV-MATR.
                 09 FILLER            OCCURS 12 TIMES.
                  15 FILLER                      PIC 9(6).
                  15 FILLER                      PIC S9(6).
                  15 FILLER                      PIC S9(6).
                  15 FILLER                      PIC S9(6).
                  15 FILLER                      PIC S9(6).

                02 COD-IND-MATR                  PIC X(6).
                02 ASSENZA-MATR                  PIC X.
                02 PIANIFICA-MATR                PIC 9(6).
                02 COD-INAIL-MATR                PIC X(06).
                02 IGNORA-RIP-MATR               PIC X.
                02 NO-SALDO-MATR                 PIC X.
                02 FOTO-MATR                     PIC X.
                02 CALENDARIO-MATR               PIC 99.
                02 CONTRATTO-MATR                PIC 9(6).
                02 ASL1-MATR                     PIC 99.
                02 STUDIO-MATR                   PIC X(6).
                02 STATOCIV-MATR                 PIC X(6).
                02 ASL-MATR                      PIC X(6).
                02 RIEP-SETT-MATR                PIC X.
                02 ANNO-RIPORTO-MATR             PIC 9999.
                02 FILE-FOTO-MATR                PIC X(60).
                02 LIVELLO-MATR                  PIC X(06).
                02 CAPO-MATR                     PIC X(06).
                02 LOGIN-MATR                    PIC X(30).
                02 PASSWORD-MATR                 PIC X(30).
                02 FILE-HTML-MATR                PIC X(50).
                02 ADMIN-MATR                    PIC X.
                02 NOTE-WEB-MATR                 PIC X.
                02 NOSALDI-WEB-MATR              PIC X.
                02 NOCALC-WEB-MATR               PIC X.
                02 NOTEWEB-MATR                  PIC X(100).
                02 NOFERIE-WEB-MATR              PIC X.
                02 NOME-STAMPA-MATR              PIC X(40).
                02 ATTIVO-MATR                   PIC X.
                02 ATTIVO1-MATR                  PIC X.
                02 NODOM-WEB-MATR                PIC X.
                02 AUTORIZZA-MATR                PIC X.
                02 VISTO-MATR                    PIC X(6).
                02 NOIPA-MATR                    PIC 9(8).
                02 FILLER                        PIC X(243).


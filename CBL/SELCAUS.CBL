      *
      ***********               Select flusso anagrafico CAUSALI TIMBRATURE
      *
                SELECT ARKCAUS ASSIGN TO FILE-CAUS
                ORGANIZATION IS INDEXED
                ACCESS MODE  IS DYNAMIC
                RECORD KEY   IS CHIAVE-CAUS
                ALTERNATE RECORD KEY IS DESC-CAUS DUPLICATES
                ALTERNATE RECORD KEY IS CHIAVE-SEC-CAUS DUPLICATES
                LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
                FILE STATUS  IS STATUS-CAUS.

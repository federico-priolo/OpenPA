
      *
      ***********               Select flusso anagrafico PRESENZE
      *
                SELECT ARKPRES  ASSIGN TO  FILE-PRES
                ORGANIZATION IS INDEXED
                ACCESS MODE  IS DYNAMIC
                RECORD KEY   IS CHIAVE-PRES
                ALTERNATE RECORD KEY IS CHIAVE-SEC-PRES  DUPLICATES
                ALTERNATE RECORD KEY IS CHIAVE-CAUS-PRES DUPLICATES
                LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
                FILE STATUS  IS STATUS-PRES.

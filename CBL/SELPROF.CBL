
      *
      ***********               Select flusso anagrafico PROFILI ORARIO
      *
                SELECT ARKPROF ASSIGN TO FILE-PROF
                ORGANIZATION IS INDEXED
                ACCESS MODE  IS DYNAMIC
                RECORD KEY   IS CHIAVE-PROF
                LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
                FILE STATUS  IS STATUS-PROF.

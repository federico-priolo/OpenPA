
      *
      ***********               Select flusso anagrafico ORARIO GIORNALIERO
      *
                SELECT ARKORA ASSIGN TO FILE-ORA
                ORGANIZATION IS INDEXED
                ACCESS MODE  IS DYNAMIC
                RECORD KEY   IS CHIAVE-ORA
                LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
                FILE STATUS  IS STATUS-ORA.

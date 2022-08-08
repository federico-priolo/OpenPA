      *
      ***********               Select del flusso dei report
      *
                SELECT ARKDATO  ASSIGN TO FILE-DATO
                ORGANIZATION IS INDEXED
                ACCESS MODE  IS DYNAMIC
                RECORD KEY   IS CHIAVE-DATO OF DATO
                ALTERNATE RECORD KEY IS
                NOME-COBOL-DATO WITH DUPLICATES
                LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
                FILE STATUS  IS STATUS-DATO.
      *
      ***********
      *

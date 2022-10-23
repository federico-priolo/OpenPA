
      *
      ***********               Select flusso anagrafico CARTRIO GIORNALIERO
      *
                SELECT ARKCART ASSIGN TO FILE-CART
                ORGANIZATION IS INDEXED
                ACCESS MODE  IS DYNAMIC
                RECORD KEY   IS CHIAVE-CART
                ALTERNATE RECORD KEY IS CHIAVE-SEC-CART DUPLICATES
                LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
                FILE STATUS  IS STATUS-CART.

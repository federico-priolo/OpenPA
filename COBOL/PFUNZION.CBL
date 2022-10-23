000001

        CONTROLLO-DATA.

                CALL "GESTDATA" USING
                   SW-DATA DATA-NORMALE GIORNO-NORMALE.

                CANCEL "GESTDATA".

        EX-CONTROLLO-DATA.
                EXIT.

        GET-NUMERO.

                CALL "GETNUMER" USING TAB-STRINGA TAB-NUMERO.

        EX-GET-NUMERO.
                EXIT.

        FAI-CIFRA.

                CALL "TRASCOD" USING NUMERO-TRASCOD CIFRA-TRASCOD.

        EX-FAI-CIFRA.
                EXIT.

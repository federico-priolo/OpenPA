000020*
000021* Copyright (C) 2010-2020 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000022*
000023* This program is free software; you can redistribute it and/or modify
000024* it under the terms of the GNU General Public License as published by
000025* the Free Software Foundation; either version 2, or (at your option)
000026* any later version.
000027*
000028* This program is distributed in the hope that it will be useful,
000029* but WITHOUT ANY WARRANTY; without even the implied warranty of
000030* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000031* GNU General Public License for more details.
000032*
000033* You should have received a copy of the GNU General Public License
000034* along with this software; see the file COPYING.  If not, write to
000035* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000036* Boston, MA 02110-1301 USA
000037*
000038 IDENTIFICATION  DIVISION.
000039 PROGRAM-ID.     CRIPTA.
000040 ENVIRONMENT     DIVISION.
000041 DATA            DIVISION.
000050 WORKING-STORAGE SECTION.
000060
000070 01 TAB-ASCII.
000080    02 CAR-ASCII                  PIC X OCCURS 255 TIMES.
000090 01 ASCII.
000100   02 NUM-ASCII                   PIC S9(4) COMP-5.
000110
000120 77 CIFRATURA                     PIC X(100) VALUE "FedericoPriolo".
000130
000140 77 LUNG-CIFRATURA                PIC 99.
000150 77 NULLA                         PIC 9.
000160 77 RESTO                         PIC 9.
000170 77 DEP-ESA                       PIC X(16).
000180 77 IND                           PIC S9(4) COMP-5.
000190 77 IND1                          PIC S9(4) COMP-5.
000200 77 IND2                          PIC S9(4) COMP-5.
000210 77 IND3                          PIC S9(4) COMP-5.
000220 77 VALORE-RECORD                 PIC X.
000230 77 VALORE-CERCATO                PIC X.
000240 77 VALORE-ASCII                  PIC S9(4) COMP-5.
000250 77 PARA1                         PIC 9(9) BINARY VALUE ZEROS.
000260 77 PARA2                         PIC 9(9) BINARY VALUE ZEROS.
000270 77 AND1                          PIC 9(9) BINARY VALUE 15.
000280 77 AND2                          PIC 9(9) BINARY VALUE 15.
000290 77 LUNG1                         PIC 9(9) COMP-5 VALUE 1.
000300 77 STATO                         PIC S9(4) COMP-5.
000310 LINKAGE SECTION.
000320 77 REC-DAT                       PIC X(512).
000330 77 SIZE-DAT                      PIC 9999.
000340 PROCEDURE       DIVISION USING REC-DAT SIZE-DAT.
000350
000360                PERFORM VARYING NUM-ASCII FROM 1 BY 1 UNTIL NUM-ASCII > 255
000370                        MOVE ASCII      TO CAR-ASCII(NUM-ASCII)
000380                END-PERFORM.
000390
000400
000410                PERFORM VARYING LUNG-CIFRATURA FROM 1 BY 1 UNTIL
000420                 CIFRATURA(LUNG-CIFRATURA:1) = SPACES
000430                  CONTINUE
000440                END-PERFORM.
000450
000460                subtract 1 FROM LUNG-CIFRATURA.
000470
000480                PERFORM DECRIPTA        THRU EX-DECRIPTA.
000490
000500                EXIT PROGRAM.
000510
000520
000530 DECRIPTA.
000540
000550                PERFORM VARYING IND FROM 1 BY 1 UNTIL IND > SIZE-DAT
000560                 PERFORM TRATTA THRU EX-TRATTA
000570                END-PERFORM.
000580
000590 EX-DECRIPTA.
000600                EXIT.
000610
000620 TRATTA.
000630
000640                COMPUTE IND1 = IND + 2.
000650
000660                DIVIDE IND1 BY LUNG-CIFRATURA GIVING NULLA
000670                 REMAINDER RESTO
000680                  ON SIZE ERROR
000690                   MOVE ZEROS   TO RESTO.
000700
000710                IF RESTO = ZEROS
000720                 MOVE LUNG-CIFRATURA    TO RESTO.
000730
000740                IF REC-DAT(IND:1) > X"1F" AND < X"80"
000750                PERFORM DECODIFICA      THRU EX-DECODIFICA.
000751
000760
000770 EX-TRATTA.
000780                EXIT.
000790
000800 CERCA-ASCII.
000810
000820                MOVE ZEROS                      TO IND2.
000830                PERFORM VARYING IND1 FROM 1 BY 1 UNTIL IND1 > 255
000840                 IF CAR-ASCII(IND1) = VALORE-CERCATO
000850                  MOVE IND1                     TO IND2
000860                 END-IF
000870                END-PERFORM.
000880
000890 EX-CERCA-ASCII.
000900                EXIT.
000910
000920 DECODIFICA.
000930
000940                MOVE CIFRATURA(RESTO:1)         TO VALORE-CERCATO.
000950                PERFORM CERCA-ASCII                     THRU EX-CERCA-ASCII.
000960                MOVE IND2                                       TO PARA1.
000970                MOVE AND2                                       TO AND1.
000980                MOVE FUNCTION LENG(PARA1)   TO LUNG1.
000990                CALL "CBL_AND" USING BY REFERENCE PARA1 AND1
001000                 BY VALUE LUNG1
001010                         RETURNING STATO.
001020
001030                MOVE REC-DAT(IND:1)     TO VALORE-CERCATO.
001040                PERFORM CERCA-ASCII     THRU EX-CERCA-ASCII.
001050                MOVE IND2                       TO PARA1.
001060
001070                MOVE FUNCTION LENG(PARA1)    TO LUNG1.
001080                CALL "CBL_XOR" USING BY REFERENCE PARA1 AND1
001090                 BY VALUE LUNG1
001100                         RETURNING STATO.
001110
001120                MOVE CAR-ASCII(AND1) TO REC-DAT(IND:1).
001130
001140 EX-DECODIFICA.
001150                EXIT.
001160

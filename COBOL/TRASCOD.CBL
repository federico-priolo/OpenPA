000010*
000011* Copyright (C) 2010-2021 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000012*
000013* This program is free software; you can redistribute it and/or modify
000014* it under the terms of the GNU General Public License as published by
000015* the Free Software Foundation; either version 2, or (at your option)
000016* any later version.
000017*
000018* This program is distributed in the hope that it will be useful,
000019* but WITHOUT ANY WARRANTY; without even the implied warranty of
000020* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000021* GNU General Public License for more details.
000022*
000023* You should have received a copy of the GNU General Public License
000024* along with this software; see the file COPYING.  If not, write to
000025* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000026* Boston, MA 02110-1301 USA
000027*
000028  IDENTIFICATION DIVISION.
000029  PROGRAM-ID.     TRASCOD.
000030  ENVIRONMENT DIVISION.
000040  CONFIGURATION SECTION.
000050  SOURCE-COMPUTER. PC-IBM.
000060  OBJECT-COMPUTER. PC-IBM.
000070  SPECIAL-NAMES.
000080          DECIMAL-POINT IS COMMA.
000090  DATA DIVISION.
000100
000110  WORKING-STORAGE SECTION.
000120  77   CIFRA      PIC 9(12) VALUE 0.
000130  01 CL-WORK.
000140          02 CL-DEC-CEN           PIC X.
000150          02 CL-CIFRE             PIC 9(12).
000160          02 FILLER               REDEFINES CL-CIFRE.
000170           03 CL-MD               PIC 999.
000180           03 CL-ML               PIC 999.
000190           03 CL-MI               PIC 999.
000200           03 CL-CE               PIC 999.
000210          02 CL-LETTERE.
000220           03 CL-LET-EL           PIC X OCCURS 108 TIMES.
000230          02 FILLER               REDEFINES CL-LETTERE.
000240           03 CL-LET-61           PIC X(61).
000250           03 CL-LET-61-108       PIC X(47).
000260          02 CL-CDU.
000270           03 CL-C                PIC 9.
000280           03 CL-DU               PIC 99.
000290           03 FILLER              REDEFINES CL-DU.
000300            04 CL-D               PIC 9.
000310            04 CL-U               PIC 9.
000320          02 CL-DEP.
000330           03 CL-DEP-EL           PIC X OCCURS 12 TIMES.
000340          02 CL-U-VALUE.
000350           03 CL-U-1              PIC X(7).
000360           03 CL-U-2              PIC X(7).
000370           03 CL-U-3              PIC X(7).
000380           03 CL-U-4              PIC X(7).
000390           03 CL-U-5              PIC X(7).
000400           03 CL-U-6              PIC X(7).
000410           03 CL-U-7              PIC X(7).
000420           03 CL-U-8              PIC X(7).
000430           03 CL-U-9              PIC X(7).
000440*
000450          02 CL-U-TAB             REDEFINES CL-U-VALUE.
000460           03 CL-U-EL             PIC X(7) OCCURS 9 TIMES.
000470* TABELLA UNDICI - DICIANNOVE
000480          02 CL-DU-VALUE.
000490           03 CL-DU-1             PIC X(11).
000500           03 CL-DU-2             PIC X(11).
000510           03 CL-DU-3             PIC X(11).
000520           03 CL-DU-4             PIC X(11).
000530           03 CL-DU-5             PIC X(11).
000540           03 CL-DU-6             PIC X(11).
000550           03 CL-DU-7             PIC X(11).
000560           03 CL-DU-8             PIC X(11).
000570           03 CL-DU-9             PIC X(11).
000580*
000590          02 CL-DU-TAB            REDEFINES CL-DU-VALUE.
000600           03 CL-DU-EL            PIC X(11) OCCURS 9 TIMES.
000610*
000620****   TABELLA DECINE
000630*
000640          02 CL-D-VALUE.
000650           03 CL-D-1              PIC X(9).
000660           03 CL-D-2              PIC X(9).
000670           03 CL-D-3              PIC X(9).
000680           03 CL-D-4              PIC X(9).
000690           03 CL-D-5              PIC X(9).
000700           03 CL-D-6              PIC X(9).
000710           03 CL-D-7              PIC X(9).
000720           03 CL-D-8              PIC X(9).
000730           03 CL-D-9              PIC X(9).
000740*
000750          02 CL-D-TAB             REDEFINES CL-D-VALUE.
000760           03 CL-D-EL             PIC X(9) OCCURS 9 TIMES.
000770*
000780***** INDICI (CL-I ----> CL-LET-EL  CL-J -----> CL-DEL-EL)
000790*
000800          02 CL-I                 PIC 999.
000810          02 CL-J                 PIC 99.
000820*
000830  LINKAGE SECTION.
000840  77      NUMERO                  PIC 9(12).
000850  77      LETTERE                 PIC X(100).
000860  PROCEDURE DIVISION USING NUMERO LETTERE.
000870*
000880  INIZIO.
000890          PERFORM TABELLA THRU EX-TABELLA.
000900          MOVE NUMERO             TO CIFRA.
000910          MOVE CIFRA              TO CL-CIFRE.
000920          PERFORM CL-ROUTINE THRU EX-CL-ROUTINE.
000930          MOVE CL-LETTERE         TO LETTERE.
000940  FINE.
000950          GOBACK.
000960*
000970**************
000980*
000990  CL-ROUTINE.
001000          IF CL-CIFRE = ZERO
001010           MOVE " ZERO "  TO CL-LETTERE
001020           GO TO EX-CL-ROUTINE.
001030          MOVE " "        TO CL-LETTERE.
001040          MOVE 1          TO CL-I.
001050*
001060****    TRASCODIFICA MILIARDI
001070*
001080          IF CL-MD = ZERO
001090           GO TO MILIONI.
001100          IF CL-MD = 1
001110           MOVE "UNMILIARDO" TO CL-DEP
001120           PERFORM CARICA THRU EX-CARICA
001130           GO TO MILIONI.
001140          MOVE CL-MD TO CL-CDU.
001150          PERFORM TRE-CIFRE THRU EX-TRE-CIFRE.
001160          MOVE "MILIARDI" TO CL-DEP.
001170          PERFORM CARICA THRU EX-CARICA.
001180*
001190*****  TRASCODIFICA MILIONI
001200*
001210  MILIONI.
001220          IF CL-ML = ZERO
001230           GO TO MIGLIAIA.
001240          IF CL-ML = 1
001250           MOVE "UNMILIONE" TO CL-DEP
001260           PERFORM CARICA THRU EX-CARICA
001270           GO TO MIGLIAIA.
001280          MOVE CL-ML TO CL-CDU.
001290          PERFORM TRE-CIFRE THRU EX-TRE-CIFRE.
001300          MOVE "MILIONI" TO CL-DEP.
001310          PERFORM CARICA THRU EX-CARICA.
001320*
001330*** TRASCODIFICA MIGLIAIA
001340*
001350  MIGLIAIA.
001360          IF CL-MI = ZERO
001370           GO TO CENTINAIA.
001380          IF CL-MI = 1
001390           MOVE "MILLE" TO CL-DEP
001400           PERFORM CARICA THRU EX-CARICA
001410           GO TO CENTINAIA.
001420          MOVE CL-MI TO CL-CDU.
001430          PERFORM TRE-CIFRE THRU EX-TRE-CIFRE.
001440          MOVE "MILA" TO CL-DEP.
001450          PERFORM CARICA THRU EX-CARICA.
001460*
001470*** TRASCODIFICA CENTINAIA
001480*
001490  CENTINAIA.
001500
001510          IF CL-CE = ZERO
001520           GO TO FINE-DECOD.
001530
001540*         IF CL-DEC-CEN = SPACE
001550*          MOVE CL-CE TO CL-DEP
001560*          PERFORM CARICA THRU EX-CARICA
001570*          GO TO FINE-DECOD.
001580
001590          MOVE CL-CE TO CL-CDU.
001600          PERFORM TRE-CIFRE THRU EX-TRE-CIFRE.
001610  FINE-DECOD.
001620          MOVE " " TO CL-LET-EL (CL-I).
001630  EX-CL-ROUTINE.
001640          EXIT.
001650*
001660**************
001670*
001680  TRE-CIFRE.
001690          IF CL-C = ZERO
001700           GO TO DUE-CIFRE.
001710          IF CL-C > 1
001720           MOVE CL-U-EL (CL-C) TO CL-DEP
001730           PERFORM CARICA THRU EX-CARICA.
001740          MOVE "CENTO" TO CL-DEP.
001750          PERFORM CARICA THRU EX-CARICA.
001760  DUE-CIFRE.
001770          IF CL-DU = ZERO
001780           GO TO EX-TRE-CIFRE.
001790          IF CL-D = ZERO
001800           GO TO UNA-CIFRA.
001810          IF CL-DU = 10
001820           MOVE "DIECI" TO CL-DEP
001830           PERFORM CARICA THRU EX-CARICA
001840           GO TO EX-TRE-CIFRE.
001850          IF CL-DU < 20
001860           MOVE CL-DU-EL (CL-U) TO CL-DEP
001870           PERFORM CARICA THRU EX-CARICA
001880           GO TO EX-TRE-CIFRE.
001890          MOVE CL-D-EL (CL-D) TO CL-DEP.
001900          PERFORM CARICA THRU EX-CARICA.
001910          IF CL-U = 1 OR = 8
001920           GO TO UNA-CIFRA.
001930          IF CL-D = 2
001940           MOVE "I" TO CL-LET-EL (CL-I)
001950          ELSE
001960           MOVE "A" TO CL-LET-EL (CL-I).
001970          ADD 1 TO CL-I.
001980  UNA-CIFRA.
001990          IF CL-U = ZERO
002000           GO TO EX-TRE-CIFRE.
002010          MOVE CL-U-EL (CL-U) TO CL-DEP.
002020          PERFORM CARICA THRU EX-CARICA.
002030  EX-TRE-CIFRE.
002040          EXIT.
002050*
002060****************
002070*
002080  CARICA.
002090          MOVE 1 TO CL-J.
002100  CL-CICLO.
002110          IF CL-DEP-EL (CL-J) = SPACE
002120           GO TO EX-CARICA.
002130          MOVE CL-DEP-EL (CL-J) TO CL-LET-EL (CL-I).
002140          ADD 1 TO CL-J.
002150          ADD 1 TO CL-I.
002160          GO TO CL-CICLO.
002170  EX-CARICA.
002180          EXIT.
002190*
002200*************
002210*
002220  TABELLA.
002230          MOVE "UNO"              TO  CL-U-1.
002240          MOVE "DUE"              TO  CL-U-2.
002250          MOVE "TRE"              TO  CL-U-3.
002260          MOVE "QUATTRO"          TO  CL-U-4.
002270          MOVE "CINQUE"           TO  CL-U-5.
002280          MOVE "SEI"              TO  CL-U-6.
002290          MOVE "SETTE"            TO  CL-U-7.
002300          MOVE "OTTO"             TO  CL-U-8.
002310          MOVE "NOVE"             TO  CL-U-9.
002320*
002330          MOVE "UNDICI"           TO  CL-DU-1.
002340          MOVE "DODICI"           TO  CL-DU-2.
002350          MOVE "TREDICI"          TO  CL-DU-3.
002360          MOVE "QUATTORDICI"      TO  CL-DU-4.
002370          MOVE "QUINDICI"         TO  CL-DU-5.
002380          MOVE "SEDICI"           TO  CL-DU-6.
002390          MOVE "DICIASSETTE"      TO  CL-DU-7.
002400          MOVE "DICIOTTO"         TO  CL-DU-8.
002410          MOVE "DICIANNOVE"       TO  CL-DU-9.
002420*
002430          MOVE "DIECI"            TO  CL-D-1.
002440          MOVE "VENT"             TO  CL-D-2.
002450          MOVE "TRENT"            TO  CL-D-3.
002460          MOVE "QUARANT"          TO  CL-D-4.
002470          MOVE "CINQUANT"         TO  CL-D-5.
002480          MOVE "SESSANT"          TO  CL-D-6.
002490          MOVE "SETTANT"          TO  CL-D-7.
002500          MOVE "OTTANT"           TO  CL-D-8.
002510          MOVE "NOVANT"           TO  CL-D-9.
002520  EX-TABELLA.
002530          EXIT.
002540

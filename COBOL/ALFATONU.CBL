000010*
000020* Copyright (C) 2010-2021 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000030*
000040* This program is free software; you can redistribute it and/or modify
000050* it under the terms of the GNU General Public License as published by
000060* the Free Software Foundation; either version 2, or (at your option)
000070* any later version.
000080*
000090* This program is distributed in the hope that it will be useful,
000100* but WITHOUT ANY WARRANTY; without even the implied warranty of
000110* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000120* GNU General Public License for more details.
000130*
000140* You should have received a copy of the GNU General Public License
000150* along with this software; see the file COPYING.  If not, write to
000160* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000170* Boston, MA 02110-1301 USA
000180*
000190  IDENTIFICATION DIVISION.
000200  PROGRAM-ID.     ALFATONU.
000210  ENVIRONMENT DIVISION.
000220  CONFIGURATION SECTION.
000230  SOURCE-COMPUTER. PC-IBM.
000240  OBJECT-COMPUTER. PC-IBM.
000250  SPECIAL-NAMES.
000260          DECIMAL-POINT IS COMMA.
000270  DATA DIVISION.
000280
000290  WORKING-STORAGE SECTION.
000300
000310  01 TAB-NUMERO                 PIC 9(18).
000320  01 IND                        PIC 99.
000330  01 IND1                       PIC 99.
000340
000350
000360  LINKAGE SECTION.
000370  77      NUMERO                PIC X(20).
000380  77      DIM                   PIC 9999.
000390
000400  PROCEDURE DIVISION USING NUMERO DIM.
000410*
000420  INIZIO.
000430
000440          MOVE ALL "0"      TO TAB-NUMERO.
000450          MOVE 18           TO IND1.
000460
000470          PERFORM VARYING IND FROM 20 BY -1 UNTIL IND = ZERO
000480
000490          IF NUMERO(IND:1) NUMERIC
000500           MOVE NUMERO(IND:1)   TO TAB-NUMERO(IND1:1)
000510           SUBTRACT 1 FROM IND1
000520          END-IF
000530
000540          END-PERFORM.
000550
000560          MOVE SPACES   TO NUMERO.
000570
000580          COMPUTE IND1 = 19 - DIM
000590
000600          MOVE TAB-NUMERO(IND1:DIM) TO NUMERO.
000610
000620  FINE.
000630          GOBACK.
000640          
000650          

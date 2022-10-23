000020 @OPTIONS ALPHAL(WORD)
000021*
000022* Copyright (C) 2022 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000023*
000024* This program is free software; you can redistribute it and/or modify
000025* it under the terms of the GNU General Public License as published by
000026* the Free Software Foundation; either version 2, or (at your option)
000027* any later version.
000028*
000029* This program is distributed in the hope that it will be useful,
000030* but WITHOUT ANY WARRANTY; without even the implied warranty of
000031* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000032* GNU General Public License for more details.
000033*
000034* You should have received a copy of the GNU General Public License
000035* along with this software; see the file COPYING.  If not, write to
000036* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000037* Boston, MA 02110-1301 USA
000038*
000039
000040*
000041 identification division.
000042 PROGRAM-ID. LEGGITAB.
000043 AUTHOR. FEDERICO PRIOLO AGOSTO 2022
000044
000045*
000046* Copyright (C) 2010-2022 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000047*
000048* This program is free software; you can redistribute it and/or modify
000049* it under the terms of the GNU General Public License as published by
000050* the Free Software Foundation; either version 2, or (at your option)
000051* any later version.
000052*
000053* This program is distributed in the hope that it will be useful,
000054* but WITHOUT ANY WARRANTY; without even the implied warranty of
000055* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000056* GNU General Public License for more details.
000057*
000058* You should have received a copy of the GNU General Public License
000059* along with this software; see the file COPYING.  If not, write to
000060* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000061* Boston, MA 02110-1301 USA
000062*
000063 ENVIRONMENT DIVISION.
000064 CONFIGURATION    SECTION.
000065
000066          COPY "SPECIAL.CBL".
000067
000068 INPUT-OUTPUT SECTION.
000069 FILE-CONTROL.
000070
000071*
000072			COPY "SELTAB.CBL".
000079                    
000080 DATA DIVISION.
000081 FILE SECTION.
000082
000083
000089			COPY "FDETAB.CBL".
000095
000096 WORKING-STORAGE SECTION.
000097
000098
000099          COPY "GLOBALS.CBL".
000100			COPY "IMAGES.CBL".
000101
000102
000103 77 FILENAME			PIC X(50).
000104 77 DATI  			PIC X(1024).
000105 77 NAME				PIC X(100).
000106
000107 77 SW-TABLE			PIC X.
000108   88 table-on		VALUE "Y".
000109   88 table-oFF		VALUE "N".
000110
000111 77 DEBUG				PIC X.
000112   88 debug-on		VALUE "Y".
000113   88 debug-oFF		VALUE "N".
000114
000115 77 FAST 				PIC X.
000116
000117 01 TAB-TABLE.		
000118		02 INDEX-TABLE 	PIC 9999.
000119		02 IND-TABLE  	PIC 9999.
000120		02 ITEM-TABLE OCCURS 20 TIMES.
000121		 09 NAME-TABLE	PIC X(30).
000122		 09 VALUE-TABLE	PIC X(512).
000123		02 TIMES-TABLE	PIC 99.
000124
000125 77 IND1				PIC 9(9).
000126 77 IND2				PIC 9(9).
000127 77 IND3				PIC 9(9).
000128 
000129  LINKAGE SECTION.
000130
000131  77 WTIPO-TAB		PIC XX.
000132  77 WELEMENTO-TAB 	PIC X(6).
000133  77 WDESC-TAB        PIC X(35).
000134
000135  PROCEDURE       DIVISION USING WTIPO-TAB WELEMENTO-TAB RETURNING WDESC-TAB.
000145
000146
000147      PERFORM OPEN-I-TAB   	THRU EX-OPEN-I-TAB.
000148
000336
000337		MOVE WTIPO-TAB		TO TIPO-TAB.
000338		MOVE 01				TO ENTE-TAB.
000339		MOVE WELEMENTO-TAB 	TO ELEMENTO-TAB.
000340
000341		PERFORM LEGGO-TAB 	THRU EX-LEGGO-TAB.
000342
000343		IF ESITO-NOK INITIALIZE TABELLA.
000344
000345		MOVE DESC-TAB		TO WDESC-TAB.
000346
000347		IF WTIPO-TAB = "43"
000348		 MOVE MATR-043		TO CHIAVE-TAB.
000349
000350 FINE.
000351
000352		PERFORM CLOSE-TAB	THRU EX-CLOSE-TAB.
000356
000357
000358		EXIT PROGRAM.
000359
000360		COPY "PIOTAB.CBL".
000370
000380 VIS-MESS.
000381**** DUMMY PROCEDURE
000390 EX-VIS-MESS.
000400		EXIT.

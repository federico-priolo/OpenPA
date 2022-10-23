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
000190*
000200
000210 IDENTIFICATION   DIVISION.
000220 PROGRAM-ID       SAVESHA3.
000230 ENVIRONMENT      DIVISION.
000240 CONFIGURATION    SECTION.
000250
000260          COPY "SPECIAL.CBL".
000270          
000280 INPUT-OUTPUT     SECTION.
000290 FILE-CONTROL.
000300
000310	     	COPY "SELLIB.CBL".
000320
000330		
000340
000350 DATA             DIVISION.
000360 FILE SECTION.
000370
000380	        COPY "FDELIB.CBL".
000390
000400 WORKING-STORAGE  SECTION.
000410
000420          COPY "COBW3.CBL".
000430          COPY "GLOBALS.CBL".
000440			COPY "IMAGES.CBL".
000450*
000460 LINKAGE SECTION.
000470 77 SECTION-CALL          PIC X(16).
000480 77 VALORE-CALL           PIC X(1024).
000490 
000500 PROCEDURE  DIVISION USING SECTION-CALL
000510               RETURNING VALORE-CALL.
000520
000530 DECLARATIVES.
000540 ERROR-ARCHIVIO SECTION.
000550			USE AFTER STANDARD ERROR PROCEDURE ON ARKLIB.
000560 EX-ERRORE-ARCHIVIO.
000570			EXIT.
000580 END DECLARATIVES.
000590
000600
000610
000620          MOVE SPACES TO FILE-LIB.
000630                  
000640          STRING "/temp/SHA" DELIMITED BY SIZE 
000650           SECTION-CALL ".log" 
000660           DELIMITED BY SIZE INTO FILE-LIB.
000670
000680          MOVE SPACES TO VALORE-CALL.
000690           
000700          OPEN INPUT ARKLIB.
000710
000720          READ ARKLIB NEXT RECORD AT END GO TO FINE.
000730          
000740          MOVE DATI-LIB TO VALORE-CALL.
000750          
000760  FINE.
000770          CLOSE ARKLIB.
000780          
000790          
000800          GOBACK.
000810

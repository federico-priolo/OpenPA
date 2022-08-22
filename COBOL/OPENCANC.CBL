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
000190 IDENTIFICATION   DIVISION.
000200 PROGRAM-ID       OPENCANC.
000210 ENVIRONMENT      DIVISION.
000220 CONFIGURATION    SECTION.
000250			COPY "SPECIAL.CBL".
000251 INPUT-OUTPUT     SECTION.
000260 FILE-CONTROL.
000270
000280          COPY "SELWEB.CBL".
000290          COPY "SELVIEW.CBL".
000300
000310
000320
000330 DATA             DIVISION.
000340 FILE SECTION.
000350
000360          COPY "FDEWEB.CBL".
000370          COPY "FDEVIEW.CBL".
000380
000390 WORKING-STORAGE  SECTION.
000400
000410          COPY "COBW3.CBL".
000420          COPY "GLOBALS.CBL".
000430          COPY "IMAGES.CBL".
000440*
000450 PROCEDURE  DIVISION.
000460*
000470          PERFORM INIZIO-WEB   THRU EX-INIZIO-WEB.
000480
000490          COPY "INIZIALI.CBL".
000500
000510
000520          MOVE "MK-ITEM"       		TO FIELD-WEB
000530          PERFORM READ-WEB     		THRU EX-READ-WEB
000540          MOVE VALUE-WEB       		TO STRINGA-VIEW   
000550          MOVE "CHIAVE-DELETE" 	   	TO NOME-VIEW
000560          PERFORM SCRITTURA-VIEW  	THRU EX-SCRITTURA-VIEW
000570	
000580          MOVE "MK-FILE"       		TO FIELD-WEB
000590          PERFORM READ-WEB     		THRU EX-READ-WEB
000600          MOVE VALUE-WEB       		TO STRINGA-VIEW   
000610          MOVE "FILE-DELETE"        	TO NOME-VIEW
000620          PERFORM SCRITTURA-VIEW  	THRU EX-SCRITTURA-VIEW
000630
000640          MOVE "MK-FILE"       		TO FIELD-WEB
000650          PERFORM READ-WEB     		THRU EX-READ-WEB
000660          MOVE VALUE-WEB       		TO STRINGA-VIEW   
000670
000680          EVALUATE STRINGA-VIEW       
000690             WHEN "TA"                MOVE "TABELLE"   TO STRINGA-VIEW
000700             WHEN "CA"                MOVE "CAUSALI"   TO STRINGA-VIEW
000710             WHEN "OR"                MOVE "ORARI  "   TO STRINGA-VIEW
000720             WHEN "PR"                MOVE "PROFILI" 	 TO STRINGA-VIEW
000730             WHEN "MA"                MOVE "MATRICOLE" TO STRINGA-VIEW
000731             
000740          END-EVALUATE
000750          
000760          MOVE "FLUSSO-DELETE"        TO NOME-VIEW
000770          PERFORM SCRITTURA-VIEW  	THRU EX-SCRITTURA-VIEW
000810
000820			MOVE "TEMPLATE/DELETE.HTM"  TO PAGE-WEB.
000830
000840          PERFORM MAKE-WEB     THRU EX-MAKE-WEB.
000850          
000860 FINE.
000870
000880		   
000890          PERFORM CLOSE-VIEW   THRU EX-CLOSE-VIEW.
000900
000910          PERFORM FINE-WEB     THRU EX-FINE-WEB.
000920
000930          GOBACK.
000940
000950          COPY "PIOWEB1.CBL".
000960          COPY "PIOVIEW.CBL".
000970

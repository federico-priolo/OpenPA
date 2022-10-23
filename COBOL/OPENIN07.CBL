000010*
000020* Copyright (C) 2010-2020 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
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
000200 PROGRAM-ID       OPENIN07.
000210 ENVIRONMENT      DIVISION.
000220 CONFIGURATION    SECTION.
000230 SPECIAL-NAMES.
000240          DECIMAL-POINT IS COMMA.
000250 INPUT-OUTPUT     SECTION.
000260 FILE-CONTROL.
000270
000280          COPY "SELWEB.CBL".
000290          COPY "SELVIEW.CBL".
000300          COPY "SELTAB.CBL".
000310
000320
000330
000340 DATA             DIVISION.
000350 FILE SECTION.
000360
000370          COPY "FDEWEB.CBL".
000380          COPY "FDEVIEW.CBL".
000390          COPY "FDETAB.CBL".
000400
000410 WORKING-STORAGE  SECTION.
000420
000430          COPY "COBW3.CBL".
000440          COPY "GLOBALS.CBL".
000450          COPY "IMAGES.CBL".
000460*
000470 PROCEDURE  DIVISION.
000480*
000490          PERFORM INIZIO-WEB   THRU EX-INIZIO-WEB.
000500
000530                                             
000540
000580          MOVE "INSERT07.HTM"    TO PAGE-WEB
000590          PERFORM MAKE-WEB     THRU EX-MAKE-WEB.
000600
000610
000620 FINE.
000630          PERFORM CLOSE-VIEW   THRU EX-CLOSE-VIEW.
000660
000670          PERFORM FINE-WEB     THRU EX-FINE-WEB.
000680
000690          GOBACK.
000700
000710          COPY "PIOWEB.CBL".
000720          COPY "PIOVIEW.CBL".
000740
000750
000850
000860
000870 REPLACE-WEB.
000880
000890          PERFORM REPLACE-STANDARD-WEB THRU EX-REPLACE-STANDARD-WEB.
000900
000910
000920 EX-REPLACE-WEB.
000930          EXIT.
000940

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
000200 PROGRAM-ID       OPENPA09.
000210 ENVIRONMENT      DIVISION.
000220 CONFIGURATION    SECTION.
000230			COPY "SPECIAL.CBL".
000240 INPUT-OUTPUT     SECTION.
000250 FILE-CONTROL.
000260
000270          COPY "SELWEB.CBL".
000280          COPY "SELVIEW.CBL".
000300
000310
000320 DATA             DIVISION.
000330 FILE SECTION.
000340
000350          COPY "FDEWEB.CBL".
000360          COPY "FDEVIEW.CBL".
000371
000380 WORKING-STORAGE  SECTION.
000390
000400          COPY "COBW3.CBL".
000410          COPY "GLOBALS.CBL".
000420          COPY "IMAGES.CBL".
000430*
000440 PROCEDURE  DIVISION.
000450*
000460          PERFORM INIZIO-WEB   THRU EX-INIZIO-WEB.
000470
000480                                             
000490
000521
000790			MOVE "NEWLOGIN.HTM"  TO PAGE-WEB.
000800
000810          PERFORM MAKE-WEB     THRU EX-MAKE-WEB.
000820          
000830 FINE.
000840
000861          PERFORM CLOSE-VIEW   THRU EX-CLOSE-VIEW.
000870
000880          PERFORM FINE-WEB     THRU EX-FINE-WEB.
000890
000900          GOBACK.
000910
000920          COPY "PIOWEB1.CBL".
000930          COPY "PIOVIEW.CBL".
000940

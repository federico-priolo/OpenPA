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
000028 IDENTIFICATION   DIVISION.
000029 PROGRAM-ID       OPENPA02.
000030 ENVIRONMENT      DIVISION.
000040 CONFIGURATION    SECTION.
000070			COPY "SPECIAL.CBL".
000071 INPUT-OUTPUT     SECTION.
000080 FILE-CONTROL.
000090
000100          COPY "SELWEB.CBL".
000110          COPY "SELVIEW.CBL".
000120          COPY "SELTAB.CBL".
000130
000140
000150
000160 DATA             DIVISION.
000170 FILE SECTION.
000180
000190          COPY "FDEWEB.CBL".
000200          COPY "FDEVIEW.CBL".
000210          COPY "FDETAB.CBL".
000220
000230 WORKING-STORAGE  SECTION.
000320
000330          COPY "COBW3.CBL".
000340          COPY "GLOBALS.CBL".
000350          COPY "IMAGES.CBL".
000360*
000370 PROCEDURE  DIVISION.
000380*
000390          PERFORM INIZIO-WEB   THRU EX-INIZIO-WEB.
000420
000540
000541			MOVE "OPENTA01"		TO PROGRAMMA-WEB
000542			MOVE "OPENTA01.DLL" TO LIBRERIA-WEB.
000543
000544	
000545			PERFORM CALL-WEB THRU EX-CALL-WEB.
000553
000554
000560 FINE.
000610          PERFORM FINE-WEB     THRU EX-FINE-WEB.
000620
000630          GOBACK.
000640
000650          COPY "PIOWEB1.CBL".
000660          COPY "PIOVIEW.CBL".
000670          COPY "PIOTAB.CBL".
000680			

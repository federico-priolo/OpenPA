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
000028
000029  FD ARKMENU LABEL RECORD  IS STANDARD GLOBAL
000030             BLOCK  CONTAINS 512 CHARACTERS
000040             RECORD CONTAINS 512 CHARACTERS.
000050*
000060  01 MENU.
000070   02 CHIAVE-MENU.
000080    05 NUM-MENU                  PIC 9(7).
000090   02 CHIAVE-SEC-MENU.
000100    05 MOD-MENU                  PIC XX.
          05 CHIAVE-TER-MENU.
000110     15 ENT-MENU                 PIC XX.
000120     15 FUNZ-MENU                PIC XX.
000130   02 ENT-PROG-MENU              PIC XX.
000140   02 FUNZ-PROG-MENU             PIC XX.
000150   02 DESC-MENU                  PIC X(40).
000160   02 PROG-MENU                  PIC X(14).
000170   02 DLL-MENU                   PIC X(14).
000180   02 IMAGE-MENU                 PIC X(40).
000190   02 SUBLIV-MENU                PIC XX.
000200   02 MULTI-USER-MENU            PIC X.
000210   02 RICICLO-USER-MENU          PIC X.
000220   02 PASSO-MENU                 PIC X.
000230   02 BARRA-MENU                 PIC X.
000240   02 PERS-MENU                  PIC X.
000250   02 VERS-MENU                  PIC XXXXXX.
000260   02 DATA-MENU                  PIC X(10).
000270   02 IMG-MENU                   PIC 9999.
000280   02 FILLER                     PIC X(360).

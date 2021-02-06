000010*
000011* Copyright (C) 2010-2020 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
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
000028*
000029  FD ARKABI LABEL RECORD  IS STANDARD GLOBAL
000030             BLOCK  CONTAINS 64  CHARACTERS
000040             RECORD CONTAINS 64  CHARACTERS.
000050*
000060  01 ABILITAZIONE.
000070   02 CHIAVE-ABI.
000080    05 ENTE-ABI                  PIC 99.
000090    05 GRUPPO-ABI                PIC 9999.
000100    05 CHIAMATA-ABI.
000110      09 MOD-ABI                 PIC XX.
000120      09 ENT-ABI                 PIC XX.
000130      09 FUNZ-ABI                PIC XX.
000140   02 FILLER                     PIC X(52).
000150

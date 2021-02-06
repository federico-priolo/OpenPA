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
000029** tracciato record archivio VIEW
000030*
000040  FD ARKVIEW   EXTERNAL.
000050  01 VIEW.
000060          02 CHIAVE-VIEW.
000070           05 NOME-VIEW                    PIC X(64).
000080          02 DATI-VIEW.
000090           05 TIPO-VIEW                    PIC X.
000100           05 STRINGA-VIEW                 PIC X(1024).
000110           05 IMPORTO-VIEW                 PIC S9(12)V99
000120              SIGN IS LEADING SEPARATE.
000130           05 NUMERO-VIEW                  PIC 9(9).
000140           05 DATA-VIEW.
000150              09 AA-VIEW                   PIC 9999.
000160              09 MM-VIEW                   PIC 99.
000170              09 GG-VIEW                   PIC 99.
000180           05 EDIT-VIEW                    PIC X(500).
000190           05 VIS-VIEW                     PIC -.---.---.--9,99.
000200           05 VALUE-VIEW                   PIC X(100).
000210           05 FILLER-VIEW                  PIC X(312).

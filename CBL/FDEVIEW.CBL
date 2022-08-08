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
000200** tracciato record archivio VIEW         RECORD 3072 BYTE
000210*
000220  FD ARKVIEW  GLOBAL  EXTERNAL.
000230  01 VIEW.
000240          02 CHIAVE-VIEW.
000250           05 NOME-VIEW                    PIC X(64).
000260          02 CHIAVE-DATO-VIEW              PIC X(8).
000270          02 DATI-VIEW.
000280           05 TIPO-VIEW                    PIC X.
000290           05 STRINGA-VIEW                 PIC X(1024).
000300           05 IMPORTO-VIEW                 PIC S9(12)V99
000310              SIGN IS LEADING SEPARATE.
000320           05 NUMERO-VIEW                  PIC 9(9).
000330           05 DATA-VIEW.
000340              09 AA-VIEW                   PIC 9999.
000350              09 MM-VIEW                   PIC 99.
000360              09 GG-VIEW                   PIC 99.
000370           05 EDIT-VIEW                    PIC X(1024).
000380           05 VIS-VIEW                     PIC -.---.---.--9,99.
000390           05 FILLER                       PIC X(1928).

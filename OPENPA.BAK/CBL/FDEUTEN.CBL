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
000028*
000029** tracciato record archivio anagrafiche UTENTI PROCEDURA
000030*
000040  FD ARKUTEN 
000050           RECORD CONTAINS 1024 CHARACTERS EXTERNAL.
000060  01 UTENTE.
000070          02 CHIAVE-UTEN.
000080           05 NOME-UTEN                    PIC X(50).
000090          02 DATI-BASE.
000100           05 PASSWORD-UTEN                PIC X(30).
000110           05 VOLTE-UTEN                   PIC 9999.
000120           05 MAX-VOLTE-UTEN               PIC 9999.
000130          02 CHIAVE-DIP-UTEN.
000140           05 ENTE-DIP-UTEN                PIC 99.
000150           05 PROG-DIP-UTEN                PIC 9(7).
000160          02 DATA-ACC-UTEN.
000170            09 AA-ACC-UTEN                 PIC 9999.
000180            09 MM-ACC-UTEN                 PIC 99.
000190            09 GG-ACC-UTEN                 PIC 99.
000200          02 ORARIO-ACC-UTEN.
000210            09 ORA-ACC-UTEN                PIC 99.
000220            09 MIN-ACC-UTEN                PIC 99.
000230          02 ORARIO-SCA-UTEN.
000240            09 ORA-SCA-UTEN                PIC 99.
000250            09 MIN-SCA-UTEN                PIC 99.
000260          02 MINUTI-SCA-UTEN               PIC 9(9).
000270          02 ORE-UTEN                      PIC X(5).
000280          02 ACCESSI-UTEN                  PIC 9(10).
000290          02 DESC-UTEN                     PIC X(40).
000300          02 MENU-UTEN                     PIC X(100).
000310          02 CONTA-UTEN                    PIC 9(9).
000320          02 TAB-UTEN                      PIC XX.
000330          02 DEL-FILE-UTEN                 PIC X.
000340          02 IP-UTEN                       PIC X(32).
000350          02 PORTA-UTEN                    PIC XXXXX.
000360          02 ANNO-UTEN                     PIC 9999.
000370          02 INIZIO-UTEN                   PIC 9999.
000380          02 IP-REG-UTEN                   PIC X(32).
000390          02 FILLER-UTEN                   PIC X(52).
000400          02 TIPO-UTEN                     PIC X.
000410          02 GRUPPO-UTEN                   PIC 9999.
000420          02 SW-LAVORO-UTEN                PIC X.
000430          02 DATA-SCAD-UTEN.
000440            09 AA-SCAD-UTEN                PIC 9999.
000450            09 MM-SCAD-UTEN                PIC 99.
000460            09 GG-SCAD-UTEN                PIC 99.
000470          02 PATH-FILE-UTEN                PIC X(100).
000480          02 TIMEOUT-UTEN                  PIC 999.
000490          02 MINUTI-ACC-UTEN               PIC 9(9).
000500          02 SCADUTO-UTEN                  PIC 9.
000510          02 FILLER-UTEN                   PIC X(479).

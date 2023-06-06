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
000200  FD ARKWEB LABEL RECORD  IS STANDARD GLOBAL.
000210*
000220  01 REC-WEB.
000230      05 DATI-WEB			PIC X(2048).
000240
000250
000260
000270*
000280  FD ARKLIB LABEL RECORD  IS STANDARD GLOBAL.
000290
000300*
000310  01 LIBRERIA.    
000320      02 DATI-LIB             PIC X(2048).
000330
000340
000350
000360*
000370  FD ARKLOG LABEL RECORD  IS STANDARD GLOBAL.
000380
000390*
000400  01 LOGGATO.    
000410      02 DATI-LOG. 
000420        05 DATA-LOG       PIC X(06).
000430        05 FILLER1-LOG    PIC X.
000440        05 ORARIO-LOG     PIC X(6).
000450        05 FILLER1-LOG    PIC X.
000460        05 NOME-COBOL-LOG PIC X(30).
000470        05 FILLER1-LOG    PIC X.
000480        05 TIPO-LOG       PIC X.
000490        05 FILLER1-LOG    PIC X.
000500        05 SIZE-LOG       PIC XXXX.
000510        05 FILLER1-LOG    PIC X.
000520        05 NUMERO-LOG     PIC X(20).
000530        05 FILLER1-LOG    PIC X.
000540        05 VALORE-LOG     PIC X(50).
000550
000560
000570

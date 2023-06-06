000010*
000020*
000030* Copyright (C) 2010-2021 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000040*
000050* This program is free software; you can redistribute it and/or modify
000060* it under the terms of the GNU General Public License as published by
000070* the Free Software Foundation; either version 2, or (at your option)
000080* any later version.
000090*
000100* This program is distributed in the hope that it will be useful,
000110* but WITHOUT ANY WARRANTY; without even the implied warranty of
000120* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000130* GNU General Public License for more details.
000140*
000150* You should have received a copy of the GNU General Public License
000160* along with this software; see the file COPYING.  If not, write to
000170* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000180* Boston, MA 02110-1301 USA
000190*
000200******               Select flusso anagrafico VIEW
000210*
000220          SELECT ARKVIEW ASSIGN TO FILE-VIEW
000230          ORGANIZATION IS INDEXED
000240          ACCESS MODE  IS DYNAMIC
000250          RECORD KEY   IS CHIAVE-VIEW
000260          ALTERNATE RECORD KEY
000270                       IS CHIAVE-DATO-VIEW
000280                          DUPLICATES
000290          LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
000300          FILE STATUS  IS STATUS-VIEW.
000310
000320
000330
000340
000350
000360			COPY "SELDATO.CBL".
000370

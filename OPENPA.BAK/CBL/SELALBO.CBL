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
000029***********               Select del flusso PAROLE
000030*
000040          SELECT ARKALBO ASSIGN TO FILE-ALBO
000050          ORGANIZATION IS INDEXED
000060          ACCESS MODE  IS DYNAMIC
000070          RECORD KEY   IS CHIAVE-ALBO
000080          ALTERNATE RECORD KEY IS DATA-ALBO        WITH DUPLICATES
000090          ALTERNATE RECORD KEY IS CHIAVE-SEC-ALBO  WITH DUPLICATES
000100          ALTERNATE RECORD KEY IS CHIAVE-TER-ALBO  WITH DUPLICATES
000110          ALTERNATE RECORD KEY IS CHIAVE-QUA-ALBO  WITH DUPLICATES
000120          LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
000130          FILE STATUS  IS STATUS-ALBO.
000140*
000150***********
000160*

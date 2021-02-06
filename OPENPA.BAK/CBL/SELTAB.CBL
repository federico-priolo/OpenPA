000010*
000020***********               Select flusso anagrafico TABELLE
000030*      *
000031* Copyright (C) 2010-2020 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000032*
000033* This program is free software; you can redistribute it and/or modify
000034* it under the terms of the GNU General Public License as published by
000035* the Free Software Foundation; either version 2, or (at your option)
000036* any later version.
000037*
000038* This program is distributed in the hope that it will be useful,
000039* but WITHOUT ANY WARRANTY; without even the implied warranty of
000040* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000041* GNU General Public License for more details.
000042*
000043* You should have received a copy of the GNU General Public License
000044* along with this software; see the file COPYING.  If not, write to
000045* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000046* Boston, MA 02110-1301 USA
000047*
000048          SELECT ARKTAB ASSIGN TO FILE-TAB
000050          ORGANIZATION IS INDEXED
000060          ACCESS MODE  IS DYNAMIC
000070          RECORD KEY   IS CHIAVE-TAB
000080          LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
000090          FILE STATUS  IS STATUS-TAB.
000100

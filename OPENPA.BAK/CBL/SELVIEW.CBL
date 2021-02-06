000010*
000020*
000021* Copyright (C) 2010-2021 Federico Priolo TP ONE SRL federico.priolo@tp-one.it
000022*
000023* This program is free software; you can redistribute it and/or modify
000024* it under the terms of the GNU General Public License as published by
000025* the Free Software Foundation; either version 2, or (at your option)
000026* any later version.
000027*
000028* This program is distributed in the hope that it will be useful,
000029* but WITHOUT ANY WARRANTY; without even the implied warranty of
000030* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
000031* GNU General Public License for more details.
000032*
000033* You should have received a copy of the GNU General Public License
000034* along with this software; see the file COPYING.  If not, write to
000035* the Free Software Foundation, 51 Franklin Street, Fifth Floor
000036* Boston, MA 02110-1301 USA
000037*
000038******               Select flusso anagrafico VIEWTI
000039*
000040          SELECT ARKVIEW ASSIGN TO FILE-VIEW
000050          ORGANIZATION IS INDEXED
000060          ACCESS MODE  IS DYNAMIC
000070          RECORD KEY   IS CHIAVE-VIEW
000110          LOCK MODE    IS AUTOMATIC WITH LOCK ON RECORD
000120          FILE STATUS  IS STATUS-VIEW.
000121
000130

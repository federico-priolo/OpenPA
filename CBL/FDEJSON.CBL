000010
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
000200*
000210  FD ARKJSON LABEL RECORD  IS STANDARD GLOBAL
000220				RECORD IS VARYING IN SIZE FROM 1 TO 512 CHARACTERS
000230                      DEPENDING ON WMAXJSON.
000240
000250
000260
000270
000280
000290*
000300  01 REC-JSON.
000310		 02 PIC-JSON  PIC X OCCURS 1 TO 512 DEPENDING ON WMAXJSON.
000320
000330
000340

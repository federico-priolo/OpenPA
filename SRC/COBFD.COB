     1  IDENTIFICATION DIVISION. 
     2  PROGRAM-ID. COBFD.
     3
     4*---------------------------------------------------------------
     5* COSTRUISCE IL DIZIONARIO PER LA FD SPECIFICATA                
     6*---------------------------------------------------------------
     7*
     8* Copyright (C) Federico Priolo TP ONE SRL federico.priolo@tp-on
     9*
    10* This program is free software; you can redistribute it and/or 
    11* it under the terms of the GNU General Public License as publis
    12* the Free Software Foundation; either version 2, or (at your op
    13* any later version.
    14*
    15* This program is distributed in the hope that it will be useful
    16* but WITHOUT ANY WARRANTY; without even the implied warranty of
    17* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    18* GNU General Public License for more details.
    19*
    20* You should have received a copy of the GNU General Public Lice
    21* along with this software; see the file COPYING.  If not, write
    22* the Free Software Foundation, 51 Franklin Street, Fifth Floor
    23* Boston, MA 02110-1301 USA
    24*                                                               
    25*                                                               
    26*---------------------------------------------------------------
    27  ENVIRONMENT DIVISION.
    28*-------------------------------------------------Fujitsu-------
    29  CONFIGURATION SECTION.
    30  SOURCE-COMPUTER.        PC-IBM.
    31  OBJECT-COMPUTER.        PC-IBM.
    32  SPECIAL-NAMES.
    33 
    34          ARGUMENT-NUMBER IS ARG-NUM
    35          ARGUMENT-VALUE  IS ARG-VAL
    36          DECIMAL-POINT   IS COMMA.
    37
    38  INPUT-OUTPUT SECTION.
    39  FILE-CONTROL.
    40
    41*              
    42** your copy fd to examine
    43*
    44
    45          SELECT ARK-IN ASSIGN TO FILE-IN
    46           ORGANIZATION IS LINE SEQUENTIAL
    47           FILE STATUS  IS STATUS-IN.
    48*              
    49** isam to figure out size and offset...
    50*
    51          SELECT ARKDATA ASSIGN ".\WORKAREA.DAT"
    52          
    53           ORGANIZATION IS INDEXED
    54           ACCESS MODE  IS DYNAMIC
    55           RECORD KEY   IS KEY-DATA
    56			 ALTERNATE RECORD KEY IS KEY-NAME-DATA WITH DUPLICATES
    57           FILE STATUS  IS STATUS-DATA.
    58
    59
    60*              
    61** The output result 
    62*
    63
    64          SELECT ARK-OUT ASSIGN TO FILE-OUT
    65           ORGANIZATION IS LINE SEQUENTIAL
    66           FILE STATUS  IS STATUS-OUT.
    67
    68
    69  DATA DIVISION.
    70  FILE SECTION.
    71
    72  FD ARK-IN  LABEL RECORD IS STANDARD.
    73
    74  01 REC-IN.
    75    02 FILLER                    PIC X(80).
    76    
    77  FD ARK-OUT  LABEL RECORD IS STANDARD.
    78
    79  01 REC-OUT.
    80    02 FILLER                    PIC X(80).
    81
    82*
    83  FD ARKDATA  LABEL RECORD IS STANDARD GLOBAL.
    84*
    85  01 REC-DATA.
    86
    87   02 KEY-DATA					PIC 9(9).          
    88   02 KEY-NAME-DATA.
    89		05 LEV-DATA					PIC 99.
    90      05 FIELD-DATA               PIC X(30).
    91   02 FIELDS-DATA.
    92		 05 LEVEL-DATA				PIC 99.
    93		 05 NAME-DATA				PIC X(30).
    94		 05 FILLER-DATA				PIC X.
    95       05 PICTURE-DATA            PIC X(30).
    96		 05 FILLER-DATA				PIC X.
    97       05 TYPE-DATA               PIC X(08).
    98       05 OCCURS-DATA             PIC 9(2).
    99		 05 FILLER-DATA				PIC X.
   100       05 SIZE-DATA               PIC 9(7).
   101		 05 FILLER-DATA				PIC X.
   102       05 OFFSET-DATA             PIC 9(7).
   103	     05 REDEFINES-DATA			PIC X(30).    
   104       05 ARRAY-SIZE-DATA         PIC 9(7).
   105	     05 FLAG-REDEFINES-DATA		PIC X.    
   106
   107  WORKING-STORAGE SECTION.
   108
   109  77 NUM                         PIC 9(4) BINARY.
   110  77 FILE-DATA                   PIC X(20) VALUE "ARKDATA".
   111  77 STATUS-DATA                 PIC XX VALUE "00".
   112  77 FINE-FILE                   PIC X.
   113  77 STATUS-IN                   PIC XX VALUE "00".
   114  77 STATUS-OUT                  PIC XX VALUE "00".
   115
   116  77 IND                         PIC 999.
   117  77 IND1                        PIC 999.
   118  77 IND2                        PIC 999.
   119  77 IND3                        PIC 999.
   120  77 IND4                        PIC 999.
   121
   122  01 FILE-IN                     PIC X(50).
   123  01 FILE-OUT                    PIC X(50).
   124
   125  77 WSIZE					   PIC 9(9).
   126  77 WOFFSET                     PIC 9(9).
   127  77 WLEVEL                      PIC 99.
   128  77 WPICTURE					   PIC X(30).
   129	77 WKEY						   PIC 9(9).
   130  77 WREDEFINES				   PIC X(30).
   131
   132  01 STRINGA                     PIC X(18).
   133  01 NUMERO                      PIC 9(18).
   134
   135
   136  01 TAB-BUFFER.
   137          02 IND-BUFFER          PIC 99.
   138          02 IND1-BUFFER         PIC 99.
   139          02 BUFFER              PIC X(30) OCCURS 50 TIMES.
   140  
   141  01 TAB-STRINGA				   PIC X(1504) VALUE SPACE.
   142  01 COUNT-ITEM				   PIC 9(9)    VALUE ZEROS.
   143  
   144  PROCEDURE DIVISION.
   145  DECLARATIVES.
   146  MANCA-FILE SECTION.
   147 		USE AFTER STANDARD ERROR PROCEDURE ON ARK-IN.
   148  MANCAFILE.
   149 		CONTINUE.
   150  EX-MANCAFILE.
   151 	    EXIT.
   152  END DECLARATIVES.
   153
   154  MAIN SECTION.
   155  INIZIO.
   156
   157
   158
   159          PERFORM OPEN-FILES THRU EX-OPEN-FILES.
   160
   161          MOVE SPACES TO FINE-FILE.
   162			MOVE ZEROS  TO COUNT-ITEM          
   163
   164          PERFORM PROCESS-IN     THRU EX-PROCESS-IN
   165             UNTIL FINE-FILE = "S".
   166          
   167          PERFORM BUILD          THRU EX-BUILD.
   168
   169          PERFORM CALCULATE      THRU EX-CALCULATE.
   170
   171          PERFORM OFFSET         THRU EX-OFFSET.
   172
   173          PERFORM EXPORT         THRU EX-EXPORT.
   174
   175  FINE.
   176          CLOSE ARK-IN ARKDATA ARK-OUT.
   177          GOBACK.
   178          
   179          
   180  OPERATE.
   181
   182          IF FINE-FILE = "S" GO TO EX-OPERATE.
   183  
   184          INITIALIZE TAB-BUFFER.
   185  
   186  
   187          UNSTRING REC-IN DELIMITED BY ALL SPACES         
   188           INTO BUFFER(1)
   189                BUFFER(2)
   190                BUFFER(3)
   191                BUFFER(4)
   192                BUFFER(5)
   193                BUFFER(6)
   194                BUFFER(7)
   195                BUFFER(8)
   196                BUFFER(9)
   197                BUFFER(10)
   198                BUFFER(11)
   199                BUFFER(12)
   200                BUFFER(13)
   201                BUFFER(14)
   202                BUFFER(15)
   203                  TALLYING IND-BUFFER
   204  
   205          PERFORM VARYING IND FROM  LENGTH OF REC-IN BY -1 UNTIL
   206            REC-IN(IND:1) NOT = SPACES   
   207           CONTINUE
   208          END-PERFORM
   209          
   210          IF REC-IN(IND:1) = "." GO TO END-OPERATE.
   211
   212          PERFORM READ-IN       THRU EX-READ-IN
   213            
   214          UNSTRING REC-IN DELIMITED BY ALL SPACES         
   215           INTO BUFFER(16)
   216                BUFFER(17)
   217                BUFFER(18)
   218                BUFFER(19)
   219                BUFFER(20)
   220                BUFFER(21)
   221                BUFFER(22)
   222                BUFFER(23)
   223                BUFFER(24)
   224                BUFFER(25)
   225                BUFFER(26)
   226                BUFFER(27)
   227                BUFFER(28)
   228                BUFFER(29)
   229                BUFFER(30).
   230                
   231           IF IND-BUFFER NOT = 15
   232            ADD  1  TO IND-BUFFER
   233            MOVE 16 TO IND1-BUFFER
   234            PERFORM 15 TIMES
   235            MOVE BUFFER(IND1-BUFFER)  TO BUFFER(IND-BUFFER) 
   236            MOVE SPACES               TO BUFFER(IND1-BUFFER)
   237            ADD 1                     TO IND-BUFFER IND1-BUFFER
   238            END-PERFORM.
   239   
   240
   241  END-OPERATE.
   242
   243			ADD 1 TO COUNT-ITEM.
   244
   245			MOVE FUNCTION UPPER-CASE(TAB-BUFFER)	TO TAB-STRINGA
   246			MOVE TAB-STRINGA 						TO TAB-BUFFER
   247
   248			INITIALIZE REC-DATA 
   249
   250*** FIRST ITEM CONTAINS THE RECORD LEVEL
   251
   252			PERFORM VARYING IND FROM 1 BY 1 UNTIL IND > 30         
   253
   254
   255**** HERE A COBOL LEVEL...
   256
   257			IF BUFFER(IND) > SPACES                
   258			 AND NAME-DATA = SPACES
   259			 AND BUFFER(IND) (1:1) NUMERIC
   260
   261
   262			MOVE BUFFER(IND)		TO STRINGA
   263			PERFORM ALFA-TO-NUM		THRU EX-ALFA-TO-NUM
   264			MOVE NUMERO				TO LEVEL-DATA 
   265
   266****      ...AND AFTER THE NAME OF COBOL FIELD
   267				
   268			ADD 1					TO IND
   269			MOVE BUFFER(IND)		TO FIELD-DATA NAME-DATA
   270
   271			ADD 1					TO IND
   272
   273**** here a field WITHOUT PICTURE... E.G. 01 NAME.
   274
   275			IF BUFFER(IND) = SPACES
   276			MOVE "Group"			TO PICTURE-DATA
   277			END-IF
   278
   279			END-IF
   280
   281
   282			IF BUFFER(IND) = "REDEFINES"
   283			ADD 1					TO IND
   284			MOVE BUFFER(IND)		TO REDEFINES-DATA
   285			END-IF
   286
   287			
   288			IF BUFFER(IND)(1:3) = "PIC"
   289			ADD 1					TO IND
   290			MOVE BUFFER(IND)		TO PICTURE-DATA
   291	
   292			EVALUATE PICTURE-DATA(1:1)
   293	
   294			 WHEN "X"	MOVE "AN" TO TYPE-DATA
   295			 WHEN "S"	MOVE "N"  TO TYPE-DATA
   296						PERFORM DO-NUMBER-TYPE THRU EX-DO-NUMBER-TYPE
   297
   298			 WHEN "9"	MOVE "N"  TO TYPE-DATA
   299						PERFORM DO-NUMBER-TYPE THRU EX-DO-NUMBER-TYPE
   300
   301			 WHEN "A"	MOVE "A"  TO TYPE-DATA
   302		 	END-EVALUATE
   303
   304
   305			END-IF
   306
   307			IF BUFFER(IND) = "OCCURS"
   308
   309**** here a field WITHOUT PICTURE... E.G. 02 NAME OCCURS 5 TIMES...
   310
   311			 MOVE ZEROS				TO IND1
   312			 INSPECT TAB-BUFFER TALLYING IND1 FOR ALL "PIC"
   313			 IF IND1 = ZEROS
   314			 MOVE "Group"			TO PICTURE-DATA
   315			 END-IF
   316
   317			ADD 1					TO IND
   318			MOVE BUFFER(IND)		TO STRINGA
   319			PERFORM ALFA-TO-NUM		THRU EX-ALFA-TO-NUM
   320			MOVE NUMERO				TO OCCURS-DATA
   321			END-IF			
   322
   323
   324			END-PERFORM.
   325
   326			PERFORM CALCULATE-SIZE THRU EX-CALCULATE-SIZE.
   327
   328			MOVE COUNT-ITEM			TO KEY-DATA. 
   329
   330			IF PICTURE-DATA = SPACES
   331		      MOVE "Group"			TO PICTURE-DATA.
   332
   333			INSPECT KEY-NAME-DATA REPLACING ALL "." BY " "
   334
   335			WRITE REC-DATA 
   336			 INVALID KEY CONTINUE.
   337
   338			 IF STATUS-DATA = "02"
   339			  IF NAME-DATA(1:6) NOT = "FILLER"
   340			  DISPLAY "Found duplicates name with the same level:" 
   341				NAME-DATA
   342			 END-IF.
   343
   344
   345 EX-OPERATE.
   346          EXIT.
   347
   348 DO-NUMBER-TYPE.
   349
   350			MOVE ZEROS				TO IND1
   351			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL "LEADING"
   352			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL "SEPARATE"
   353			IF IND1 = 2    MOVE "SL" TO TYPE-DATA.
   354
   355			MOVE ZEROS				TO IND1
   356			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL "TRAIDING"
   357			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL "SEPARATE"
   358			IF IND1 = 2   MOVE "ST" TO TYPE-DATA.
   359
   360			MOVE ZEROS				TO IND1
   361			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL " COMP-5"
   362			IF IND1 = 1    MOVE "C5" TO TYPE-DATA.
   363
   364			MOVE ZEROS				TO IND1
   365			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL " COMP-3"
   366			IF IND1 = 1    MOVE "C3" TO TYPE-DATA.
   367
   368			MOVE ZEROS				TO IND1
   369			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL " COMP-1"
   370			IF IND1 = 1    MOVE "C1" TO TYPE-DATA.
   371
   372			MOVE ZEROS				TO IND1
   373			INSPECT TAB-BUFFER TALLYING IND1 FOR ALL " BINARY"
   374			IF IND1 = 1    MOVE "C"  TO TYPE-DATA.
   375
   376
   377 EX-DO-NUMBER-TYPE.
   378			EXIT.
   379
   380          
   381 PROCESS-IN.
   382
   383			IF FINE-FILE = "S" GO TO EX-PROCESS-IN.
   384
   385          PERFORM READ-IN         THRU EX-READ-IN.
   386
   387**** ANY SYNTAX NOT ALLOWED HERE MUST BE SKIPPED (E.G: CLAUSOLE FD...)
   388
   389          PERFORM VARYING IND FROM 7 BY 1 UNTIL IND > LENGTH OF REC-IN
   390           OR REC-IN(IND:1) NOT = SPACES   
   391           CONTINUE
   392          END-PERFORM
   393
   394			IF REC-IN(IND:1) NOT NUMERIC GO TO PROCESS-IN.
   395
   396          PERFORM OPERATE         THRU EX-OPERATE.
   397
   398  EX-PROCESS-IN.
   399          EXIT.
   400
   401          
   402          
   403  READ-IN.
   404  
   405          IF FINE-FILE = "S" GO TO EX-READ-IN.
   406  
   407          MOVE SPACES  TO REC-IN.
   408
   409          READ ARK-IN NEXT RECORD AT END MOVE "S" TO FINE-FILE
   410           GO TO EX-READ-IN.
   411          
   412* SKIP ANY COMMENT LINES IF FOUND (ALSO DECLARED IN A FREE SYTLE
   413
   414          PERFORM VARYING IND FROM 7 BY 1 UNTIL IND > LENGTH OF REC-IN
   415           OR REC-IN(IND:1) NOT = SPACES   
   416           CONTINUE
   417          END-PERFORM
   418          
   419          IF REC-IN(IND:1) = "*" GO TO READ-IN.
   420          
   421          IF REC-IN(IND:) = SPACES GO TO READ-IN.
   422          
   423          IF REC-IN(IND:2) = "88" GO TO READ-IN.
   424          
   425          IF REC-IN(IND:2) = "66" GO TO READ-IN.
   426
   427* REMOVE ANY UNCONSISTENTLY FIELDS
   428
   429			IF REC-IN(1:6) NUMERIC
   430			  MOVE SPACES TO REC-IN(1:6).
   431          
   432  EX-READ-IN.
   433          EXIT.
   434          
   435          
   436          
   437  ALFA-TO-NUM.
   438
   439         MOVE ALL ZEROS          TO NUMERO.
   440         MOVE 18                 TO IND3
   441         PERFORM VARYING IND2 FROM 18 BY -1 UNTIL IND2 = ZERO
   442         IF STRINGA(IND2:1) NUMERIC
   443          MOVE  STRINGA(IND2:1)   TO NUMERO(IND3:1)
   444          SUBTRACT 1 FROM IND3
   445          END-IF
   446
   447         END-PERFORM.
   448
   449  EX-ALFA-TO-NUM.
   450         EXIT.
   451         
   452         
   453  OPEN-FILES.
   454
   455 		ACCEPT NUM FROM ARG-NUM
   456 
   457 		EVALUATE NUM
   458 		 WHEN 2 
   459 	            ACCEPT FILE-IN FROM ARG-VAL
   460      		    ACCEPT FILE-OUT FROM ARG-VAL
   461 		 WHEN 1 
   462 	            ACCEPT FILE-IN FROM ARG-VAL
   463 				MOVE SPACES	TO FILE-OUT
   464    	 WHEN OTHER 
   465 		 DISPLAY "Missing command line parameter for COBFD usage: COBFD fdefile.cbl [your-report.txt]"
   466 		 stop run
   467 
   468 		END-EVALUATE			
   469
   470
   471			IF FILE-OUT = SPACES MOVE "COBFD.TXT" TO FILE-OUT.
   472
   473          OPEN OUTPUT ARKDATA.
   474			CLOSE ARKDATA.
   475			OPEN I-O ARKDATA.
   476			
   477          
   478          OPEN INPUT ARK-IN.
   479          
   480          IF STATUS-IN = "35"
   481             DISPLAY "ERRORE READ-IN FILE :" FILE-IN.
   482
   483			OPEN OUTPUT ARK-OUT.
   484
   485              
   486  EX-OPEN-FILES.
   487          EXIT.
   488          
   489  
   490  CALCULATE-SIZE.
   491
   492		
   493			MOVE ZEROS TO WSIZE
   494
   495			IF PICTURE-DATA = "Group" GO TO END-CALCULATE-SIZE.
   496
   497			MOVE PICTURE-DATA		TO WPICTURE.
   498
   499			MOVE ZERO TO IND1
   500
   501			PERFORM VARYING IND1 FROM LENGTH OF WPICTURE BY -1 UNTIL IND1 = ZEROS
   502			 OR WPICTURE(IND1:1) > SPACES
   503  		 CONTINUE
   504			END-PERFORM
   505
   506*** REMOVE "." from THE END OF THE PICTURE E.G. PIC X.  allowed ONLY FOR 999.999....
   507			
   508			IF WPICTURE(IND1:1) = "."
   509			MOVE SPACES			TO WPICTURE(IND1:1).
   510	
   511			MOVE ZEROS 			TO IND1.
   512			INSPECT WPICTURE TALLYING IND1 FOR ALL "("
   513
   514			IF IND1 = ZEROS GO TO CALCULATE-SINGLE.
   515
   516			PERFORM VARYING IND1 FROM 1 BY 1 UNTIL IND1  > LENGTH OF WPICTURE
   517
   518			 if WPICTURE(IND1:1) = "("
   519			   COMPUTE IND2 = IND1 - 1
   520			   MOVE SPACES					TO WPICTURE(IND2:1) 
   521  		   MOVE SPACES					TO WPICTURE(IND1:1)
   522			   ADD 1 TO IND1
   523			   MOVE 1 TO IND2
   524			   MOVE SPACES TO STRINGA
   525			   PERFORM VARYING IND1 FROM IND1 BY 1 UNTIL WPICTURE(IND1:1) = ")"
   526				MOVE WPICTURE(IND1:1)	TO STRINGA(IND2:1)
   527				MOVE SPACES					TO WPICTURE(IND1:1)
   528				ADD 1						TO IND2
   529			    END-PERFORM
   530
   531				IF WPICTURE(IND1:1) = ")"				
   532				MOVE SPACES					TO WPICTURE(IND1:1)
   533				END-IF
   534
   535				PERFORM ALFA-TO-NUM				THRU EX-ALFA-TO-NUM
   536				ADD  NUMERO						TO WSIZE
   537			 END-IF
   538
   539			END-PERFORM.
   540
   541  CALCULATE-SINGLE.
   542
   543
   544		
   545			PERFORM VARYING IND1 FROM 1 BY 1 UNTIL IND1 > LENGTH OF WPICTURE
   546	
   547			 IF WPICTURE(IND1:1) = "9" ADD 1 TO WSIZE END-IF
   548			 IF WPICTURE(IND1:1) = "X" ADD 1 TO WSIZE END-IF
   549			 IF WPICTURE(IND1:1) = "A" ADD 1 TO WSIZE END-IF
   550			 IF WPICTURE(IND1:1) = "," ADD 1 TO WSIZE END-IF
   551			 IF WPICTURE(IND1:1) = "." ADD 1 TO WSIZE END-IF
   552			 IF WPICTURE(IND1:1) = "B" ADD 1 TO WSIZE END-IF
   553			 IF WPICTURE(IND1:1) = "Z" ADD 1 TO WSIZE END-IF
   554
   555			END-PERFORM.
   556
   557  END-CALCULATE-SIZE.
   558
   559			MOVE WSIZE				TO SIZE-DATA.
   560
   561			IF TYPE-DATA  = "SL" ADD 1 TO SIZE-DATA.
   562			IF TYPE-DATA  = "ST" ADD 1 TO SIZE-DATA.
   563
   564			EVALUATE TYPE-DATA
   565
   566			 WHEN "C5"
   567
   568					EVALUATE SIZE-DATA 
   569						  WHEN 1		MOVE 1 TO SIZE-DATA
   570						  WHEN 2		MOVE 1 TO SIZE-DATA
   571						  WHEN 3		MOVE 2 TO SIZE-DATA
   572						  WHEN 4		MOVE 2 TO SIZE-DATA
   573						  WHEN 5		MOVE 3 TO SIZE-DATA
   574						  WHEN 6		MOVE 3 TO SIZE-DATA
   575						  WHEN 7		MOVE 3 TO SIZE-DATA
   576						  WHEN 8		MOVE 4 TO SIZE-DATA
   577						  WHEN 9		MOVE 4 TO SIZE-DATA
   578						  WHEN 10		MOVE 5 TO SIZE-DATA
   579						  WHEN 11		MOVE 5 TO SIZE-DATA
   580						  WHEN 12		MOVE 5 TO SIZE-DATA
   581						  WHEN 13		MOVE 6 TO SIZE-DATA
   582						  WHEN 14		MOVE 6 TO SIZE-DATA
   583						  WHEN 15		MOVE 7 TO SIZE-DATA
   584						  WHEN 16		MOVE 7 TO SIZE-DATA
   585						  WHEN 17		MOVE 8 TO SIZE-DATA
   586						  WHEN 18		MOVE 8 TO SIZE-DATA
   587					END-EVALUATE
   588			
   589			 WHEN "C3"
   590
   591					EVALUATE SIZE-DATA 
   592						  WHEN 1		MOVE 1 TO SIZE-DATA
   593						  WHEN 2		MOVE 2 TO SIZE-DATA
   594						  WHEN 3		MOVE 2 TO SIZE-DATA
   595						  WHEN 4		MOVE 3 TO SIZE-DATA
   596						  WHEN 5		MOVE 3 TO SIZE-DATA
   597						  WHEN 6		MOVE 4 TO SIZE-DATA
   598						  WHEN 7		MOVE 4 TO SIZE-DATA
   599						  WHEN 8		MOVE 5 TO SIZE-DATA
   600						  WHEN 9		MOVE 5 TO SIZE-DATA
   601						  WHEN 10		MOVE 6 TO SIZE-DATA
   602						  WHEN 11		MOVE 6 TO SIZE-DATA
   603						  WHEN 12		MOVE 7 TO SIZE-DATA
   604						  WHEN 13		MOVE 7 TO SIZE-DATA
   605						  WHEN 14		MOVE 8 TO SIZE-DATA
   606						  WHEN 15		MOVE 8 TO SIZE-DATA
   607						  WHEN 16		MOVE 9 TO SIZE-DATA
   608						  WHEN 17		MOVE 9 TO SIZE-DATA
   609						  WHEN 18		MOVE 10 TO SIZE-DATA
   610					END-EVALUATE
   611
   612			 WHEN "C1"
   613
   614					EVALUATE SIZE-DATA 
   615						  WHEN 1		MOVE 4 TO SIZE-DATA
   616						  WHEN 2		MOVE 4 TO SIZE-DATA
   617						  WHEN 3		MOVE 4 TO SIZE-DATA
   618						  WHEN 4		MOVE 4 TO SIZE-DATA
   619						  WHEN 5		MOVE 4 TO SIZE-DATA
   620						  WHEN 6		MOVE 4 TO SIZE-DATA
   621						  WHEN 7		MOVE 4 TO SIZE-DATA
   622						  WHEN 8		MOVE 4 TO SIZE-DATA
   623						  WHEN 9		MOVE 4 TO SIZE-DATA
   624						  WHEN 10		MOVE 4 TO SIZE-DATA
   625						  WHEN 11		MOVE 4 TO SIZE-DATA
   626						  WHEN 12		MOVE 4 TO SIZE-DATA
   627						  WHEN 13		MOVE 4 TO SIZE-DATA
   628						  WHEN 14		MOVE 4 TO SIZE-DATA
   629						  WHEN 15		MOVE 4 TO SIZE-DATA
   630						  WHEN 16		MOVE 4 TO SIZE-DATA
   631						  WHEN 17		MOVE 4 TO SIZE-DATA
   632						  WHEN 18		MOVE 4 TO SIZE-DATA
   633					END-EVALUATE
   634
   635			WHEN OTHER CONTINUE.
   636
   637			IF OCCURS-DATA NOT = ZEROS
   638			COMPUTE ARRAY-SIZE-DATA = SIZE-DATA * OCCURS-DATA
   639			ELSE
   640			MOVE SIZE-DATA				TO ARRAY-SIZE-DATA.
   641		
   642  EX-CALCULATE-SIZE.
   643			EXIT.
   644     
   645  BUILD.
   646		
   647			MOVE ZEROS TO KEY-DATA.
   648			START ARKDATA KEY IS NOT < KEY-DATA
   649			 INVALID KEY GO TO EX-BUILD.
   650
   651  LOOP-BUILD.
   652
   653			READ ARKDATA NEXT RECORD AT END GO TO END-BUILD.
   654	
   655			IF PICTURE-DATA NOT = "Group" GO TO LOOP-BUILD.
   656
   657			IF SIZE-DATA NOT = ZEROS GO TO LOOP-BUILD.
   658
   659			IF LEVEL-DATA = 01 GO TO LOOP-BUILD.
   660
   661
   662  REINDEX-BUILD.
   663
   664			MOVE ZEROS			TO WSIZE.
   665			MOVE LEVEL-DATA		TO WLEVEL.
   666			MOVE KEY-DATA		TO WKEY.
   667			MOVE REDEFINES-DATA TO WREDEFINES.
   668
   669  LOOP-INTERNAL-LEVEL.
   670
   671			READ ARKDATA NEXT RECORD AT END GO TO LOOP-BUILD1.
   672	
   673			IF LEVEL-DATA NOT > WLEVEL GO TO LOOP-BUILD1.
   674
   675** HERE: found a group inside another group.. this take the priority end loop inside it before.. NAME-DATA
   676
   677			IF PICTURE-DATA  = "Group"
   678** HERE: found a group inside another group with size zeros OK process it
   679
   680				IF SIZE-DATA = ZEROS
   681				 GO TO REINDEX-BUILD
   682				ELSE
   683** HERE: found a group inside another group already processed skip it...
   684
   685				 GO TO LOOP-INTERNAL-LEVEL.
   686
   687			IF WREDEFINES > SPACES
   688			MOVE "S"				TO FLAG-REDEFINES-DATA
   689			REWRITE REC-DATA.
   690			
   691			ADD ARRAY-SIZE-DATA		TO WSIZE.
   692
   693			GO TO LOOP-INTERNAL-LEVEL.
   694
   695  LOOP-BUILD1.
   696
   697			MOVE WKEY			TO KEY-DATA.
   698			READ ARKDATA KEY IS KEY-DATA.
   699			MOVE WSIZE			TO SIZE-DATA.
   700
   701			REWRITE REC-DATA.
   702
   703			GO TO BUILD.
   704
   705  END-BUILD.	
   706		
   707  EX-BUILD.
   708          EXIT.
   709
   710  CALCULATE.
   711		
   712			MOVE ZEROS TO KEY-DATA.
   713			START ARKDATA KEY IS NOT < KEY-DATA
   714			 INVALID KEY GO TO EX-CALCULATE.
   715
   716			MOVE ZEROS 		TO WLEVEL.
   717			MOVE ZEROS		TO WSIZE.
   718
   719  LOOP-CALCULATE.
   720
   721			READ ARKDATA NEXT RECORD AT END GO TO END-CALCULATE.
   722      
               
                
   725			IF REDEFINES-DATA > SPACES
   726			 MOVE LEVEL-DATA	TO WLEVEL
   727			 GO TO LOOP-EXCLUDE.
   728
   729			IF PICTURE-DATA  = "Group" GO TO LOOP-CALCULATE.
   730
   731  LOOP-ADD.
   732
   733			IF FLAG-REDEFINES-DATA = "S" GO TO LOOP-CALCULATE.
   734
   735			
   737			ADD ARRAY-SIZE-DATA TO WSIZE.
   738
   739			GO TO LOOP-CALCULATE.
   740
   741
   742  LOOP-EXCLUDE.
   743
   744			READ ARKDATA NEXT RECORD AT END GO TO END-CALCULATE.
   745
   746			IF LEVEL-DATA > WLEVEL GO TO LOOP-EXCLUDE.
   747
   748			MOVE ZEROS	 TO WLEVEL.
   749			
   750			GO TO LOOP-ADD.		
   751
   752  END-CALCULATE.
   753
   754			MOVE 1 TO KEY-DATA					
   755
   756			READ ARKDATA KEY IS KEY-DATA.
   757			
   758			MOVE WSIZE	TO SIZE-DATA ARRAY-SIZE-DATA.
   759
   760			REWRITE REC-DATA.
   761
   762  EX-CALCULATE.
   763			EXIT.
   764
   765     
   766  EXPORT.
   767
   768			MOVE ZEROS TO KEY-DATA.
   769			START ARKDATA KEY IS NOT < KEY-DATA
   770			 INVALID KEY GO TO EX-EXPORT.
   771
   772  LOOP-EXPORT.
   773
   774			READ ARKDATA NEXT RECORD AT END GO TO EX-EXPORT.
   775
   776			GO TO LOOP-EXPORT.
   777
   778  EX-EXPORT.
   779			EXIT.
   780
   781 
   782  OFFSET.
   783
   784			MOVE 2    	 TO KEY-DATA WOFFSET.
   785
   786			START ARKDATA KEY IS NOT < KEY-DATA
   787			 INVALID KEY GO TO EX-OFFSET.
   788
   789  LOOP-OFFSET.
   790
   791			READ ARKDATA NEXT RECORD AT END GO TO EX-OFFSET.
   792
   793			MOVE WOFFSET		TO OFFSET-DATA
   794
   795			REWRITE REC-DATA.
   796
   797			IF REDEFINES-DATA = SPACES GO TO AHEAD-OFFSET.
   798
   799			MOVE KEY-DATA		TO WKEY
   800			MOVE REDEFINES-DATA	TO FIELD-DATA
   801			MOVE LEVEL-DATA		TO LEV-DATA
   802			INSPECT KEY-NAME-DATA REPLACING ALL "." BY " "
   803
   804			READ ARKDATA KEY IS KEY-NAME-DATA 
   805			 INVALID KEY 
   806				DISPLAY "Internal error: ERROR READING "
   807			    " check: " KEY-NAME-DATA
   808*				 STOP RUN
   809			END-READ
   810
   811			MOVE OFFSET-DATA	TO WOFFSET.
   812			MOVE WKEY			TO KEY-DATA
   813			READ ARKDATA KEY IS KEY-DATA.
   814	
   815			REWRITE REC-DATA.
   816			
   817  AHEAD-OFFSET.
   818		
   819			ADD ARRAY-SIZE-DATA	TO WOFFSET.
   820			GO TO LOOP-OFFSET.
   821
   822  EX-OFFSET.
   823			EXIT.
   824
   825
   826*
   827***********************************************************
   828* FINE PROGRAMMA                                          *
   829***********************************************************
   830*
   831	    
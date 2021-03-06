1 LOCATE 1,1:PRINT"KEYBOARD.BAS..."
2 MERGE "KEYBOARD.BAS"
4000 '-------------------------
4010 '---SAVE SCREEN TO FILE---
4020 '-------------------------
4022 ERR.MODE$ = "SAVE"
4023 ON ERROR GOTO 4400
4030 POKE OFFSET.CURRENT + 1, ATTR.CURRENT
4040 GOSUB 2300
4070 COLOR 0,7:LOCATE 1,1
4080 INPUT "SAVE FILENAME: ", S$
4085 GOSUB 2300
4088 FLAG.REDRAW.STAT = TRUE
4089 COLOR 0,7: LOCATE 1,1
4090 PRINT "SAVING...      ";
4091 IF S$ = "" THEN PRINT "SAVE ABORTED." : GOTO 4400
4095 PRINT "SAVING...      ";
4110 S$ = LEFT$(S$,12)
4115 DEF SEG = PAGE.CURRENT
4120 BSAVE S$, 0, PAGE.LENGTH
4140 RETURN
4200 '---------------------------
4210 '---LOAD SCREEN FROM FILE---
4220 '---------------------------
4221 FLAG.REDRAW.STAT = TRUE
4222 ERR.MODE$ = "LOAD"
4223 ON ERROR GOTO 4400
4230 GOSUB 2300
4235 COLOR 0,7: LOCATE 1,1
4240 INPUT "LOAD FILENAME: ",L$
4250 GOSUB 2300
4255 COLOR 0,7: LOCATE 1,1
4257 FLAG.REDRAW.STAT = TRUE
4259 IF L$="" THEN PRINT "LOAD ABORTED.      " : GOTO 10100
4260 PRINT "LOADING...    ";
4270 L$=LEFT$(L$,12)
4280 DEF SEG = &HB80A
4290 BLOAD L$, PAGE.INDEX * 4096
4300 FLAG.REFRESH.CRSR = TRUE
4320 RETURN
4400 '--- ERROR TRAPPING ---
4410 LOCATE 1,1:COLOR 16,7
4411 PRINT ERR.MODE$ + " FAILED...          "
4412 COLOR 0,7
4415 GOSUB 10100
4420 RESUME 4430
4430 ON ERROR GOTO 0
4440 RETURN

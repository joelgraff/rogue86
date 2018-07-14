1 MERGE "_BUILD.BAS"
10000 '-----------------
10001 '--- UTILITIES ---
10002 '-----------------
10099 '-----------------------------------------
10100 '--- PAUSE
10101 '--- PAUSE.TIME = TIME TO PAUSE IN SECONDS
10102 '-----------------------------------------
10110 CURTIME = TIMER
10120 WHILE TIMER < CURTIME + PAUSE.TIME
10130 WEND
10140 RETURN

1 PP=2
10 HOME
12 PRINT
20 A$ = "0123456789ABCDEF"
30  FOR I = 1 TO 19
31  IF I = 9 THEN GOSUB 1000
40 L$ = ""
45  FOR J = 1 TO 9
50 L1 =  INT ( RND (1) * 16 ) + 1: L2 =  INT ( RND (1) * 16 ) + 1
60 L$ = L$ + MID$ (A$,L1,1) +  MID$(A$,L2,1) + ": "
65   IF I = 16 THEN GOSUB 1000
70 NEXT J
80 PRINT L$: NEXT I
83 HOME
90 HTAB 12: VTAB 10
91 INPUT "ENTER PASSWORD: ";W$
93 IF W$ <> "SECRET" THEN GOSUB 2000
99 HOME
100 PRINT "      MEMORY DUMP PAGE: "
105 PRINT
110 GOTO 30
1000 FOR Z = 1 TO 200: NEXT Z: RETURN
2000 HOME
2001 HTAB 15: VTAB 10
2002 PRINT "ACCESS DENIED"
2003 GOSUB 3000
2004 GOTO 83
3000 FOR Z = 1 TO 500: NEXT Z: RETURN

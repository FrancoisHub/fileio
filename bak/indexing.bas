10 print "item indexing program"
20 print "1. add item"
30 print "2. search item"
40 print "3. delete item"
45 print "4. read file to end"
50 print "5. exit"
60 input "select an option: "; op%
70 if op% = 1 then gosub 1000
95 if op% = 4 then gosub 500
100 if op% = 5 then end
110 goto 10

500 open 1,8,2,"items.dat,s,r"
510 input#1,a$:print a$
520 if st=0 then 20
530 close 1
540 print "eof status is st = " st
550 return

1000 input "enter the item: "; item$
1010 input "enter the item location: "; loc$
1020 open 1,8,2,"items.dat,s,w"
1030 print#1, item$ + "=" + loc$
1040 close 1
1050 print "item added!"
1060 return





2000 input "enter the word to search for: ", searchword
2010 open 1,8,1,"s:dictionary.dat",2
2020 found = 0
2030 while not eof(1)
2040   input #1, line$
2050   word = left$(line$, instr(line$, "=") - 1)
2060   if word = searchword then
2070     print "definition: "; mid$(line$, instr(line$, "=") + 1)
2080     found = 1
2090     exit while
2100   end if
2110 wend
2120 close 1
2130 if not found then
2140   print "word not found!"
2150 end if
2160 return


3000 input "enter the word to delete: ", deleteword
3010 open 1,8,1,"s:dictionary.dat",2
3020 found = 0
3030 tempfile$ = "s:temp.dat"
3040 open 2,8,2,tempfile$,1
3050 while not eof(1)
3060   input #1, line$
3070   word = left$(line$, instr(line$, "=") - 1)
3080   if word = deleteword then
3090     found = 1
3100   else
3110     print #2, line$
3120   end if
3130 wend
3140 close 1
3150 close 2
3160 if found then
3170   load tempfile$,8,1
3180   print "word deleted!"
3190 else
3200   print "word not found!"
3210 end if
3220 return

10 print "item indexing program"
20 print "1. add item"
30 print "2. search item"
40 print "3. exit"
50 input "select an option: "; option
60 if option = 1 then gosub 1000
70 if option = 2 then gosub 2000
80 if option = 3 then end
90 goto 10

1000 input "enter the item name: "; item$
1010 input "enter the location: ", location$
1020 open 1,8,0,"s:" + item + ".dat"
1030 print #1, definition
1040 close 1
1050 print "word added!"
1060 return

2000 input "enter the word to search for: ", searchword
2010 if load("s:" + searchword + ".dat",8,1) then
2020   print "definition: ";
2030   for i = 1 to lof(1)
2040     print chr$(get(1));
2050   next i
2060   print
2070 else
2080   print "word not found!"
2090 end if
2100 return

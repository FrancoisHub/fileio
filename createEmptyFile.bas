10 open 1,8,2,"test3,s,w"
20 close 1
30 load"$",8
40 list
50 
60 


10 open 1,8,2,"test3,s,r"
20 input#1,a$:print a$
30 if st=0 then 20
40 close 1
50 print "eof status is st = " st
60 
70 


10 open 1,8,2,"test3,s,r"
20 input#1,a$:print a$
30 print "status st is = " st
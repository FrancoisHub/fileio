10 open 1,8,2,"fileio,s,r"
20 input#1,a$:print a$
30 if st=0 then 20
40 close 1
50 print "eof status is st = " st



rem added logic to check if no error each time we access disk
10 open 15,8,15
15 open 1,8,2,"fileio,s,r"
18 gosub 1000
20 input#1,a$:print a$
30 s=st
40 gosub 1000
60 if s=0 then 20
70 close 1
78 close 15
80 end
1000 input#15,e,em$,et,es: rem if e<20 then return
1005 print e;em$;et;es
1008 if e<20 then return
1010 print "**** disk warning": print e;em$;et;es: close 1


rem added logic to check if no error each time we access disk
10 open 15,8,15
15 open 1,8,2,"fileio,s,r"
18 gosub 1000
20 get#1,a$:print a$
30 s=st
40 gosub 1000
50 print a$
60 if s>0 then close 1: end
70 get a$: if a$="" then 70
50 goto 20
1000 input#15,e,em$,et,es: if e<20 then return
1010 print "**** disk warning": print e;em$;et;es: close 1
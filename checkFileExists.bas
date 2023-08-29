10 open 1,8,2,"fileio,s,r"
rem 20 input#1,a$:print a$
30 input#1,a$
40 close 1
50 if st=0 then gosub 100
60 if st<>0 then gosub 200
70 end

100 print "file exist as i could read. st = " st
110 return

200 print "file does not exist as i could not read st = " st
210 return


rem https://comp.sys.cbm.narkive.com/YeIrZdXd/how-to-check-for-file-s-existence-on-a-c64-disk
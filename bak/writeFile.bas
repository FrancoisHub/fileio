10 open 1,8,2,"fileio,s,w"
20 print#1,"greeetings from francois"
30 print#1,"this program writes to a sequential file."
40 close 1
50 print "file is written."


REM to append to the previously created file:

10 open 1,8,2,"fileio,a"
20 print#1,"greeetings again"
40 close 1
50 print "file is written."
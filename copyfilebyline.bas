10 rem crude and slow way to copy files by storing file content in memory 
15 rem count number of rows
20 open 1,8,2,"fileio,s,r"
30 n=0
40 input#1,a$: print a$
50 n=n+1
60 if st=0 then 40
70 close 1
80 print "n number of records ="n
90 print "eof status is st =" st
95 print "": print ""
98 rem dimension an array of adequate size and read the whole file in the array
100 dim ai$(n)
110 open 1,8,2,"fileio,s,r"
120 for i=1 to n
130 input#1,ai$(i): print ai$(i)
140 next i
150 close 1
160 print "": print ""
170 dim ao$(n-1)
180 ao$(1)=ai$(1)
185 ao$(2)=ai$(3)
188 print ao$(1): print ao$(2)
194 rem writing new file wit altered array of records
200 filname$="fileio"
205 ff$=filname$+"new"
206 dd$="new"
208 print ff$: print dd$
209 rem open 1,8,2,dd$+",s,w"
210 open 1,8,2,ff$+",s,w"
220 for i=1 to n-1
230 print#1,ao$(i)
240 next i
250 close 1


10 rem copy file without storing whole file in memory by opening 2 files at once
15 rem we also check for disk errors and stop if any (subroutine 1000)
20 filname$="fileio"
30 nfile$=filname$+"new"
35 dim ai$(1)
40 open 15,8,15 
50 open 1,8,2,filname$+",s,r"
55 gosub 10000
60 open 3,8,3,nfile$+",s,w"
65 gosub 10000
70 input#1,a$: s=st
80 print a$
88 ai$(1)="greeetings again"
90 if a$<>ai$(1) then print#3,a$
100 gosub 10000
110 if s=0 then goto 70
120 close 1: close 3
130 print#15,"scratch:"+filname$
135 gosub 10000
140 print#15,"rename:"+filname$+"="+nfile$
145 gosub 10000
150 close 15
160 end

10000 input#15,e,em$,et,es
10005 print e;em$;et;es
10010 if e<20 then return
10020 print "**** disk warning": print e;em$;et;es
10030 close 1: close 3: close 15
10040 return

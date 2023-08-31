10 rem crude and slow way to copy but simple to understand 
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
200 filname$="fileio"
205 ff$=filname$+"bckp"
206 dd$="bckp"
208 print ff$: print dd$
209 rem open 1,8,2,dd$+",s,w"
210 open 1,8,2,ff$+",s,w"
220 print#1,"toto"
230 close 1

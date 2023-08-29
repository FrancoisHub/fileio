10 rem simple search string example
20 dim r$(1): rem for reporting, messages below
30 r$(0)="no string found"
40 r$(1)="string found from index"
50 s$="abcdefghijklmnopqrstuvwxyz": rem string to search
60 i=1: rem index counter
70 a$="fg": rem search condition
80 s=len(s$): rem length of string to search
90 a=len(a$): rem length of search condition
100 rem loop marker
110 if mid$(s$, i, a)<>a$ and i<s then i=i+1: goto 100
rem turns the true value into 1 for true and 0 for false
120 r=abs(mid$(s$, i, a)=a$)
130 print r$(r):if r then print i



rem https://www.melon64.com/forum/viewtopic.php?t=322



10 rem simple search string example
20 dim r$(1): rem for reporting, messages below
30 r$(0)="no string found"
40 r$(1)="string found from index"
50 rec$="abcdefghijklmnopqrstuvwxyz": rem string to search
60 i=1: rem index counter
70 cr$="ab": rem search condition
80 s=len(rec$): rem length of string to search
90 a=len(cr$): rem length of search condition
100 rem loop marker
105 print "cr$ : "+cr$
108 print "mid$(rec$, i, a) : "+mid$(rec$, i, a)
109 print "i="+str$(i)+" ; a="+str$(a)+" ; s="+str$(s)
rem the mid$() function takes a substring of the record starting from 
rem index i and of length being the one of the search criteria.
rem we compare the substring with the search criteria to see if it is a match
110 if mid$(rec$, i, a)<>cr$ and i<s then i=i+1: goto 100
rem if the last search is equal to search criteria, match found!
rem turns the true value into 1 for true and 0 for false
120 r=abs(mid$(rec$, i, a)=cr$)
125 print "r="+str$(r)
130 print r$(r):if r then print i
160 if r=0 then gosub 200
170 if r=1 then gosub 300
180 end

200 print "no match"
210 return

300 print "match"
310 return



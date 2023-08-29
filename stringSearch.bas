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
130 print r$(r);:if r then print i



rem https://www.melon64.com/forum/viewtopic.php?t=322
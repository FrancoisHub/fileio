1 print chr$(147)
10 filname$="items.dat"
15 gosub 300
20 a$ = chr$(164)
21 print ""
22 a$ = a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$+a$
23 print "   .----.                      .---."
24 print "  '---,  `."+a$".'  "+chr$(164)+"  `."
25 print "       )   "+a$"   <"+chr$(164)+">  :"
26 print "  .---'  .'                  `.     .'"
27 print "   `----'                      `---'"
28 print ""
30 print "item indexing program:"
31 print "======================"
40 print "1. add item"
50 print "2. search item"
60 print "3. delete item"
69 rem read file bugs if file emnpty!
70 print "4. read file to end"
80 print "5. exit"
90 input "select an option: "; op%
100 if op% = 1 then gosub 1000
110 if op% = 2 then gosub 2000
120 if op% = 3 then gosub 3000
130 if op% = 4 then gosub 5000
140 if op% = 5 then end
150 goto 30

300 rem try to open file and if fails create an empty one.
310 open 1,8,2,filname$+",s,r"
311 rem input#1,a$:print a$
320 input#1,a$
330 close 1
335 rem print "st="st
340 if st=0 or st=64 then return
350 if st<>0 then gosub 400 : rem file not exist, go create it
360 return

400 open 1,8,2,filname$+",s,w"
410 close 1
415 print "database file initialized!"
420 return

1000 input "enter the item: "; item$
1010 input "enter the item location: "; loc$
1019 rem open file in append mode (,a) instead of writing (,s,w)
1020 open 1,8,2,filname$+",a"
1030 print#1, item$ + "=" + loc$
1040 close 1
1050 print "item added!"
1060 return

2000 input "enter the item to search for: "; cr$: rem search criteria
2005 print "you are searching for: "+cr$: print ""
2008 ov=0: rem if ov = 0 search found nothing.
2010 open 1,8,2,filname$+",s,r"
2020 input#1,rec$: rem print rec$
2030 gosub 2700
2160 if result = 0 then gosub 2300
2170 if result = 1 then gosub 2400
2180 if st=0 then 2020
2190 close 1
2200 if ov=0 then print "no item found!": print ""
2210 return

2300 rem print "no match"
2310 return

2400 rem print "match"
2410 rem print "search criteria:"+cr$
2420 rem print "record found:"+rec$
2425 ov=1
2430 idx=lcr+1: rem add 1 for equal sign
2440 rem hacking the cr$ variable to re-use search subroutine
2450 dr$=cr$
2460 cr$="="
2470 gosub 2700
2480 if result = 0 then gosub 2900
2490 if result = 1 then gosub 2950
2500 rem re-assign cr$ variable to what it should be
2510 cr$=dr$
2520 return

2700 rem search subroutine. input variables: rec$, cr$. output variable: result
2710 i=1: rem index counter
2720 lrec=len(rec$): rem length of string to search
2730 lcr=len(cr$): rem length of search criteria
2740 rem loop marker
2750 rem the mid$() function takes a substring of the record starting from
2760 rem index i and of length being the one of the search criteria.
2770 rem compare the substring with the criteria to see if it is a match
2780 if mid$(rec$, i, lcr)<>cr$ and i<lrec then i=i+1: goto 2740
2790 rem check if there was a match by looking if the last result of the loop
2800 rem matches our criteria.
2810 rem use of abs() function to transform the boolean into an number
2820 rem reason: is no boolean type on c64?
2830 rem print "cr"+cr$
2840 rem print "mid$(rec$, i, a) : "+mid$(rec$, i, lcr)
2850 result=abs(mid$(rec$, i, lcr)=cr$)
2860 return

2900 print "record error: "+cr$
2910 return

2950 rr$=mid$(rec$, i+1, lrec)
2960 print chr$(218)+" item '"+mid$(rec$, 1, i-1)+"' is located at: "+rr$
2965 print ""
2970 return

3000 input "enter the item to delete: "; cr$
3010 print "you are going to delete: "+cr$: print""
3020 print "not implemented"
3030 rem implementation probably need to look for items in an array in case
3040 rem there is multiple matches, then ask user to chose one, then we need 
3050 rem to know the line number in which the item is located in the file
3060 rem look at deletion routine in book commoodore 64 data files
3190 print"" 
3200 return 

5000 open 1,8,2,filname$+",s,r"
5010 print ""
5020 print "database file content:"
5030 print "======================"
5040 input#1,a$:print a$
5050 if st=0 then 5040
5060 close 1
5070 print ""
5080 return

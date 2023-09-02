rem channel 15 (the third number) is the command channel
rem the first number is a reference to the channel or file open


rem reading the error channel
10 open 15,8,15
20 input#15,en,em$,et,es
30 print en,em$,et,es
40 close 15


rem deleting a file
10 open 15,8,15
20 print#15,"scratch:fileionew" : rem "scratch:filename"
30 close 15


rem renaming a file
10 open 15,8,15
20 print#15,"rename:fileio2=fileiobckp": rem "rename:newfilename=oldfilename"
30 input#15,en,em$,et,es
40 print en,em$,et,es
50 close 15
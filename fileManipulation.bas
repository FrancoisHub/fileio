rem channel 15 (the third number) is the command channel
rem the first number is a reference to the channel or file open


rem reading the error channel
10 open 15,8,15
20 input#15,en,em$,et,es
30 print en,em$,et,es
40 close 15
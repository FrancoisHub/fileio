# fileio
Crude item storage indexing software for Commodore 64 (Basic V2).
Just for fun!

It works like a dictionary, we can add, delete and search for items to know their location. It can be used to manage a collections of items such as tools or books so that we can know where we stored them.

Currently uses Sequential file. Might create a version using Relative files later.


# How to use

## If running on VICE (C64SC) simulator:

1. Attach the disk image fileio.d64 to a drive (e.g. drive 8)

2. Once the C64 emulator has booted, execute the following commands to list the drive content:  
`LOAD "$",8`  
`LIST`

3. To execute the program, execute the following commands:  
`LOAD "TOOL INDEXING"`  
`RUN`

## If running on C64:

1. Type the program and save it to disk
2. Run
# rogue86
A rogue-like game made in BASICA on an 8086 IBM PC

## Installation

The code is build entirely in BASICA on an 8086 IBM PC running MS-DOS 3.30.  The source utilizes POKE and PEEK commands to driectly write to memory.  As a result, emulation (like PC-BASIC) may not / will not work.  DOSBOX and GW-BASIC may work - no testing has been performed yet.

Buidling and running the editor requires the following steps:

1.  LOAD "BUILD.BAS"
2.  RUN
3.  Repeat step #2 until the program runs (9x or 10x)

The program is split across several files to manage code editing in the BASICA editor.  Thus, in order to run the program as a whole, it must be first "built" by merging all of the files into a single file.  Once complete, the resulting file can be saved for future use (e.g., EDITOR.BAS).

## Status

Currently, only the editor exists.  A key map describing all of the key functions will be added soon.  The editor is fully functional for creating basic color text screens using most of the ASCII character set.

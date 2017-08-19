# fpc-avr
A collection of Free Pascal AVR microcontroller code snippets, examples and libraries.

# Structure
## src folder
### bin
A Linux-64 bit compiled gdb 8.0 for avr, includes patch for debugging program memory.

### examples
blink1 - A simple blink example using busy delay functions.
blink2 - A simple timer interrupt driven blink example
lcd1 - A simple sliding text example for HD44780 compatible character LCDs
### library
delay.pas - Contain busy delay loops
lcd_hd44780.pas - A driver for character based HD44780 compatible LCDs
### rtl-avr-modifications
This folder contains "improved" implementations for the AVR. Main changes include the exclusion of exception raising code and some assembler routines which are more compact than the generic Pascal implementations in rtl/inc/generic.inc.
### scripts
A collection of scripts useful for debugging.
### tests
This folder contains test cases for various changes to the rtl, bugs in the compiler, etc.

# Compiling
## AVR cross compiler
Refer to [Building cross-compiler](http://wiki.freepascal.org/AVR#Building_cross-compiler) for tips.

## Compiling examples
An easy way to compile an example is to open the lazarus project file in the lazarus subfolder in the example.
This will open the example in Lazarus and all required options to compile the example will be configured, except the path to the AVR cross compiler.
To configure Lazarus to use the cross compiler for the project, open _Project Options_ (ctrl + shift + F11), go to _Compiler Commands_ and enter path to cross compiler executable.

Another way that doesn't require Lazarus is to use a compile script, for example on Linux:
```
#!/bin/sh
~/fpc/3.1.1/compiler/ppcrossavr -Tembedded -Wpatmega328p -Cpavr5 -Pavr -O3 -g -a -al -XPavr- -Fu"../../library" -Sm -dF_CPU:=16000000 $1
```

This script needs to be executed from the base folder of an example, to ensure the relative path to the library is valid. The name of the example project should be passed to the script as a parameter e.g. sh compile.sh blink1.pp.

An equivalent batch file for Windows could be as follows (untested):

```
[substitute your path to fpc compiler folder here]\ppcrossavr.exe -Tembedded -Wpatmega328p -Cpavr5 -Pavr -O3 -g -a -al -XPavr- -Fu"..\..\library" -Sm -dF_CPU:=16000000 $1
```

Explanation of required and useful compiler options:
* -Sm - enable macro support, required to pass the -dF_CPU as command line parameter to the compiler.
* -dF_CPU - the clock frequency of the target mcu (by convention the F_CPU define is expected wherever the mcu clock speed is required.
* -Fu"../../library" - path to library folder.
* -O3 - optional optimization flag, usually results in smaller code (which is a good thing).
* -a - optional, do not delete generated assembler files
* -al - optional, list source code lines in assmebler file


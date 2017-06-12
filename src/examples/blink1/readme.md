# Blink1
A simple blink example using busy delay loops.

## Compiling example
The following command line can be used as an example:
[path to cross compiler]/ppcrossavr -Tembedded -Wpatmega328p -Cpavr5 -Pavr -g -a  -XPavr- -al -Sm -dF_CPU:=16000000 "-Fu../../utils" blink.pp

Remember to adjust the controller type (-Wp), instruction set (-Cp), optionally the binutils prefix (-XP) and the clock frequency (-dF_CPU:=) as appropriate for the target system.

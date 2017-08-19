#!/bin/sh

~/fpc/3.1.1/compiler/ppcrossavr -Tembedded -Wpatmega328p -Cpavr5 -Pavr -O1 -g -a -al -XPavr- -MObjFPC -v -v -Fu"../../library" -Sm -dF_CPU:=16000000 $1


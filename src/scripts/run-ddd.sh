#!/bin/sh

# Pass elf or hex file as parameter
# kill possible old instances of simavr
killall -s INT run_avr

#start new session
~/simavr/simavr/run_avr -g -m atmega328p -v -f 16000000 -t $1 &

ddd --debugger avr-gdb $1 --eval-command="target remote :1234"


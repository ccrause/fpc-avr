#!/bin/sh
filename=${1%.*}
elfname=$filename.elf
asmsource=$filename.lss

# Close possible previous instance of run_avr:
killall -s INT run_avr

# Compiler generates executable.elf, Lazarus IDE expects executable name without extension on Linux, probably similar problem on Windows?
# Copy executable.elf to executable without extension so that debugger can read it:
cp -T $elfname $filename

# This will leave run_avr running as background process:
~/simavr/simavr/run_avr -g -m atmega328p -v -f 16000000 -t -v -v $elfname &

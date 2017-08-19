#!/bin/sh
filename=${1%.*}
elfname=$filename.elf
asmsource=$filename.lss

# Generate assembler listing from compiled executable:
avr-objdump -S $elfname > $asmsource


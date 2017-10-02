#!/bin/sh
input=$1
filename=${1%.*}
elfname=$filename.elf
asmsource=$filename.lss
objectname=$filename.o

echo Assembling $input
avr-as -mmcu=avr25 -o $objectname $input 

echo "Linking $objectname => $elfname"
avr-ld -g     --gc-sections  -L${PWD} -o $elfname  -T progmem-link-script.res $objectname

echo Creating $asmsource
avr-objdump -S -h $elfname > $asmsource

echo Creating $filename.hex
avr-objcopy -O ihex $elfname $filename.hex 

echo Creating $filename.bin
avr-objcopy -O binary $elfname $filename.bin

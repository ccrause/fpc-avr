#!/bin/sh
avrdude -p m328p -P /dev/ttyACM0 -c arduino -D -v -Uflash:w:$1:i


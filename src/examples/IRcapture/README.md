# IRcapture
A simple timer based method for measuring infrared remote control signals. The time durations of the pulses in the IR signal is recorded. This firmware doesn't decode the signal into protocol details such as address and function codes, since that requires knowledge of many different protocols. The raw durations of the pulses can however be decoded on a computer, or saved and replayed as part of a generic IR remote control.  

## Firmware logic
The firmware basically measures the time periods of positive and negative pulses. The pulses are generated by an IR receiver that decodes a modulated IR signal, filters out the carrier frequency and then outputs a _mark_ when the carrier wave is detected.  
The timing measurements are done using the input capture function of _timer 1_ of the atmega328p controller (as found e.g. on an Arduino Uno board). The selected input capture edge is repeatedly swapped between positive and negative edges - thus generating an interrupt for each transition in the signal.  
To cater for different types of receivers with different idle state output (high or low), the firmware uses a constant _idleLevel_ which is used to adjust the capture logic so that either type of receiver output can be correctly processed. Note that this is a compile time constant, so the firmware should be recompiled and flashed if this constant is changed.  
The output is automatically transmitted over the UART via the TX pin (PD1) at a baud rate of 115200 in 8N1 format.  

### Note
There is a compiler optimization bug in FPC 3.2.2 ~~and 3.3.1~~ (fixed on Feb 17th, 2023) that requires the firmware be compiled with optimization level of 2 or lower (-O2).

### Flashing firmware
The compiled hex file can be flashed to the atmega328p controller using avrdude (Linux example, assumes Arduino bootloader is installed on controller):
```
$ avrdude -p m328p -c arduino -P /dev/ttyACM0 -Uflash:w:ircapture.hex:i

```

## Example waveform
The timing for the _power_ button of a Yamaha RAV463 remote control has been captured with this firmware, see output generated below. The data suggests that the [NEC](https://www.sbprojects.net/knowledge/ir/nec.php) protocol is used by the remote: the start of the signal is indicated by a mark of 9 ms and space of 4.45 ms, a data bit starts with a mark of 560 us (microseconds), followed by either a space of 1690 us for a logical "1" or a space of 560 us for a logical "0".  
 
_Number of bits captured: 40_  
_Pulse timing, us_
| Bit | Mark | Space | Notes |
| :--- | ---: | ---: | :--- |
| 0 | 8980 | 4448 | Start of message header |
| 1 | 584 | 568 | First bit with value of 0 
| 2 | 568 | 1660 | Second bit with value 1 |
| 3 | 564 | 1660 | |
| 4 | 564 | 1660 | |
| 5 | 568 | 1660 | |
| 6 | 564 | 1660 | |
| 7 | 568 | 1660 | |
| 8 | 564 | 560 | |
| 9 | 560 | 1664 | |
| 10 | 564 | 564 | |
| 11 | 560 | 568 | |
| 12 | 564 | 560 | |
| 13 | 564 | 564 | |
| 14 | 560 | 568 | |
| 15 | 568 | 560 | |
| 16 | 564 | 1664 | |
| 17 | 560 | 560 | |
| 18 | 556 | 1668 | |
| 19 | 560 | 568 | |
| 20 | 564 | 1660 | |
| 21 | 568 | 560 | |
| 22 | 564 | 1660 | |
| 23 | 560 | 560 | |
| 24 | 560 | 564 | |
| 25 | 564 | 1660 | |
| 26 | 568 | 560 | |
| 27 | 564 | 1664 | |
| 28 | 560 | 560 | |
| 29 | 560 | 1668 | |
| 30 | 560 | 568 | |
| 31 | 568 | 1660 | |
| 32 | 564 | 1656 | Last bit (32nd) of data |
| 33 | 564 | 39704 | Pause before repeat code |
| 34 | 8984 | 2212 | Repeat code, 9 ms mark, 2.25 ms space, 0.56 ms mark (on next line) |
| 35 | 588 | 95656 | Pause before next repeat code |
| 36 | 8984 | 2216 | 2nd repeat code |

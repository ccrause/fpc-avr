# Sound
Sound generator using simple formulas to generate the bit sequence.  8 bit PWM running at
around 7.8 kHz is used as basis. Five different sound functions are provided and the timer overflow ISR will cycle through them, with a small pause between sounds.

## Notes
Support for the attiny10 (and other avr0/avr1 controllers) is currently only implemented in trunk.  

This example specifically targets the attiny10 controller (although the code can 
work on other controllers with minor modifications) to check how efficient FPC is 
in generating code for this limited resource controller.  

Since the attiny10 has only 32 bytes of RAM one must keep an eye on stack size.
The table below shows that the current RAM usage is 26 bytes, leaving only 6 spare bytes. Stack size is calculated 
assuming the overflow interrupt is called and this then calls the generator function.  

| Item | Size, bytes|
| ---- | ---------: |
| Global variables | 5 |
| Return address (before interrupt) | 2 |
| Interrupt stack | 15 |
| Return address (back to interrupt) | 2 |
| Typical sound generator function stack | 2 |
| Total | 26 |

This leaves only 6 bytes spare! The code will not fit in the available flash at optimization settings below -O2

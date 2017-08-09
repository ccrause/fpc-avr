# Binary avr-gdb 8.0 (patched)
For compatibility with Lazarus gdb debugger interface recent gdb versions needs a patch[1] to disassemble program memory[2]. The binary in this folder was compiled on linux 64 bit for AVR target.  The build was configured as follows: './configure --target=avr --with-expat --without-python --disable-werror'  

Also note that Lazarus requires a patch[3] to handle the unimplemented gdb function 'info PID'.

## References
[1] https://sourceware.org/ml/gdb-patches/2016-03/msg00318.html  
[2] http://forum.lazarus-ide.org/index.php/topic,37405.0.html  
[3] https://bugs.freepascal.org/view.php?id=32084  

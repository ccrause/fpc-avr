## Background
Architectures such as AVR and ARM have different sub architectures.  ARM also have a default ABI and eabi, which potentially produce different compiled code.  Currently only one sub architecture (and ABI) can be handled by the current build system, building for a different sub architecture will overwrite the previous sub architecture files.  

This a continuation of Florian's work in target-subdir branch, but based on a recent trunk.  

## Approach
General approach: include subarch and (if applicable) ABI to target 
* In fpcmake.ini 
  * add SUBARCH_ABI_SUFFIX variable
  * append SUBARCH_ABI_SUFFIX variable to FULLTARGET variable to form TARGET_SUFFIX variable
* In fpmkunit.pp:
  * add support for new command line options subarch and abi
  * include subarch and abi in MakeTargetString function
* In Makefile.fpc:
  * add --subarch and --abi options to FPC_TARGETOPT variable
  * remove -Cp%, -P%, -T% and -Ca% from FPCOPT variable

## TODO
Update fpcmkcfg once approach is accepted.

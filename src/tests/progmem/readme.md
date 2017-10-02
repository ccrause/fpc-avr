Concept to put data in flash/program memory a la PROGMEM or __flash in GCC

# Normal initialized array of char: 
```
.section .data.n_TC_sPsPROGMEM_ss_S
TC_sPsPROGMEM_ss_S:
	.byte	49,50,51,52,53,54,55,56,57,48
.Le10:
	.size	TC_sPsPROGMEM_ss_S, .Le10 - TC_sPsPROGMEM_ss_S
```

# Minimial PROGMEM version:
```
.section	.progmem.data
	.type	FlashString, @object ;else the obj-dump command assume it is assembler commands, but code appear fine regardless
FlashString:
	.string	"1234567890"
```
# More verbose, not sure it adds value:
```
.section	.progmem.data,"a",@progbits
	.type	FlashString, @object ;else the obj-dump command assume it is assembler commands, but code appear fine regardless
	.size	FlashString, 11 ; Seems optional
FlashString:
	.string	"1234567890"
```
# Accessing said constant in program memory:
Load 16 bit address of data (in this case with offset for an array element).
Then use lpm to store byte into destination register.
``` 
  ldi ZL,lo8(FlashString+4) ; +4 is the offset of the array element
  ldi ZH,hi8(FlashString)
  lpm r19, Z
```
# Link script
The link script is the standard link script generated with FPC, but the embedded input file is commented out and specified on the command line in asm-link.sh.

#	.file "progmem.pp"
# Begin asmlist al_procedures

.section .text.n_main
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
	rcall	FPC_INIT_FUNC_TABLE
	lds	r18,(TC_sPsPROGMEM_ss_S+4)
        ldi ZL,lo8(FlashString+4)
        ldi ZH,hi8(FlashString)
        lpm r19, Z
	cp	r18,r19
	breq	.Lj3
	rjmp	.Lj4
.Lj3:
	mov	r18,r1
	sts	(+56),r18
.Lj4:
.Lj5:
	rjmp	.Lj5
	rcall	fpc_do_exit
.Le0:
	.size	main, .Le0 - main

.section .text.n_FPC_INIT_FUNC_TABLE
.globl	FPC_INIT_FUNC_TABLE
FPC_INIT_FUNC_TABLE:
	ret

.section .text.n_FPC_FINALIZE_FUNC_TABLE
.globl	FPC_FINALIZE_FUNC_TABLE
FPC_FINALIZE_FUNC_TABLE:
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.section .data.n_INITFINAL
	.balign 2
.globl	INITFINAL
INITFINAL:
	.byte	0,0
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 2
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	0
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 2
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.short	0
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 2
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.short	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 2
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.short	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version
__fpc_ident:
	.ascii	"FPC 3.1.1 [2017/09/28] for avr - embedded"
.Le6:
	.size	__fpc_ident, .Le6 - __fpc_ident

.section .data.n___stklen
	.balign 2
.globl	__stklen
__stklen:
	.short	1024
.Le7:
	.size	__stklen, .Le7 - __stklen

.section .data.n___heapsize
	.balign 2
.globl	__heapsize
__heapsize:
	.short	128
.Le8:
	.size	__heapsize, .Le8 - __heapsize

.section .bss.n___fpc_initialheap
	.globl __fpc_initialheap
	.size __fpc_initialheap,128
__fpc_initialheap:
	.zero 128

.section .data.n___fpc_valgrind
	.balign 2
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
.Le9:
	.size	__fpc_valgrind, .Le9 - __fpc_valgrind
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section	.progmem.data,"a",@progbits
	.type	FlashString, @object ;else the obj-dump command assume it is assembler commands, but code appear fine regardless
	.size	FlashString, 11 ; Seems optional
FlashString:
	.string	"1234567890"

.section .data.n_TC_sPsPROGMEM_ss_S
TC_sPsPROGMEM_ss_S:
	.byte	49,50,51,52,53,54,55,56,57,48
.Le10:
	.size	TC_sPsPROGMEM_ss_S, .Le10 - TC_sPsPROGMEM_ss_S
# End asmlist al_typedconsts


	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	ldr	x1, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_fputs
	adrp	x8, ___stdinp@GOTPAGE
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
	ldr	x2, [x8]
	adrp	x0, _input@PAGE
	add	x0, x0, _input@PAGEOFF
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	w1, #2048
	bl	_fgets
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"lispy> "

.zerofill __DATA,__bss,_input,2048,0    ; @input
l_.str.1:                               ; @.str.1
	.asciz	"No you're a %s"

.subsections_via_symbols

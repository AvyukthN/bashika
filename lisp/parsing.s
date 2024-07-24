	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_getNumberOfNodes               ; -- Begin function getNumberOfNodes
	.p2align	2
_getNumberOfNodes:                      ; @getNumberOfNodes
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB0_12
LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #48]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_10
	b	LBB0_3
LBB0_3:
	mov	w8, #1
	str	w8, [sp, #12]
	str	wzr, [sp, #8]
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_9
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=1
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [sp]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x0, [x8]
	ldr	x1, [sp]
	bl	_strcmp
	subs	w8, w0, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	bl	_getNumberOfNodes
	ldr	w8, [sp, #12]
	add	w8, w8, w0
	str	w8, [sp, #12]
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_4
LBB0_9:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB0_12
LBB0_10:
	b	LBB0_11
LBB0_11:
	stur	wzr, [x29, #-4]
	b	LBB0_12
LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_evaluateInput                  ; -- Begin function evaluateInput
	.p2align	2
_evaluateInput:                         ; @evaluateInput
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	w0, #0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #40]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-24]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-32]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-40]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_mpc_new
	mov	x8, x0
	ldr	w0, [sp, #40]                   ; 4-byte Folded Reload
	stur	x8, [x29, #-48]
	ldur	x12, [x29, #-24]
	ldur	x11, [x29, #-32]
	ldur	x10, [x29, #-40]
	ldur	x8, [x29, #-48]
	mov	x9, sp
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	_mpca_lang
	b	LBB2_1
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_3 Depth 2
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	ldr	x1, [x8]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_fputs
	adrp	x8, ___stdinp@GOTPAGE
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
	ldr	x2, [x8]
	adrp	x0, _input@PAGE
	add	x0, x0, _input@PAGEOFF
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	w1, #2048
	bl	_fgets
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-48]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	add	x3, sp, #56
	bl	_mpc_parse
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_7
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x0, [sp, #56]
	bl	_mpc_ast_print
	ldr	x8, [sp, #56]
	str	x8, [sp, #48]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #48]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #48]
	ldr	w9, [x8, #48]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #48]
	bl	_getNumberOfNodes
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x0
	str	x8, [x9]
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_printf
	str	wzr, [sp, #44]
	b	LBB2_3
LBB2_3:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #48]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB2_6
	b	LBB2_4
LBB2_4:                                 ;   in Loop: Header=BB2_3 Depth=2
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #44]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #44]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8, #8]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #44]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w9, [x8, #48]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_printf
	b	LBB2_5
LBB2_5:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB2_3
LBB2_6:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x0, [sp, #56]
	bl	_mpc_ast_delete
	b	LBB2_8
LBB2_7:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x0, [sp, #56]
	bl	_mpc_err_print
	ldr	x0, [sp, #56]
	bl	_mpc_err_delete
	b	LBB2_8
LBB2_8:                                 ;   in Loop: Header=BB2_1 Depth=1
	b	LBB2_1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"regex"

l_.str.1:                               ; @.str.1
	.asciz	"number"

l_.str.2:                               ; @.str.2
	.asciz	"operator"

l_.str.3:                               ; @.str.3
	.asciz	"expression"

l_.str.4:                               ; @.str.4
	.asciz	"bashika"

l_.str.5:                               ; @.str.5
	.asciz	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tnumber\t\t: /-?[0-9]+(.[0-9]+)?/ ;\t\t\t\t\t\t\t\t\t\t\t    operator\t: '+' | '-' | '*' | '/' ;\t\t\t\t\t\t\t\t\texpression  : <number> | '(' <operator> <expression>+ ')' ; \t\t\tbashika\t\t: /^/ <operator> <expression>+ /$/ ;\t\t\t\t\t"

l_.str.6:                               ; @.str.6
	.asciz	"bashika> "

.zerofill __DATA,__bss,_input,2048,0    ; @input
l_.str.7:                               ; @.str.7
	.asciz	"<stdin>"

l_.str.8:                               ; @.str.8
	.asciz	"\n"

l_.str.9:                               ; @.str.9
	.asciz	"Tag %s\n"

l_.str.10:                              ; @.str.10
	.asciz	"Contents %s\n"

l_.str.11:                              ; @.str.11
	.asciz	"# Children %d\n"

l_.str.12:                              ; @.str.12
	.asciz	"# Tree Nodes %d\n"

l_.str.13:                              ; @.str.13
	.asciz	"Child %d Tag        ==> %s\n"

l_.str.14:                              ; @.str.14
	.asciz	"Child %d Contents   ==> %s\n"

l_.str.15:                              ; @.str.15
	.asciz	"Child %d # Children ==> %d\n"

.subsections_via_symbols

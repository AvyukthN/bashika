	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_mpc_err_delete                 ; -- Begin function mpc_err_delete
	.p2align	2
_mpc_err_delete:                        ; @mpc_err_delete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB0_1
LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #48]
	bl	_free
	ldr	x0, [sp, #8]
	bl	_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_err_print                  ; -- Begin function mpc_err_print
	.p2align	2
_mpc_err_print:                         ; @mpc_err_print
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	ldr	x1, [x8]
	bl	_mpc_err_print_to
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_err_print_to               ; -- Begin function mpc_err_print_to
	.p2align	2
_mpc_err_print_to:                      ; @mpc_err_print_to
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	_mpc_err_string
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_fprintf
	ldr	x0, [sp, #8]
	bl	_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_err_string                 ; -- Begin function mpc_err_string
	.p2align	2
_mpc_err_string:                        ; @mpc_err_string
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-24]
	mov	w8, #1023
	stur	w8, [x29, #-28]
	mov	x0, #1
	mov	x1, #1024
	bl	_calloc
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x10, [x8, #40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	sub	x1, x29, #24
	sub	x2, x29, #28
	adrp	x3, l_.str.1@PAGE
	add	x3, x3, l_.str.1@PAGEOFF
	bl	_mpc_err_string_cat
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	LBB3_13
LBB3_2:
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x11, [x8, #40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	add	x10, x8, #1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	add	x8, x8, #1
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	sub	x1, x29, #24
	sub	x2, x29, #28
	adrp	x3, l_.str.2@PAGE
	add	x3, x3, l_.str.2@PAGEOFF
	bl	_mpc_err_string_cat
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB3_4
	b	LBB3_3
LBB3_3:
	ldur	x0, [x29, #-40]
	sub	x1, x29, #24
	sub	x2, x29, #28
	adrp	x3, l_.str.3@PAGE
	add	x3, x3, l_.str.3@PAGEOFF
	bl	_mpc_err_string_cat
	b	LBB3_4
LBB3_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB3_6
	b	LBB3_5
LBB3_5:
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	sub	x1, x29, #24
	sub	x2, x29, #28
	adrp	x3, l_.str@PAGE
	add	x3, x3, l_.str@PAGEOFF
	bl	_mpc_err_string_cat
	b	LBB3_6
LBB3_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB3_12
	b	LBB3_7
LBB3_7:
	stur	wzr, [x29, #-20]
	b	LBB3_8
LBB3_8:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #32]
	subs	w9, w9, #2
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB3_11
	b	LBB3_9
LBB3_9:                                 ;   in Loop: Header=BB3_8 Depth=1
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
	str	x8, [x9]
	sub	x1, x29, #24
	sub	x2, x29, #28
	adrp	x3, l_.str.4@PAGE
	add	x3, x3, l_.str.4@PAGEOFF
	bl	_mpc_err_string_cat
	b	LBB3_10
LBB3_10:                                ;   in Loop: Header=BB3_8 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB3_8
LBB3_11:
	ldur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #32]
	subs	w9, w9, #2
	ldr	x10, [x8, w9, sxtw #3]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #32]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	sub	x1, x29, #24
	sub	x2, x29, #28
	adrp	x3, l_.str.5@PAGE
	add	x3, x3, l_.str.5@PAGEOFF
	bl	_mpc_err_string_cat
	b	LBB3_12
LBB3_12:
	ldur	x0, [x29, #-40]
	sub	x1, x29, #24
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
	sub	x2, x29, #28
	str	x2, [sp, #48]                   ; 8-byte Folded Spill
	adrp	x3, l_.str.6@PAGE
	add	x3, x3, l_.str.6@PAGEOFF
	bl	_mpc_err_string_cat
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrsb	w0, [x8, #64]
	sub	x1, x29, #44
	bl	_mpc_err_char_unescape
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #48]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	_mpc_err_string_cat
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #48]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-40]
	adrp	x3, l_.str.7@PAGE
	add	x3, x3, l_.str.7@PAGEOFF
	bl	_mpc_err_string_cat
	ldur	x8, [x29, #-40]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_realloc
	stur	x0, [x29, #-8]
	b	LBB3_13
LBB3_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_string_cat
_mpc_err_string_cat:                    ; @mpc_err_string_cat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	mov	x9, sp
	add	x8, x29, #16
	str	x8, [x9]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB4_2
	b	LBB4_1
LBB4_1:
	str	wzr, [sp, #12]
	b	LBB4_2
LBB4_2:
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	ldrsw	x9, [x9]
	add	x0, x8, x9
	ldr	x3, [sp, #16]
	ldr	x4, [sp]
	mov	w1, #0
	mov	x2, #-1
	bl	___vsprintf_chk
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	add	w8, w8, w0
	str	w8, [x9]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_char_unescape
_mpc_err_char_unescape:                 ; @mpc_err_char_unescape
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strb	w0, [sp, #23]
	str	x1, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #39
	strb	w8, [x9]
	ldr	x10, [sp, #8]
	mov	w9, #32
	strb	w9, [x10, #1]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #2]
	ldr	x8, [sp, #8]
	strb	wzr, [x8, #3]
	ldrsb	w8, [sp, #23]
	subs	w8, w8, #0
                                        ; kill: def $x8 killed $w8
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #32
	cset	w8, hi
	tbnz	w8, #0, LBB5_11
; %bb.1:
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	adrp	x10, lJTI5_0@PAGE
	add	x10, x10, lJTI5_0@PAGEOFF
Ltmp1:
	adr	x8, Ltmp1
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB5_2:
	adrp	x8, l_.str.95@PAGE
	add	x8, x8, l_.str.95@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_3:
	adrp	x8, l_.str.96@PAGE
	add	x8, x8, l_.str.96@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_4:
	adrp	x8, l_.str.97@PAGE
	add	x8, x8, l_.str.97@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_5:
	adrp	x8, l_.str.98@PAGE
	add	x8, x8, l_.str.98@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_6:
	adrp	x8, l_.str.99@PAGE
	add	x8, x8, l_.str.99@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_7:
	adrp	x8, l_.str.21@PAGE
	add	x8, x8, l_.str.21@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_8:
	adrp	x8, l_.str.27@PAGE
	add	x8, x8, l_.str.27@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_9:
	adrp	x8, l_.str.28@PAGE
	add	x8, x8, l_.str.28@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_10:
	adrp	x8, l_.str.100@PAGE
	add	x8, x8, l_.str.100@PAGEOFF
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_11:
	ldrb	w8, [sp, #23]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #1]
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	b	LBB5_12
LBB5_12:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
	.p2align	2
lJTI5_0:
	.long	LBB5_7-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_2-Ltmp1
	.long	LBB5_3-Ltmp1
	.long	LBB5_9-Ltmp1
	.long	LBB5_8-Ltmp1
	.long	LBB5_6-Ltmp1
	.long	LBB5_4-Ltmp1
	.long	LBB5_5-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_11-Ltmp1
	.long	LBB5_10-Ltmp1
                                        ; -- End function
	.globl	_mpc_parse_input                ; -- Begin function mpc_parse_input
	.p2align	2
_mpc_parse_input:                       ; @mpc_parse_input
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_mpc_err_fail
	sub	x8, x29, #40
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, sp, #24
	bl	_mpc_state_invalid
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x3, [sp, #16]                   ; 8-byte Folded Reload
	ldur	q0, [sp, #24]
	str	q0, [x8]
	ldur	q0, [sp, #40]
	str	q0, [x8, #16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	mov	w4, #0
	bl	_mpc_parse_run
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-40]
	bl	_mpc_err_delete_internal
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8]
	bl	_mpc_export
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	b	LBB6_3
LBB6_2:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldr	x2, [x8]
	bl	_mpc_err_merge
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	_mpc_err_export
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	b	LBB6_3
LBB6_3:
	ldur	w0, [x29, #-28]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_fail
_mpc_err_fail:                          ; @mpc_err_fail
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #72]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB7_3
LBB7_2:
	ldur	x0, [x29, #-16]
	mov	x1, #72
	bl	_mpc_malloc
	str	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldr	x8, [sp, #32]
	str	x0, [x8, #40]
	ldr	x8, [sp, #32]
	ldr	x0, [x8, #40]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	mov	x2, #-1
	str	x2, [sp, #24]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldr	q0, [x9, #16]
	str	q0, [x8]
	ldr	q0, [x9, #32]
	str	q0, [x8, #16]
	ldr	x8, [sp, #32]
	str	wzr, [x8, #32]
	ldr	x8, [sp, #32]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	str	x0, [x8, #48]
	ldr	x8, [sp, #32]
	ldr	x0, [x8, #48]
	ldur	x1, [x29, #-24]
	bl	___strcpy_chk
	ldr	x9, [sp, #32]
	mov	w8, #32
	strb	w8, [x9, #64]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB7_3
LBB7_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_state_invalid
_mpc_state_invalid:                     ; @mpc_state_invalid
	.cfi_startproc
; %bb.0:
	mov	x9, #-1
	str	x9, [x8]
	str	x9, [x8, #8]
	str	x9, [x8, #16]
	str	wzr, [x8, #24]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_parse_run
_mpc_parse_run:                         ; @mpc_parse_run
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-64]
	stur	x2, [x29, #-72]
	str	x3, [sp, #80]
	str	w4, [sp, #76]
	str	wzr, [sp, #72]
	str	wzr, [sp, #68]
	ldr	w8, [sp, #76]
	subs	w8, w8, #1000
	cset	w8, ne
	tbnz	w8, #0, LBB9_2
	b	LBB9_1
LBB9_1:
	ldur	x0, [x29, #-56]
	adrp	x1, l_.str.101@PAGE
	add	x1, x1, l_.str.101@PAGEOFF
	bl	_mpc_err_fail
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_2:
	ldur	x8, [x29, #-64]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #0
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	subs	x8, x8, #29
	cset	w8, hi
	tbnz	w8, #0, LBB9_154
; %bb.3:
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	adrp	x10, lJTI9_0@PAGE
	add	x10, x10, lJTI9_0@PAGEOFF
Ltmp2:
	adr	x8, Ltmp2
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB9_4:
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-72]
	bl	_mpc_input_any
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_6
	b	LBB9_5
LBB9_5:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_6:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_7:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldrsb	w1, [x8, #8]
	ldur	x2, [x29, #-72]
	bl	_mpc_input_char
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_9
	b	LBB9_8
LBB9_8:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_9:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_10:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldrsb	w1, [x8, #8]
	ldur	x8, [x29, #-64]
	ldrsb	w2, [x8, #9]
	ldur	x3, [x29, #-72]
	bl	_mpc_input_range
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_12
	b	LBB9_11
LBB9_11:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_12:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_13:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	bl	_mpc_input_oneof
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_15
	b	LBB9_14
LBB9_14:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_15:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_16:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	bl	_mpc_input_noneof
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_18
	b	LBB9_17
LBB9_17:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_18:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_19:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	bl	_mpc_input_satisfy
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_21
	b	LBB9_20
LBB9_20:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_21:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_22:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	bl	_mpc_input_string
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_24
	b	LBB9_23
LBB9_23:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_24:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_25:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	bl	_mpc_input_anchor
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_27
	b	LBB9_26
LBB9_26:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_27:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_28:
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-72]
	bl	_mpc_input_soi
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_30
	b	LBB9_29
LBB9_29:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_30:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_31:
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-72]
	bl	_mpc_input_eoi
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_33
	b	LBB9_32
LBB9_32:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_33:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_34:
	ldur	x0, [x29, #-56]
	adrp	x1, l_.str.102@PAGE
	add	x1, x1, l_.str.102@PAGEOFF
	bl	_mpc_err_fail
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_35:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_36:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	bl	_mpc_err_fail
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_37:
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #8]
	blr	x8
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_38:
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_39:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_state_copy
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_40:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_42
	b	LBB9_41
LBB9_41:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldur	x8, [x29, #-72]
	ldr	x2, [x8]
	bl	_mpc_parse_apply
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_42:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_43:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_45
	b	LBB9_44
LBB9_44:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldur	x8, [x29, #-72]
	ldr	x2, [x8]
	ldur	x8, [x29, #-64]
	ldr	x3, [x8, #24]
	bl	_mpc_parse_apply_to
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_45:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_46:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_50
	b	LBB9_47
LBB9_47:
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #24]
	ldur	x0, [x29, #-72]
	blr	x8
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_49
	b	LBB9_48
LBB9_48:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_49:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldur	x8, [x29, #-72]
	ldr	x2, [x8]
	bl	_mpc_parse_dtor
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #32]
	bl	_mpc_err_fail
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_50:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_51:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_55
	b	LBB9_52
LBB9_52:
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #24]
	ldur	x0, [x29, #-72]
	ldur	x9, [x29, #-64]
	ldr	x1, [x9, #32]
	blr	x8
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_54
	b	LBB9_53
LBB9_53:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_54:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldur	x8, [x29, #-72]
	ldr	x2, [x8]
	bl	_mpc_parse_dtor
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #40]
	bl	_mpc_err_fail
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_55:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_56:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_suppress_enable
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_58
	b	LBB9_57
LBB9_57:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_suppress_disable
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_58:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_suppress_disable
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	bl	_mpc_err_new
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_59:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_backtrack_disable
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_61
	b	LBB9_60
LBB9_60:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_backtrack_enable
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_61:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_backtrack_enable
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_62:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_mark
	ldur	x0, [x29, #-56]
	bl	_mpc_input_suppress_enable
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_64
	b	LBB9_63
LBB9_63:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_rewind
	ldur	x0, [x29, #-56]
	bl	_mpc_input_suppress_disable
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldur	x8, [x29, #-72]
	ldr	x2, [x8]
	bl	_mpc_parse_dtor
	ldur	x0, [x29, #-56]
	adrp	x1, l_.str.103@PAGE
	add	x1, x1, l_.str.103@PAGEOFF
	bl	_mpc_err_new
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_64:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_unmark
	ldur	x0, [x29, #-56]
	bl	_mpc_input_suppress_disable
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #24]
	blr	x8
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_65:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-72]
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_67
	b	LBB9_66
LBB9_66:
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_67:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #80]
	ldr	x1, [x8]
	ldur	x8, [x29, #-72]
	ldr	x2, [x8]
	bl	_mpc_err_merge
	ldr	x8, [sp, #80]
	str	x0, [x8]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #24]
	blr	x8
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_68:
	sub	x8, x29, #40
	str	x8, [sp, #56]
	b	LBB9_69
LBB9_69:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_71
	b	LBB9_70
LBB9_70:                                ;   in Loop: Header=BB9_69 Depth=1
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	ldur	x0, [x29, #-56]
	ldr	w1, [sp, #72]
	ldr	x3, [sp, #56]
	sub	x2, x29, #40
	bl	_mpc_grow_results
	str	x0, [sp, #56]
	b	LBB9_69
LBB9_71:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #80]
	ldr	x1, [x8]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_err_merge
	ldr	x8, [sp, #80]
	str	x0, [x8]
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldr	w2, [sp, #72]
	ldr	x3, [sp, #56]
	bl	_mpc_parse_fold
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldr	w8, [sp, #72]
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB9_73
	b	LBB9_72
LBB9_72:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_73
LBB9_73:
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_74:
	sub	x8, x29, #40
	str	x8, [sp, #56]
	b	LBB9_75
LBB9_75:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_77
	b	LBB9_76
LBB9_76:                                ;   in Loop: Header=BB9_75 Depth=1
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	ldur	x0, [x29, #-56]
	ldr	w1, [sp, #72]
	ldr	x3, [sp, #56]
	sub	x2, x29, #40
	bl	_mpc_grow_results
	str	x0, [sp, #56]
	b	LBB9_75
LBB9_77:
	ldr	w8, [sp, #72]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB9_81
	b	LBB9_78
LBB9_78:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_err_many1
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldr	w8, [sp, #72]
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB9_80
	b	LBB9_79
LBB9_79:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_80
LBB9_80:
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_81:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #80]
	ldr	x1, [x8]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_err_merge
	ldr	x8, [sp, #80]
	str	x0, [x8]
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldr	w2, [sp, #72]
	ldr	x3, [sp, #56]
	bl	_mpc_parse_fold
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldr	w8, [sp, #72]
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB9_83
	b	LBB9_82
LBB9_82:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_83
LBB9_83:
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_84:
	sub	x8, x29, #40
	str	x8, [sp, #56]
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_91
	b	LBB9_85
LBB9_85:
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	ldur	x0, [x29, #-56]
	ldr	w1, [sp, #72]
	ldr	x3, [sp, #56]
	sub	x2, x29, #40
	bl	_mpc_grow_results
	str	x0, [sp, #56]
	b	LBB9_86
LBB9_86:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #32]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #44]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB9_88
	b	LBB9_87
LBB9_87:                                ;   in Loop: Header=BB9_86 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b	LBB9_88
LBB9_88:                                ;   in Loop: Header=BB9_86 Depth=1
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB9_90
	b	LBB9_89
LBB9_89:                                ;   in Loop: Header=BB9_86 Depth=1
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	ldur	x0, [x29, #-56]
	ldr	w1, [sp, #72]
	ldr	x3, [sp, #56]
	sub	x2, x29, #40
	bl	_mpc_grow_results
	str	x0, [sp, #56]
	b	LBB9_86
LBB9_90:
	b	LBB9_91
LBB9_91:
	ldr	w8, [sp, #72]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB9_95
	b	LBB9_92
LBB9_92:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_err_many1
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldr	w8, [sp, #72]
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB9_94
	b	LBB9_93
LBB9_93:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_94
LBB9_94:
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_95:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #80]
	ldr	x1, [x8]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_err_merge
	ldr	x8, [sp, #80]
	str	x0, [x8]
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldr	w2, [sp, #72]
	ldr	x3, [sp, #56]
	bl	_mpc_parse_fold
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldr	w8, [sp, #72]
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB9_97
	b	LBB9_96
LBB9_96:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_97
LBB9_97:
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_98:
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_100
	b	LBB9_99
LBB9_99:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldrsw	x9, [x8, #8]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_mpc_malloc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB9_101
LBB9_100:
	sub	x8, x29, #40
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB9_101
LBB9_101:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	x8, [sp, #56]
	b	LBB9_102
LBB9_102:                               ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_106
	b	LBB9_103
LBB9_103:                               ;   in Loop: Header=BB9_102 Depth=1
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	ldr	w8, [sp, #72]
	ldur	x9, [x29, #-64]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB9_105
	b	LBB9_104
LBB9_104:
	b	LBB9_106
LBB9_105:                               ;   in Loop: Header=BB9_102 Depth=1
	b	LBB9_102
LBB9_106:
	ldr	w8, [sp, #72]
	ldur	x9, [x29, #-64]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB9_110
	b	LBB9_107
LBB9_107:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldr	w2, [sp, #72]
	ldr	x3, [sp, #56]
	bl	_mpc_parse_fold
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_109
	b	LBB9_108
LBB9_108:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_109
LBB9_109:
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_110:
	str	wzr, [sp, #68]
	b	LBB9_111
LBB9_111:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #68]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB9_114
	b	LBB9_112
LBB9_112:                               ;   in Loop: Header=BB9_111 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #32]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #68]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_parse_dtor
	b	LBB9_113
LBB9_113:                               ;   in Loop: Header=BB9_111 Depth=1
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	LBB9_111
LBB9_114:
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x1, [x8, x9, lsl #3]
	ldur	x8, [x29, #-64]
	ldr	w2, [x8, #8]
	bl	_mpc_err_count
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_116
	b	LBB9_115
LBB9_115:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_116
LBB9_116:
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_117:
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB9_119
	b	LBB9_118
LBB9_118:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_119:
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_121
	b	LBB9_120
LBB9_120:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldrsw	x9, [x8, #8]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_mpc_malloc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB9_122
LBB9_121:
	sub	x8, x29, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB9_122
LBB9_122:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #56]
	str	wzr, [sp, #72]
	b	LBB9_123
LBB9_123:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #72]
	ldur	x9, [x29, #-64]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB9_131
	b	LBB9_124
LBB9_124:                               ;   in Loop: Header=BB9_123 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #72]
	ldr	x1, [x8, x9, lsl #3]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB9_128
	b	LBB9_125
LBB9_125:
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_127
	b	LBB9_126
LBB9_126:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_127
LBB9_127:
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_128:                               ;   in Loop: Header=BB9_123 Depth=1
	ldur	x0, [x29, #-56]
	ldr	x8, [sp, #80]
	ldr	x1, [x8]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_err_merge
	ldr	x8, [sp, #80]
	str	x0, [x8]
	b	LBB9_129
LBB9_129:                               ;   in Loop: Header=BB9_123 Depth=1
	b	LBB9_130
LBB9_130:                               ;   in Loop: Header=BB9_123 Depth=1
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	b	LBB9_123
LBB9_131:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_133
	b	LBB9_132
LBB9_132:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_133
LBB9_133:
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_134:
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB9_136
	b	LBB9_135
LBB9_135:
	ldur	x8, [x29, #-72]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_136:
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_138
	b	LBB9_137
LBB9_137:
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldrsw	x9, [x8, #8]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_mpc_malloc
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB9_139
LBB9_138:
	sub	x8, x29, #40
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB9_139
LBB9_139:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #56]
	ldur	x0, [x29, #-56]
	bl	_mpc_input_mark
	str	wzr, [sp, #72]
	b	LBB9_140
LBB9_140:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #72]
	ldur	x9, [x29, #-64]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB9_151
	b	LBB9_141
LBB9_141:                               ;   in Loop: Header=BB9_140 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #72]
	ldr	x1, [x8, x9, lsl #3]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	add	x2, x8, x9, lsl #3
	ldr	x3, [sp, #80]
	ldr	w8, [sp, #76]
	add	w4, w8, #1
	bl	_mpc_parse_run
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB9_149
	b	LBB9_142
LBB9_142:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_rewind
	str	wzr, [sp, #68]
	b	LBB9_143
LBB9_143:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #68]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB9_146
	b	LBB9_144
LBB9_144:                               ;   in Loop: Header=BB9_143 Depth=1
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #32]
	ldrsw	x9, [sp, #68]
	ldr	x1, [x8, x9, lsl #3]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #68]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_parse_dtor
	b	LBB9_145
LBB9_145:                               ;   in Loop: Header=BB9_143 Depth=1
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	LBB9_143
LBB9_146:
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #72]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-72]
	str	x8, [x9]
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_148
	b	LBB9_147
LBB9_147:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_148
LBB9_148:
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_149:                               ;   in Loop: Header=BB9_140 Depth=1
	b	LBB9_150
LBB9_150:                               ;   in Loop: Header=BB9_140 Depth=1
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	b	LBB9_140
LBB9_151:
	ldur	x0, [x29, #-56]
	bl	_mpc_input_unmark
	ldur	x0, [x29, #-56]
	ldur	x8, [x29, #-64]
	ldr	x1, [x8, #16]
	ldr	w2, [sp, #72]
	ldr	x3, [sp, #56]
	bl	_mpc_parse_fold
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	ldur	x8, [x29, #-64]
	ldr	w8, [x8, #8]
	subs	w8, w8, #4
	cset	w8, le
	tbnz	w8, #0, LBB9_153
	b	LBB9_152
LBB9_152:
	ldur	x0, [x29, #-56]
	ldr	x1, [sp, #56]
	bl	_mpc_free
	b	LBB9_153
LBB9_153:
	mov	w8, #1
	stur	w8, [x29, #-44]
	b	LBB9_155
LBB9_154:
	ldur	x0, [x29, #-56]
	adrp	x1, l_.str.104@PAGE
	add	x1, x1, l_.str.104@PAGEOFF
	bl	_mpc_err_fail
	ldur	x8, [x29, #-72]
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	LBB9_155
LBB9_155:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB9_157
	b	LBB9_156
LBB9_156:
	bl	___stack_chk_fail
LBB9_157:
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
	.p2align	2
lJTI9_0:
	.long	LBB9_34-Ltmp2
	.long	LBB9_35-Ltmp2
	.long	LBB9_36-Ltmp2
	.long	LBB9_37-Ltmp2
	.long	LBB9_38-Ltmp2
	.long	LBB9_56-Ltmp2
	.long	LBB9_25-Ltmp2
	.long	LBB9_39-Ltmp2
	.long	LBB9_4-Ltmp2
	.long	LBB9_7-Ltmp2
	.long	LBB9_13-Ltmp2
	.long	LBB9_16-Ltmp2
	.long	LBB9_10-Ltmp2
	.long	LBB9_19-Ltmp2
	.long	LBB9_22-Ltmp2
	.long	LBB9_40-Ltmp2
	.long	LBB9_43-Ltmp2
	.long	LBB9_59-Ltmp2
	.long	LBB9_62-Ltmp2
	.long	LBB9_65-Ltmp2
	.long	LBB9_68-Ltmp2
	.long	LBB9_74-Ltmp2
	.long	LBB9_98-Ltmp2
	.long	LBB9_117-Ltmp2
	.long	LBB9_134-Ltmp2
	.long	LBB9_46-Ltmp2
	.long	LBB9_51-Ltmp2
	.long	LBB9_28-Ltmp2
	.long	LBB9_31-Ltmp2
	.long	LBB9_84-Ltmp2
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_delete_internal
_mpc_err_delete_internal:               ; @mpc_err_delete_internal
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB10_2
	b	LBB10_1
LBB10_1:
	b	LBB10_7
LBB10_2:
	str	wzr, [sp, #12]
	b	LBB10_3
LBB10_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB10_6
	b	LBB10_4
LBB10_4:                                ;   in Loop: Header=BB10_3 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #12]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_free
	b	LBB10_5
LBB10_5:                                ;   in Loop: Header=BB10_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB10_3
LBB10_6:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #56]
	bl	_mpc_free
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #40]
	bl	_mpc_free
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #48]
	bl	_mpc_free
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_mpc_free
	b	LBB10_7
LBB10_7:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_export
_mpc_export:                            ; @mpc_export
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_mpc_mem_ptr
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB11_2
	b	LBB11_1
LBB11_1:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB11_3
LBB11_2:
	mov	x0, #64
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_malloc
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	mov	x3, #-1
	bl	___memcpy_chk
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_mpc_free
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB11_3
LBB11_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_export
_mpc_err_export:                        ; @mpc_err_export
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB12_1
LBB12_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB12_4
	b	LBB12_2
LBB12_2:                                ;   in Loop: Header=BB12_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #12]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_export
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #12]
	str	x0, [x8, x9, lsl #3]
	b	LBB12_3
LBB12_3:                                ;   in Loop: Header=BB12_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB12_1
LBB12_4:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #56]
	bl	_mpc_export
	ldr	x8, [sp, #16]
	str	x0, [x8, #56]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #40]
	bl	_mpc_export
	ldr	x8, [sp, #16]
	str	x0, [x8, #40]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #48]
	bl	_mpc_export
	ldr	x8, [sp, #16]
	str	x0, [x8, #48]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_mpc_export
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_merge
_mpc_err_merge:                         ; @mpc_err_merge
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	sub	x1, x29, #24
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-16]
	ldr	x0, [sp, #32]
	mov	w2, #2
	bl	_mpc_err_or
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB13_2
	b	LBB13_1
LBB13_1:
	bl	___stack_chk_fail
LBB13_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_parse                      ; -- Begin function mpc_parse
	.p2align	2
_mpc_parse:                             ; @mpc_parse
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	_mpc_input_new_string
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	_mpc_parse_input
	str	w0, [sp, #12]
	ldr	x0, [sp]
	bl	_mpc_input_delete
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_new_string
_mpc_input_new_string:                  ; @mpc_input_new_string
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #33400
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	x8, #1
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x0, #1
	bl	_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldur	x8, [x29, #-24]
	mov	w9, #0
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	str	wzr, [x8]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, sp, #40
	bl	_mpc_state_new
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	q0, [sp, #40]
	str	q0, [x8, #16]
	ldur	q0, [sp, #56]
	str	q0, [x8, #32]
	ldur	x0, [x29, #-16]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x0, [x8, #48]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #48]
	ldur	x1, [x29, #-16]
	bl	___strcpy_chk
	ldur	x8, [x29, #-24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldur	x8, [x29, #-24]
	str	xzr, [x8, #64]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #72]
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9, #76]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #84]
	ldur	x9, [x29, #-24]
	mov	w8, #32
	str	w8, [x9, #80]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #80]
	mov	x8, #32
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	str	x0, [x9, #88]
	ldur	x9, [x29, #-24]
	ldrsw	x9, [x9, #80]
	mul	x0, x8, x9
	bl	_malloc
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldr	x3, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x0, [x8, #96]
	ldur	x8, [x29, #-24]
	strb	wzr, [x8, #104]
	ldur	x8, [x29, #-24]
	str	xzr, [x8, #112]
	ldur	x8, [x29, #-24]
	add	x0, x8, #120
	mov	x2, #512
	bl	___memset_chk
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_delete
_mpc_input_delete:                      ; @mpc_input_delete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB16_2
	b	LBB16_1
LBB16_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #48]
	bl	_free
	b	LBB16_2
LBB16_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB16_4
	b	LBB16_3
LBB16_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_free
	b	LBB16_4
LBB16_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #88]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #96]
	bl	_free
	ldr	x0, [sp, #8]
	bl	_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_nparse                     ; -- Begin function mpc_nparse
	.p2align	2
_mpc_nparse:                            ; @mpc_nparse
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	_mpc_input_new_nstring
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	bl	_mpc_parse_input
	str	w0, [sp, #20]
	ldr	x0, [sp, #8]
	bl	_mpc_input_delete
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_new_nstring
_mpc_input_new_nstring:                 ; @mpc_input_new_nstring
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	mov	x0, #33400
	bl	_malloc
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	x8, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, x0, #1
	bl	_malloc
	ldur	x8, [x29, #-32]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	str	x2, [sp, #24]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldur	x8, [x29, #-32]
	mov	w9, #0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	str	wzr, [x8]
	ldur	x8, [x29, #-32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x8, sp, #32
	bl	_mpc_state_new
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	q0, [sp, #32]
	str	q0, [x8, #16]
	ldr	q0, [sp, #48]
	str	q0, [x8, #32]
	ldur	x8, [x29, #-24]
	add	x0, x8, #1
	bl	_malloc
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	str	x0, [x8, #48]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #48]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	___strncpy_chk
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #48]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x8, [x29, #-32]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldur	x8, [x29, #-32]
	str	xzr, [x8, #64]
	ldur	x8, [x29, #-32]
	str	wzr, [x8, #72]
	ldur	x9, [x29, #-32]
	mov	w8, #1
	str	w8, [x9, #76]
	ldur	x8, [x29, #-32]
	str	wzr, [x8, #84]
	ldur	x9, [x29, #-32]
	mov	w8, #32
	str	w8, [x9, #80]
	ldur	x8, [x29, #-32]
	ldrsw	x9, [x8, #80]
	mov	x8, #32
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x9, [x29, #-32]
	str	x0, [x9, #88]
	ldur	x9, [x29, #-32]
	ldrsw	x9, [x9, #80]
	mul	x0, x8, x9
	bl	_malloc
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	str	x0, [x8, #96]
	ldur	x8, [x29, #-32]
	strb	wzr, [x8, #104]
	ldur	x8, [x29, #-32]
	str	xzr, [x8, #112]
	ldur	x8, [x29, #-32]
	add	x0, x8, #120
	mov	x2, #512
	bl	___memset_chk
	ldur	x0, [x29, #-32]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_parse_file                 ; -- Begin function mpc_parse_file
	.p2align	2
_mpc_parse_file:                        ; @mpc_parse_file
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	_mpc_input_new_file
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	_mpc_parse_input
	str	w0, [sp, #12]
	ldr	x0, [sp]
	bl	_mpc_input_delete
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_new_file
_mpc_input_new_file:                    ; @mpc_input_new_file
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #33400
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	x8, #1
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x0, #1
	bl	_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x8, sp, #40
	bl	_mpc_state_new
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldur	q0, [sp, #40]
	str	q0, [x9, #16]
	ldur	q0, [sp, #56]
	str	q0, [x9, #32]
	ldur	x9, [x29, #-24]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9, #48]
	ldur	x9, [x29, #-24]
	str	xzr, [x9, #56]
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-24]
	str	x9, [x10, #64]
	ldur	x9, [x29, #-24]
	mov	w10, #0
	str	w10, [sp, #28]                  ; 4-byte Folded Spill
	str	wzr, [x9, #72]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #76]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #84]
	ldur	x9, [x29, #-24]
	mov	w8, #32
	str	w8, [x9, #80]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #80]
	mov	x8, #32
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	str	x0, [x9, #88]
	ldur	x9, [x29, #-24]
	ldrsw	x9, [x9, #80]
	mul	x0, x8, x9
	bl	_malloc
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldr	x3, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x0, [x8, #96]
	ldur	x8, [x29, #-24]
	strb	wzr, [x8, #104]
	ldur	x8, [x29, #-24]
	str	xzr, [x8, #112]
	ldur	x8, [x29, #-24]
	add	x0, x8, #120
	mov	x2, #512
	bl	___memset_chk
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_parse_pipe                 ; -- Begin function mpc_parse_pipe
	.p2align	2
_mpc_parse_pipe:                        ; @mpc_parse_pipe
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	_mpc_input_new_pipe
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	_mpc_parse_input
	str	w0, [sp, #12]
	ldr	x0, [sp]
	bl	_mpc_input_delete
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_new_pipe
_mpc_input_new_pipe:                    ; @mpc_input_new_pipe
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #33400
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	x8, #1
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x0, #1
	bl	_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldur	x9, [x29, #-24]
	mov	w8, #2
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, sp, #40
	bl	_mpc_state_new
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	q0, [sp, #40]
	str	q0, [x8, #16]
	ldur	q0, [sp, #56]
	str	q0, [x8, #32]
	ldur	x8, [x29, #-24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #48]
	ldur	x8, [x29, #-24]
	str	xzr, [x8, #56]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #64]
	ldur	x8, [x29, #-24]
	mov	w9, #0
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	str	wzr, [x8, #72]
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9, #76]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #84]
	ldur	x9, [x29, #-24]
	mov	w8, #32
	str	w8, [x9, #80]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #80]
	mov	x8, #32
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	str	x0, [x9, #88]
	ldur	x9, [x29, #-24]
	ldrsw	x9, [x9, #80]
	mul	x0, x8, x9
	bl	_malloc
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldr	x3, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x0, [x8, #96]
	ldur	x8, [x29, #-24]
	strb	wzr, [x8, #104]
	ldur	x8, [x29, #-24]
	str	xzr, [x8, #112]
	ldur	x8, [x29, #-24]
	add	x0, x8, #120
	mov	x2, #512
	bl	___memset_chk
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_parse_contents             ; -- Begin function mpc_parse_contents
	.p2align	2
_mpc_parse_contents:                    ; @mpc_parse_contents
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_fopen
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB23_2
	b	LBB23_1
LBB23_1:
	ldr	x8, [sp, #16]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldur	x0, [x29, #-16]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_mpc_err_file
	ldr	x8, [sp, #16]
	str	x0, [x8]
	stur	wzr, [x29, #-4]
	b	LBB23_3
LBB23_2:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	_mpc_parse_file
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	bl	_fclose
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	LBB23_3
LBB23_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_file
_mpc_err_file:                          ; @mpc_err_file
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #72
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #40]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #40]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	str	x2, [sp, #16]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, sp, #24
	bl	_mpc_state_new
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	q0, [sp, #24]
	str	q0, [x8]
	ldur	q0, [sp, #40]
	str	q0, [x8, #16]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #32]
	ldur	x8, [x29, #-24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldur	x0, [x29, #-16]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x0, [x8, #48]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #48]
	ldur	x1, [x29, #-16]
	bl	___strcpy_chk
	ldur	x9, [x29, #-24]
	mov	w8, #32
	strb	w8, [x9, #64]
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_delete                     ; -- Begin function mpc_delete
	.p2align	2
_mpc_delete:                            ; @mpc_delete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB25_4
	b	LBB25_1
LBB25_1:
	ldr	x8, [sp, #8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB25_3
	b	LBB25_2
LBB25_2:
	ldr	x0, [sp, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB25_3
LBB25_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_free
	ldr	x0, [sp, #8]
	bl	_free
	b	LBB25_5
LBB25_4:
	ldr	x0, [sp, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB25_5
LBB25_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_undefine_unretained
_mpc_undefine_unretained:               ; @mpc_undefine_unretained
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB26_3
	b	LBB26_1
LBB26_1:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB26_3
	b	LBB26_2
LBB26_2:
	b	LBB26_21
LBB26_3:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #2
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #27
	cset	w8, hi
	tbnz	w8, #0, LBB26_18
; %bb.4:
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI26_0@PAGE
	add	x10, x10, lJTI26_0@PAGEOFF
Ltmp3:
	adr	x8, Ltmp3
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB26_5:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	_free
	b	LBB26_19
LBB26_6:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	_free
	b	LBB26_19
LBB26_7:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB26_19
LBB26_8:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB26_19
LBB26_9:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB26_19
LBB26_10:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB26_19
LBB26_11:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	bl	_free
	b	LBB26_19
LBB26_12:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB26_19
LBB26_13:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	str	w1, [sp, #4]                    ; 4-byte Folded Spill
	bl	_mpc_undefine_unretained
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	_mpc_undefine_unretained
	b	LBB26_19
LBB26_14:
	ldur	x0, [x29, #-8]
	bl	_mpc_undefine_or
	b	LBB26_19
LBB26_15:
	ldur	x0, [x29, #-8]
	bl	_mpc_undefine_and
	b	LBB26_19
LBB26_16:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	_free
	b	LBB26_19
LBB26_17:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	bl	_free
	b	LBB26_19
LBB26_18:
	b	LBB26_19
LBB26_19:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB26_21
	b	LBB26_20
LBB26_20:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-8]
	bl	_free
	b	LBB26_21
LBB26_21:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
	.p2align	2
lJTI26_0:
	.long	LBB26_5-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_11-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_6-Ltmp3
	.long	LBB26_6-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_6-Ltmp3
	.long	LBB26_7-Ltmp3
	.long	LBB26_8-Ltmp3
	.long	LBB26_9-Ltmp3
	.long	LBB26_10-Ltmp3
	.long	LBB26_10-Ltmp3
	.long	LBB26_12-Ltmp3
	.long	LBB26_12-Ltmp3
	.long	LBB26_12-Ltmp3
	.long	LBB26_14-Ltmp3
	.long	LBB26_15-Ltmp3
	.long	LBB26_16-Ltmp3
	.long	LBB26_17-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_18-Ltmp3
	.long	LBB26_13-Ltmp3
                                        ; -- End function
	.globl	_mpc_new                        ; -- Begin function mpc_new
	.p2align	2
_mpc_new:                               ; @mpc_new
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #1
	strb	w8, [x9, #49]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_realloc
	ldr	x8, [sp, #16]
	str	x0, [x8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_undefined
_mpc_undefined:                         ; @mpc_undefined
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #1
	mov	x1, #56
	bl	_calloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	strb	wzr, [x8, #49]
	ldr	x8, [sp, #8]
	strb	wzr, [x8, #48]
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_copy                       ; -- Begin function mpc_copy
	.p2align	2
_mpc_copy:                              ; @mpc_copy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB29_2
	b	LBB29_1
LBB29_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB29_33
LBB29_2:
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #49]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #49]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #48]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #48]
	ldr	x8, [sp, #16]
	add	x0, x8, #8
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	mov	x2, #40
	bl	_memcpy
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB29_4
	b	LBB29_3
LBB29_3:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB29_4
LBB29_4:
	ldur	x8, [x29, #-16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #2
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #27
	cset	w8, hi
	tbnz	w8, #0, LBB29_31
; %bb.5:
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI29_0@PAGE
	add	x10, x10, lJTI29_0@PAGEOFF
Ltmp4:
	adr	x8, Ltmp4
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB29_6:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB29_32
LBB29_7:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB29_32
LBB29_8:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	b	LBB29_32
LBB29_9:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	b	LBB29_32
LBB29_10:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	b	LBB29_32
LBB29_11:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	b	LBB29_32
LBB29_12:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB29_32
LBB29_13:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #24]
	b	LBB29_32
LBB29_14:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #24]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #32]
	b	LBB29_32
LBB29_15:
	ldur	x8, [x29, #-16]
	ldrsw	x8, [x8, #8]
	lsl	x0, x8, #3
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #16]
	stur	wzr, [x29, #-20]
	b	LBB29_16
LBB29_16:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB29_19
	b	LBB29_17
LBB29_17:                               ;   in Loop: Header=BB29_16 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-20]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-20]
	str	x0, [x8, x9, lsl #3]
	b	LBB29_18
LBB29_18:                               ;   in Loop: Header=BB29_16 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB29_16
LBB29_19:
	b	LBB29_32
LBB29_20:
	ldur	x8, [x29, #-16]
	ldrsw	x8, [x8, #8]
	lsl	x0, x8, #3
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #24]
	stur	wzr, [x29, #-20]
	b	LBB29_21
LBB29_21:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB29_24
	b	LBB29_22
LBB29_22:                               ;   in Loop: Header=BB29_21 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-20]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-20]
	str	x0, [x8, x9, lsl #3]
	b	LBB29_23
LBB29_23:                               ;   in Loop: Header=BB29_21 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB29_21
LBB29_24:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	lsl	x0, x8, #3
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #32]
	stur	wzr, [x29, #-20]
	b	LBB29_25
LBB29_25:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB29_28
	b	LBB29_26
LBB29_26:                               ;   in Loop: Header=BB29_25 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #32]
	ldursw	x10, [x29, #-20]
	str	x8, [x9, x10, lsl #3]
	b	LBB29_27
LBB29_27:                               ;   in Loop: Header=BB29_25 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB29_25
LBB29_28:
	b	LBB29_32
LBB29_29:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #32]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #32]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #32]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #32]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB29_32
LBB29_30:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_mpc_copy
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #40]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #40]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #40]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #40]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB29_32
LBB29_31:
	b	LBB29_32
LBB29_32:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB29_33
LBB29_33:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
	.p2align	2
lJTI29_0:
	.long	LBB29_6-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_12-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_7-Ltmp4
	.long	LBB29_7-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_7-Ltmp4
	.long	LBB29_8-Ltmp4
	.long	LBB29_9-Ltmp4
	.long	LBB29_10-Ltmp4
	.long	LBB29_11-Ltmp4
	.long	LBB29_11-Ltmp4
	.long	LBB29_13-Ltmp4
	.long	LBB29_13-Ltmp4
	.long	LBB29_13-Ltmp4
	.long	LBB29_15-Ltmp4
	.long	LBB29_20-Ltmp4
	.long	LBB29_29-Ltmp4
	.long	LBB29_30-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_31-Ltmp4
	.long	LBB29_14-Ltmp4
                                        ; -- End function
	.globl	_mpc_undefine                   ; -- Begin function mpc_undefine
	.p2align	2
_mpc_undefine:                          ; @mpc_undefine
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	_mpc_undefine_unretained
	ldr	x8, [sp, #8]
	strb	wzr, [x8, #48]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_define                     ; -- Begin function mpc_define
	.p2align	2
_mpc_define:                            ; @mpc_define
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB31_2
	b	LBB31_1
LBB31_1:
	ldr	x8, [sp, #16]
	ldrb	w8, [x8, #48]
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	add	x0, x8, #8
	ldr	x8, [sp, #16]
	add	x1, x8, #8
	mov	x2, #40
	bl	_memcpy
	b	LBB31_3
LBB31_2:
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_mpc_failf
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #48]
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	add	x0, x8, #8
	ldr	x8, [sp, #8]
	add	x1, x8, #8
	mov	x2, #40
	bl	_memcpy
	ldr	x0, [sp, #8]
	bl	_free
	b	LBB31_3
LBB31_3:
	ldr	x0, [sp, #16]
	bl	_free
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_failf                      ; -- Begin function mpc_failf
	.p2align	2
_mpc_failf:                             ; @mpc_failf
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #2
	strb	w8, [x9, #48]
	add	x9, sp, #24
	add	x8, x29, #16
	str	x8, [x9]
	mov	x0, #2048
	bl	_malloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB32_2
	b	LBB32_1
LBB32_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB32_3
LBB32_2:
	ldr	x0, [sp, #16]
	ldur	x3, [x29, #-16]
	ldr	x4, [sp, #24]
	mov	w1, #0
	mov	x2, #-1
	bl	___vsprintf_chk
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_realloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB32_3
LBB32_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_cleanup                    ; -- Begin function mpc_cleanup
	.p2align	2
_mpc_cleanup:                           ; @mpc_cleanup
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldursw	x9, [x29, #-4]
	mov	x8, #8
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp, #16]
	add	x9, sp, #8
	add	x8, x29, #16
	str	x8, [x9]
	stur	wzr, [x29, #-8]
	b	LBB33_1
LBB33_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB33_4
	b	LBB33_2
LBB33_2:                                ;   in Loop: Header=BB33_1 Depth=1
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	ldursw	x10, [x29, #-8]
	str	x8, [x9, x10, lsl #3]
	b	LBB33_3
LBB33_3:                                ;   in Loop: Header=BB33_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB33_1
LBB33_4:
	stur	wzr, [x29, #-8]
	b	LBB33_5
LBB33_5:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB33_8
	b	LBB33_6
LBB33_6:                                ;   in Loop: Header=BB33_5 Depth=1
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-8]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_undefine
	b	LBB33_7
LBB33_7:                                ;   in Loop: Header=BB33_5 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB33_5
LBB33_8:
	stur	wzr, [x29, #-8]
	b	LBB33_9
LBB33_9:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB33_12
	b	LBB33_10
LBB33_10:                               ;   in Loop: Header=BB33_9 Depth=1
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-8]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_delete
	b	LBB33_11
LBB33_11:                               ;   in Loop: Header=BB33_9 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB33_9
LBB33_12:
	ldr	x0, [sp, #16]
	bl	_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_pass                       ; -- Begin function mpc_pass
	.p2align	2
_mpc_pass:                              ; @mpc_pass
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1
	strb	w8, [x9, #48]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_fail                       ; -- Begin function mpc_fail
	.p2align	2
_mpc_fail:                              ; @mpc_fail
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #2
	strb	w8, [x9, #48]
	ldr	x0, [sp, #8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp]
	str	x0, [x8, #8]
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	ldr	x1, [sp, #8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_lift_val                   ; -- Begin function mpc_lift_val
	.p2align	2
_mpc_lift_val:                          ; @mpc_lift_val
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #4
	strb	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_lift                       ; -- Begin function mpc_lift
	.p2align	2
_mpc_lift:                              ; @mpc_lift
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #3
	strb	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_anchor                     ; -- Begin function mpc_anchor
	.p2align	2
_mpc_anchor:                            ; @mpc_anchor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #6
	strb	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x0, [sp]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_expect                     ; -- Begin function mpc_expect
	.p2align	2
_mpc_expect:                            ; @mpc_expect
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #5
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x0, [sp, #16]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldr	x1, [sp, #16]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_state                      ; -- Begin function mpc_state
	.p2align	2
_mpc_state:                             ; @mpc_state
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #7
	strb	w8, [x9, #48]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_expectf                    ; -- Begin function mpc_expectf
	.p2align	2
_mpc_expectf:                           ; @mpc_expectf
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #5
	strb	w8, [x9, #48]
	add	x9, sp, #32
	add	x8, x29, #16
	str	x8, [x9]
	mov	x0, #2048
	bl	_malloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB41_2
	b	LBB41_1
LBB41_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB41_3
LBB41_2:
	ldr	x0, [sp, #24]
	ldur	x3, [x29, #-24]
	ldr	x4, [sp, #32]
	mov	w1, #0
	mov	x2, #-1
	bl	___vsprintf_chk
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_realloc
	str	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB41_3
LBB41_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_any                        ; -- Begin function mpc_any
	.p2align	2
_mpc_any:                               ; @mpc_any
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #8
	strb	w8, [x9, #48]
	ldr	x0, [sp, #8]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_char                       ; -- Begin function mpc_char
	.p2align	2
_mpc_char:                              ; @mpc_char
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-1]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #9
	strb	w8, [x9, #48]
	ldurb	w8, [x29, #-1]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #8]
	ldr	x0, [sp, #16]
	ldursb	w10, [x29, #-1]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_mpc_expectf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_range                      ; -- Begin function mpc_range
	.p2align	2
_mpc_range:                             ; @mpc_range
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-1]
	sturb	w1, [x29, #-2]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #12
	strb	w8, [x9, #48]
	ldurb	w8, [x29, #-1]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #8]
	ldurb	w8, [x29, #-2]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #9]
	ldr	x0, [sp, #16]
	ldursb	w11, [x29, #-1]
	ldursb	w10, [x29, #-2]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x11
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #8]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	_mpc_expectf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_oneof                      ; -- Begin function mpc_oneof
	.p2align	2
_mpc_oneof:                             ; @mpc_oneof
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #10
	strb	w8, [x9, #48]
	ldur	x0, [x29, #-8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	_mpc_expectf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_noneof                     ; -- Begin function mpc_noneof
	.p2align	2
_mpc_noneof:                            ; @mpc_noneof
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #11
	strb	w8, [x9, #48]
	ldur	x0, [x29, #-8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	_mpc_expectf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_satisfy                    ; -- Begin function mpc_satisfy
	.p2align	2
_mpc_satisfy:                           ; @mpc_satisfy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #13
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	_mpc_expectf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_string                     ; -- Begin function mpc_string
	.p2align	2
_mpc_string:                            ; @mpc_string
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_undefined
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #14
	strb	w8, [x9, #48]
	ldur	x0, [x29, #-8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	_mpc_expectf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_apply                      ; -- Begin function mpc_apply
	.p2align	2
_mpc_apply:                             ; @mpc_apply
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #15
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_apply_to                   ; -- Begin function mpc_apply_to
	.p2align	2
_mpc_apply_to:                          ; @mpc_apply_to
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #16
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_check                      ; -- Begin function mpc_check
	.p2align	2
_mpc_check:                             ; @mpc_check
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #25
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldr	x0, [sp, #16]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	ldr	x1, [sp, #16]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_check_with                 ; -- Begin function mpc_check_with
	.p2align	2
_mpc_check_with:                        ; @mpc_check_with
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #26
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9, #32]
	ldr	x0, [sp, #8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp]
	str	x0, [x8, #40]
	ldr	x8, [sp]
	ldr	x0, [x8, #40]
	ldr	x1, [sp, #8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_checkf                     ; -- Begin function mpc_checkf
	.p2align	2
_mpc_checkf:                            ; @mpc_checkf
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	add	x9, sp, #24
	add	x8, x29, #16
	str	x8, [x9]
	mov	x0, #2048
	bl	_malloc
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #24]
	mov	w1, #0
	mov	x2, #-1
	bl	___vsprintf_chk
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #16]
	bl	_mpc_check
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_free
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_check_withf                ; -- Begin function mpc_check_withf
	.p2align	2
_mpc_check_withf:                       ; @mpc_check_withf
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	add	x9, sp, #16
	add	x8, x29, #16
	str	x8, [x9]
	mov	x0, #2048
	bl	_malloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x3, [sp, #24]
	ldr	x4, [sp, #16]
	mov	w1, #0
	mov	x2, #-1
	bl	___vsprintf_chk
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	x4, [sp, #8]
	bl	_mpc_check_with
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_predictive                 ; -- Begin function mpc_predictive
	.p2align	2
_mpc_predictive:                        ; @mpc_predictive
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #17
	strb	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_not_lift                   ; -- Begin function mpc_not_lift
	.p2align	2
_mpc_not_lift:                          ; @mpc_not_lift
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #18
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_not                        ; -- Begin function mpc_not
	.p2align	2
_mpc_not:                               ; @mpc_not
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, _mpcf_ctor_null@PAGE
	add	x2, x2, _mpcf_ctor_null@PAGEOFF
	bl	_mpc_not_lift
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_ctor_null                 ; -- Begin function mpcf_ctor_null
	.p2align	2
_mpcf_ctor_null:                        ; @mpcf_ctor_null
	.cfi_startproc
; %bb.0:
	mov	x0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_maybe_lift                 ; -- Begin function mpc_maybe_lift
	.p2align	2
_mpc_maybe_lift:                        ; @mpc_maybe_lift
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #19
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_maybe                      ; -- Begin function mpc_maybe
	.p2align	2
_mpc_maybe:                             ; @mpc_maybe
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpcf_ctor_null@PAGE
	add	x1, x1, _mpcf_ctor_null@PAGEOFF
	bl	_mpc_maybe_lift
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_many                       ; -- Begin function mpc_many
	.p2align	2
_mpc_many:                              ; @mpc_many
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #20
	strb	w8, [x9, #48]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_many1                      ; -- Begin function mpc_many1
	.p2align	2
_mpc_many1:                             ; @mpc_many1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #21
	strb	w8, [x9, #48]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_count                      ; -- Begin function mpc_count
	.p2align	2
_mpc_count:                             ; @mpc_count
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #22
	strb	w8, [x9, #48]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #32]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_sepby1                     ; -- Begin function mpc_sepby1
	.p2align	2
_mpc_sepby1:                            ; @mpc_sepby1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	bl	_mpc_undefined
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #29
	strb	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9, #32]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_or                         ; -- Begin function mpc_or
	.p2align	2
_mpc_or:                                ; @mpc_or
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #23
	strb	w8, [x9, #48]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldursw	x9, [x29, #-4]
	mov	x8, #8
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #16]
	add	x9, sp, #16
	add	x8, x29, #16
	str	x8, [x9]
	stur	wzr, [x29, #-8]
	b	LBB65_1
LBB65_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB65_4
	b	LBB65_2
LBB65_2:                                ;   in Loop: Header=BB65_1 Depth=1
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [sp, #16]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-8]
	str	x8, [x9, x10, lsl #3]
	b	LBB65_3
LBB65_3:                                ;   in Loop: Header=BB65_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB65_1
LBB65_4:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_and                        ; -- Begin function mpc_and
	.p2align	2
_mpc_and:                               ; @mpc_and
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	bl	_mpc_undefined
	str	x0, [sp, #24]
	ldr	x9, [sp, #24]
	mov	w8, #24
	strb	w8, [x9, #48]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #16]
	ldursw	x9, [x29, #-4]
	mov	x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [sp, #24]
	str	x0, [x9, #24]
	ldur	w9, [x29, #-4]
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #24]
	str	x0, [x8, #32]
	add	x9, sp, #32
	add	x8, x29, #16
	str	x8, [x9]
	stur	wzr, [x29, #-20]
	b	LBB66_1
LBB66_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB66_4
	b	LBB66_2
LBB66_2:                                ;   in Loop: Header=BB66_1 Depth=1
	ldr	x9, [sp, #32]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [sp, #32]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-20]
	str	x8, [x9, x10, lsl #3]
	b	LBB66_3
LBB66_3:                                ;   in Loop: Header=BB66_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB66_1
LBB66_4:
	stur	wzr, [x29, #-20]
	b	LBB66_5
LBB66_5:                                ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB66_8
	b	LBB66_6
LBB66_6:                                ;   in Loop: Header=BB66_5 Depth=1
	ldr	x9, [sp, #32]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [sp, #32]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #32]
	ldursw	x10, [x29, #-20]
	str	x8, [x9, x10, lsl #3]
	b	LBB66_7
LBB66_7:                                ;   in Loop: Header=BB66_5 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB66_5
LBB66_8:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_soi                        ; -- Begin function mpc_soi
	.p2align	2
_mpc_soi:                               ; @mpc_soi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #27
	strb	w8, [x9, #48]
	ldr	x0, [sp, #8]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_eoi                        ; -- Begin function mpc_eoi
	.p2align	2
_mpc_eoi:                               ; @mpc_eoi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #28
	strb	w8, [x9, #48]
	ldr	x0, [sp, #8]
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_boundary                   ; -- Begin function mpc_boundary
	.p2align	2
_mpc_boundary:                          ; @mpc_boundary
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, _mpc_boundary_anchor@PAGE
	add	x0, x0, _mpc_boundary_anchor@PAGEOFF
	bl	_mpc_anchor
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_boundary_anchor
_mpc_boundary_anchor:                   ; @mpc_boundary_anchor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-5]
	sturb	w1, [x29, #-6]
	adrp	x8, l_.str.109@PAGE
	add	x8, x8, l_.str.109@PAGEOFF
	str	x8, [sp]
	ldr	x0, [sp]
	ldursb	w1, [x29, #-6]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB70_3
	b	LBB70_1
LBB70_1:
	ldursb	w8, [x29, #-5]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB70_3
	b	LBB70_2
LBB70_2:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB70_13
LBB70_3:
	ldr	x0, [sp]
	ldursb	w1, [x29, #-5]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB70_6
	b	LBB70_4
LBB70_4:
	ldursb	w8, [x29, #-6]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB70_6
	b	LBB70_5
LBB70_5:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB70_13
LBB70_6:
	ldr	x0, [sp]
	ldursb	w1, [x29, #-6]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB70_9
	b	LBB70_7
LBB70_7:
	ldr	x0, [sp]
	ldursb	w1, [x29, #-5]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB70_9
	b	LBB70_8
LBB70_8:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB70_13
LBB70_9:
	ldr	x0, [sp]
	ldursb	w1, [x29, #-6]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB70_12
	b	LBB70_10
LBB70_10:
	ldr	x0, [sp]
	ldursb	w1, [x29, #-5]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB70_12
	b	LBB70_11
LBB70_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB70_13
LBB70_12:
	stur	wzr, [x29, #-4]
	b	LBB70_13
LBB70_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_boundary_newline           ; -- Begin function mpc_boundary_newline
	.p2align	2
_mpc_boundary_newline:                  ; @mpc_boundary_newline
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, _mpc_boundary_newline_anchor@PAGE
	add	x0, x0, _mpc_boundary_newline_anchor@PAGEOFF
	bl	_mpc_anchor
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_boundary_newline_anchor
_mpc_boundary_newline_anchor:           ; @mpc_boundary_newline_anchor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	strb	w1, [sp, #14]
	ldrsb	w8, [sp, #15]
	subs	w8, w8, #10
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_whitespace                 ; -- Begin function mpc_whitespace
	.p2align	2
_mpc_whitespace:                        ; @mpc_whitespace
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_whitespaces                ; -- Begin function mpc_whitespaces
	.p2align	2
_mpc_whitespaces:                       ; @mpc_whitespaces
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_whitespace
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_strfold                   ; -- Begin function mpcf_strfold
	.p2align	2
_mpcf_strfold:                          ; @mpcf_strfold
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	str	x1, [sp, #24]
	str	xzr, [sp, #8]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB75_2
	b	LBB75_1
LBB75_1:
	mov	x1, #1
	mov	x0, x1
	bl	_calloc
	stur	x0, [x29, #-8]
	b	LBB75_11
LBB75_2:
	str	wzr, [sp, #20]
	b	LBB75_3
LBB75_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB75_6
	b	LBB75_4
LBB75_4:                                ;   in Loop: Header=BB75_3 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	x0, [x8, x9, lsl #3]
	bl	_strlen
	ldr	x8, [sp, #8]
	add	x8, x8, x0
	str	x8, [sp, #8]
	b	LBB75_5
LBB75_5:                                ;   in Loop: Header=BB75_3 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB75_3
LBB75_6:
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	ldr	x8, [sp, #8]
	add	x1, x8, #1
	bl	_realloc
	ldr	x8, [sp, #24]
	str	x0, [x8]
	mov	w8, #1
	str	w8, [sp, #20]
	b	LBB75_7
LBB75_7:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB75_10
	b	LBB75_8
LBB75_8:                                ;   in Loop: Header=BB75_7 Depth=1
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	x1, [x8, x9, lsl #3]
	mov	x2, #-1
	bl	___strcat_chk
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	b	LBB75_9
LBB75_9:                                ;   in Loop: Header=BB75_7 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB75_7
LBB75_10:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB75_11
LBB75_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_blank                      ; -- Begin function mpc_blank
	.p2align	2
_mpc_blank:                             ; @mpc_blank
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_whitespaces
	adrp	x1, _mpcf_free@PAGE
	add	x1, x1, _mpcf_free@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_free                      ; -- Begin function mpcf_free
	.p2align	2
_mpcf_free:                             ; @mpcf_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_free
	mov	x0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_newline                    ; -- Begin function mpc_newline
	.p2align	2
_mpc_newline:                           ; @mpc_newline
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #10
	bl	_mpc_char
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tab                        ; -- Begin function mpc_tab
	.p2align	2
_mpc_tab:                               ; @mpc_tab
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #9
	bl	_mpc_char
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_escape                     ; -- Begin function mpc_escape
	.p2align	2
_mpc_escape:                            ; @mpc_escape
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #92
	bl	_mpc_char
	stur	x0, [x29, #-8]                  ; 8-byte Folded Spill
	bl	_mpc_any
	ldur	x8, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x0, [x9, #8]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_strfold@PAGE
	add	x1, x1, _mpcf_strfold@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_digit                      ; -- Begin function mpc_digit
	.p2align	2
_mpc_digit:                             ; @mpc_digit
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_hexdigit                   ; -- Begin function mpc_hexdigit
	.p2align	2
_mpc_hexdigit:                          ; @mpc_hexdigit
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.31@PAGE
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_octdigit                   ; -- Begin function mpc_octdigit
	.p2align	2
_mpc_octdigit:                          ; @mpc_octdigit
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.33@PAGE
	add	x0, x0, l_.str.33@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.34@PAGE
	add	x1, x1, l_.str.34@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_digits                     ; -- Begin function mpc_digits
	.p2align	2
_mpc_digits:                            ; @mpc_digits
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_digit
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many1
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_hexdigits                  ; -- Begin function mpc_hexdigits
	.p2align	2
_mpc_hexdigits:                         ; @mpc_hexdigits
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_hexdigit
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many1
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_octdigits                  ; -- Begin function mpc_octdigits
	.p2align	2
_mpc_octdigits:                         ; @mpc_octdigits
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_octdigit
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many1
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_lower                      ; -- Begin function mpc_lower
	.p2align	2
_mpc_lower:                             ; @mpc_lower
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.38@PAGE
	add	x0, x0, l_.str.38@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_upper                      ; -- Begin function mpc_upper
	.p2align	2
_mpc_upper:                             ; @mpc_upper
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.40@PAGE
	add	x0, x0, l_.str.40@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.41@PAGE
	add	x1, x1, l_.str.41@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_alpha                      ; -- Begin function mpc_alpha
	.p2align	2
_mpc_alpha:                             ; @mpc_alpha
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.42@PAGE
	add	x0, x0, l_.str.42@PAGEOFF
	bl	_mpc_oneof
	adrp	x1, l_.str.43@PAGE
	add	x1, x1, l_.str.43@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_underscore                 ; -- Begin function mpc_underscore
	.p2align	2
_mpc_underscore:                        ; @mpc_underscore
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #95
	bl	_mpc_char
	adrp	x1, l_.str.44@PAGE
	add	x1, x1, l_.str.44@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_alphanum                   ; -- Begin function mpc_alphanum
	.p2align	2
_mpc_alphanum:                          ; @mpc_alphanum
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_alpha
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_digit
	stur	x0, [x29, #-8]                  ; 8-byte Folded Spill
	bl	_mpc_underscore
	ldur	x10, [x29, #-16]                ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x8, sp
	str	x10, [x8]
	str	x9, [x8, #8]
	str	x0, [x8, #16]
	mov	w0, #3
	bl	_mpc_or
	adrp	x1, l_.str.45@PAGE
	add	x1, x1, l_.str.45@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_int                        ; -- Begin function mpc_int
	.p2align	2
_mpc_int:                               ; @mpc_int
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_digits
	adrp	x1, _mpcf_int@PAGE
	add	x1, x1, _mpcf_int@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.46@PAGE
	add	x1, x1, l_.str.46@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_int                       ; -- Begin function mpcf_int
	.p2align	2
_mpcf_int:                              ; @mpcf_int
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	x0, #4
	bl	_malloc
	str	x0, [sp]
	ldr	x0, [sp, #8]
	mov	x1, #0
	mov	w2, #10
	bl	_strtol
	ldr	x9, [sp]
	mov	x8, x0
	str	w8, [x9]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_hex                        ; -- Begin function mpc_hex
	.p2align	2
_mpc_hex:                               ; @mpc_hex
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_hexdigits
	adrp	x1, _mpcf_hex@PAGE
	add	x1, x1, _mpcf_hex@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_hex                       ; -- Begin function mpcf_hex
	.p2align	2
_mpcf_hex:                              ; @mpcf_hex
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	x0, #4
	bl	_malloc
	str	x0, [sp]
	ldr	x0, [sp, #8]
	mov	x1, #0
	mov	w2, #16
	bl	_strtol
	ldr	x9, [sp]
	mov	x8, x0
	str	w8, [x9]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_oct                        ; -- Begin function mpc_oct
	.p2align	2
_mpc_oct:                               ; @mpc_oct
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_octdigits
	adrp	x1, _mpcf_oct@PAGE
	add	x1, x1, _mpcf_oct@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_oct                       ; -- Begin function mpcf_oct
	.p2align	2
_mpcf_oct:                              ; @mpcf_oct
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	x0, #4
	bl	_malloc
	str	x0, [sp]
	ldr	x0, [sp, #8]
	mov	x1, #0
	mov	w2, #8
	bl	_strtol
	ldr	x9, [sp]
	mov	x8, x0
	str	w8, [x9]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_number                     ; -- Begin function mpc_number
	.p2align	2
_mpc_number:                            ; @mpc_number
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_int
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_hex
	stur	x0, [x29, #-8]                  ; 8-byte Folded Spill
	bl	_mpc_oct
	ldur	x10, [x29, #-16]                ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x8, sp
	str	x10, [x8]
	str	x9, [x8, #8]
	str	x0, [x8, #16]
	mov	w0, #3
	bl	_mpc_or
	adrp	x1, l_.str.49@PAGE
	add	x1, x1, l_.str.49@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_real                       ; -- Begin function mpc_real
	.p2align	2
_mpc_real:                              ; @mpc_real
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	stur	x8, [x29, #-72]                 ; 8-byte Folded Spill
	adrp	x0, l_.str.50@PAGE
	add	x0, x0, l_.str.50@PAGEOFF
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	bl	_mpc_oneof
	adrp	x1, _mpcf_ctor_str@PAGE
	add	x1, x1, _mpcf_ctor_str@PAGEOFF
	str	x1, [sp, #80]                   ; 8-byte Folded Spill
	bl	_mpc_maybe_lift
	stur	x0, [x29, #-8]
	bl	_mpc_digits
	stur	x0, [x29, #-16]
	mov	w0, #46
	bl	_mpc_char
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	bl	_mpc_digits
	ldr	x10, [sp, #64]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-72]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_strfold@PAGE
	add	x1, x1, _mpcf_strfold@PAGEOFF
	stur	x1, [x29, #-64]                 ; 8-byte Folded Spill
	bl	_mpc_and
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	_mpc_maybe_lift
	stur	x0, [x29, #-24]
	adrp	x0, l_.str.51@PAGE
	add	x0, x0, l_.str.51@PAGEOFF
	bl	_mpc_oneof
	mov	x8, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	bl	_mpc_oneof
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	_mpc_maybe_lift
	stur	x0, [x29, #-40]
	bl	_mpc_digits
	ldur	x8, [x29, #-72]                 ; 8-byte Folded Reload
	ldur	x1, [x29, #-64]                 ; 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x12, [x29, #-32]
	ldur	x11, [x29, #-40]
	ldur	x10, [x29, #-48]
	mov	x9, sp
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	mov	x10, x8
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	bl	_mpc_and
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	_mpc_maybe_lift
	ldur	x8, [x29, #-72]                 ; 8-byte Folded Reload
	ldur	x1, [x29, #-64]                 ; 8-byte Folded Reload
	stur	x0, [x29, #-56]
	ldur	x13, [x29, #-8]
	ldur	x12, [x29, #-16]
	ldur	x11, [x29, #-24]
	ldur	x10, [x29, #-56]
	mov	x9, sp
	str	x13, [x9]
	str	x12, [x9, #8]
	str	x11, [x9, #16]
	str	x10, [x9, #24]
	mov	x10, x8
	str	x10, [x9, #32]
	mov	x10, x8
	str	x10, [x9, #40]
	str	x8, [x9, #48]
	mov	w0, #4
	bl	_mpc_and
	adrp	x1, l_.str.52@PAGE
	add	x1, x1, l_.str.52@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_ctor_str                  ; -- Begin function mpcf_ctor_str
	.p2align	2
_mpcf_ctor_str:                         ; @mpcf_ctor_str
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x1, #1
	mov	x0, x1
	bl	_calloc
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_float                      ; -- Begin function mpc_float
	.p2align	2
_mpc_float:                             ; @mpc_float
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_real
	adrp	x1, _mpcf_float@PAGE
	add	x1, x1, _mpcf_float@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.53@PAGE
	add	x1, x1, l_.str.53@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_float                     ; -- Begin function mpcf_float
	.p2align	2
_mpcf_float:                            ; @mpcf_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	x0, #4
	bl	_malloc
	str	x0, [sp]
	ldr	x0, [sp, #8]
	mov	x1, #0
	bl	_strtod
	fcvt	s0, d0
	ldr	x8, [sp]
	str	s0, [x8]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_char_lit                   ; -- Begin function mpc_char_lit
	.p2align	2
_mpc_char_lit:                          ; @mpc_char_lit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_escape
	stur	x0, [x29, #-8]                  ; 8-byte Folded Spill
	bl	_mpc_any
	ldur	x9, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	mov	w0, #2
	bl	_mpc_or
	adrp	x1, _free@GOTPAGE
	ldr	x1, [x1, _free@GOTPAGEOFF]
	adrp	x3, l_.str.54@PAGE
	add	x3, x3, l_.str.54@PAGEOFF
	mov	x2, x3
	bl	_mpc_between
	adrp	x1, l_.str.55@PAGE
	add	x1, x1, l_.str.55@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_between                    ; -- Begin function mpc_between
	.p2align	2
_mpc_between:                           ; @mpc_between
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-24]
	bl	_mpc_string
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-40]                 ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_mpc_string
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x0, [x9, #16]
	adrp	x10, _free@GOTPAGE
	ldr	x10, [x10, _free@GOTPAGEOFF]
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	adrp	x1, _mpcf_snd_free@PAGE
	add	x1, x1, _mpcf_snd_free@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_string_lit                 ; -- Begin function mpc_string_lit
	.p2align	2
_mpc_string_lit:                        ; @mpc_string_lit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_escape
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x0, l_.str.56@PAGE
	add	x0, x0, l_.str.56@PAGEOFF
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_noneof
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	mov	w0, #2
	bl	_mpc_or
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	ldur	x3, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, _free@GOTPAGE
	ldr	x1, [x1, _free@GOTPAGEOFF]
	mov	x2, x3
	bl	_mpc_between
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_regex_lit                  ; -- Begin function mpc_regex_lit
	.p2align	2
_mpc_regex_lit:                         ; @mpc_regex_lit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_escape
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x0, l_.str.58@PAGE
	add	x0, x0, l_.str.58@PAGEOFF
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_noneof
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	mov	w0, #2
	bl	_mpc_or
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	ldur	x3, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, _free@GOTPAGE
	ldr	x1, [x1, _free@GOTPAGEOFF]
	mov	x2, x3
	bl	_mpc_between
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	bl	_mpc_expect
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ident                      ; -- Begin function mpc_ident
	.p2align	2
_mpc_ident:                             ; @mpc_ident
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_mpc_alpha
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	_mpc_underscore
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	mov	w0, #2
	stur	w0, [x29, #-20]                 ; 4-byte Folded Spill
	bl	_mpc_or
	stur	x0, [x29, #-8]
	bl	_mpc_alphanum
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	_mpc_many
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-20]                 ; 4-byte Folded Reload
	stur	x8, [x29, #-16]
	ldur	x10, [x29, #-8]
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [x9, #16]
	bl	_mpc_and
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_startwith                  ; -- Begin function mpc_startwith
	.p2align	2
_mpc_startwith:                         ; @mpc_startwith
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_soi
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x0, [x9]
	str	x8, [x9, #8]
	adrp	x8, _mpcf_dtor_null@PAGE
	add	x8, x8, _mpcf_dtor_null@PAGEOFF
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_snd                       ; -- Begin function mpcf_snd
	.p2align	2
_mpcf_snd:                              ; @mpcf_snd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_dtor_null                 ; -- Begin function mpcf_dtor_null
	.p2align	2
_mpcf_dtor_null:                        ; @mpcf_dtor_null
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_endwith                    ; -- Begin function mpc_endwith
	.p2align	2
_mpc_endwith:                           ; @mpc_endwith
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	_mpc_eoi
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_fst@PAGE
	add	x1, x1, _mpcf_fst@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_fst                       ; -- Begin function mpcf_fst
	.p2align	2
_mpcf_fst:                              ; @mpcf_fst
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_whole                      ; -- Begin function mpc_whole
	.p2align	2
_mpc_whole:                             ; @mpc_whole
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	_mpc_soi
	stur	x0, [x29, #-32]                 ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	bl	_mpc_eoi
	ldur	x11, [x29, #-32]                ; 8-byte Folded Reload
	ldur	x10, [x29, #-24]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x0, [x9, #16]
	adrp	x10, _mpcf_dtor_null@PAGE
	add	x10, x10, _mpcf_dtor_null@PAGEOFF
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_stripl                     ; -- Begin function mpc_stripl
	.p2align	2
_mpc_stripl:                            ; @mpc_stripl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_blank
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x0, [x9]
	str	x8, [x9, #8]
	adrp	x8, _mpcf_dtor_null@PAGE
	add	x8, x8, _mpcf_dtor_null@PAGEOFF
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_stripr                     ; -- Begin function mpc_stripr
	.p2align	2
_mpc_stripr:                            ; @mpc_stripr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_blank
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x0, [x9, #8]
	adrp	x8, _mpcf_dtor_null@PAGE
	add	x8, x8, _mpcf_dtor_null@PAGEOFF
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_fst@PAGE
	add	x1, x1, _mpcf_fst@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_strip                      ; -- Begin function mpc_strip
	.p2align	2
_mpc_strip:                             ; @mpc_strip
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_blank
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_blank
	ldur	x10, [x29, #-24]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	str	x0, [x9, #16]
	adrp	x8, _mpcf_dtor_null@PAGE
	add	x8, x8, _mpcf_dtor_null@PAGEOFF
	mov	x10, x8
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tok                        ; -- Begin function mpc_tok
	.p2align	2
_mpc_tok:                               ; @mpc_tok
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	bl	_mpc_blank
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	str	x0, [x9, #8]
	adrp	x8, _mpcf_dtor_null@PAGE
	add	x8, x8, _mpcf_dtor_null@PAGEOFF
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_fst@PAGE
	add	x1, x1, _mpcf_fst@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_sym                        ; -- Begin function mpc_sym
	.p2align	2
_mpc_sym:                               ; @mpc_sym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_mpc_string
	bl	_mpc_tok
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_total                      ; -- Begin function mpc_total
	.p2align	2
_mpc_total:                             ; @mpc_total
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	_mpc_strip
	ldr	x1, [sp]
	bl	_mpc_whole
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_snd_free                  ; -- Begin function mpcf_snd_free
	.p2align	2
_mpcf_snd_free:                         ; @mpcf_snd_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x1, [sp]
	mov	w2, #1
	bl	_mpcf_nth_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_parens                     ; -- Begin function mpc_parens
	.p2align	2
_mpc_parens:                            ; @mpc_parens
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.60@PAGE
	add	x2, x2, l_.str.60@PAGEOFF
	adrp	x3, l_.str.61@PAGE
	add	x3, x3, l_.str.61@PAGEOFF
	bl	_mpc_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_braces                     ; -- Begin function mpc_braces
	.p2align	2
_mpc_braces:                            ; @mpc_braces
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.62@PAGE
	add	x2, x2, l_.str.62@PAGEOFF
	adrp	x3, l_.str.63@PAGE
	add	x3, x3, l_.str.63@PAGEOFF
	bl	_mpc_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_brackets                   ; -- Begin function mpc_brackets
	.p2align	2
_mpc_brackets:                          ; @mpc_brackets
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.64@PAGE
	add	x2, x2, l_.str.64@PAGEOFF
	adrp	x3, l_.str.65@PAGE
	add	x3, x3, l_.str.65@PAGEOFF
	bl	_mpc_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_squares                    ; -- Begin function mpc_squares
	.p2align	2
_mpc_squares:                           ; @mpc_squares
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.66@PAGE
	add	x2, x2, l_.str.66@PAGEOFF
	adrp	x3, l_.str.67@PAGE
	add	x3, x3, l_.str.67@PAGEOFF
	bl	_mpc_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tok_between                ; -- Begin function mpc_tok_between
	.p2align	2
_mpc_tok_between:                       ; @mpc_tok_between
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-24]
	bl	_mpc_sym
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_mpc_tok
	stur	x0, [x29, #-40]                 ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_mpc_sym
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x0, [x9, #16]
	adrp	x10, _free@GOTPAGE
	ldr	x10, [x10, _free@GOTPAGEOFF]
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	adrp	x1, _mpcf_snd_free@PAGE
	add	x1, x1, _mpcf_snd_free@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tok_parens                 ; -- Begin function mpc_tok_parens
	.p2align	2
_mpc_tok_parens:                        ; @mpc_tok_parens
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.60@PAGE
	add	x2, x2, l_.str.60@PAGEOFF
	adrp	x3, l_.str.61@PAGE
	add	x3, x3, l_.str.61@PAGEOFF
	bl	_mpc_tok_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tok_braces                 ; -- Begin function mpc_tok_braces
	.p2align	2
_mpc_tok_braces:                        ; @mpc_tok_braces
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.62@PAGE
	add	x2, x2, l_.str.62@PAGEOFF
	adrp	x3, l_.str.63@PAGE
	add	x3, x3, l_.str.63@PAGEOFF
	bl	_mpc_tok_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tok_brackets               ; -- Begin function mpc_tok_brackets
	.p2align	2
_mpc_tok_brackets:                      ; @mpc_tok_brackets
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.64@PAGE
	add	x2, x2, l_.str.64@PAGEOFF
	adrp	x3, l_.str.65@PAGE
	add	x3, x3, l_.str.65@PAGEOFF
	bl	_mpc_tok_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_tok_squares                ; -- Begin function mpc_tok_squares
	.p2align	2
_mpc_tok_squares:                       ; @mpc_tok_squares
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.66@PAGE
	add	x2, x2, l_.str.66@PAGEOFF
	adrp	x3, l_.str.67@PAGE
	add	x3, x3, l_.str.67@PAGEOFF
	bl	_mpc_tok_between
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_re                         ; -- Begin function mpc_re
	.p2align	2
_mpc_re:                                ; @mpc_re
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #0
	bl	_mpc_re_mode
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_re_mode                    ; -- Begin function mpc_re_mode
	.p2align	2
_mpc_re_mode:                           ; @mpc_re_mode
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	sub	x8, x29, #28
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	stur	w1, [x29, #-28]
	adrp	x0, l_.str.59@PAGE
	add	x0, x0, l_.str.59@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-64]
	adrp	x0, l_.str.68@PAGE
	add	x0, x0, l_.str.68@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-72]
	adrp	x0, l_.str.69@PAGE
	add	x0, x0, l_.str.69@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-80]
	adrp	x0, l_.str.70@PAGE
	add	x0, x0, l_.str.70@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-88]
	adrp	x0, l_.str.71@PAGE
	add	x0, x0, l_.str.71@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-96]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-72]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	mov	w0, #124
	bl	_mpc_char
	ldur	x8, [x29, #-64]
	mov	x9, sp
	str	x0, [x9]
	str	x8, [x9, #8]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	str	x8, [x9, #16]
	mov	w0, #2
	stur	w0, [x29, #-124]                ; 4-byte Folded Spill
	adrp	x1, _mpcf_snd_free@PAGE
	add	x1, x1, _mpcf_snd_free@PAGEOFF
	bl	_mpc_and
	bl	_mpc_maybe
	ldr	x10, [sp, #56]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-124]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x8, _mpc_delete@PAGE
	add	x8, x8, _mpc_delete@PAGEOFF
	stur	x8, [x29, #-112]                ; 8-byte Folded Spill
	str	x8, [x9, #16]
	adrp	x1, _mpcf_re_or@PAGE
	add	x1, x1, _mpcf_re_or@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-72]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	ldur	x1, [x29, #-80]
	adrp	x0, _mpcf_re_and@PAGE
	add	x0, x0, _mpcf_re_and@PAGEOFF
	bl	_mpc_many
	mov	x1, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-80]
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldur	x8, [x29, #-88]
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	mov	w0, #42
	bl	_mpc_char
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	mov	w0, #43
	bl	_mpc_char
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	mov	w0, #63
	bl	_mpc_char
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	bl	_mpc_int
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	_mpc_brackets
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	bl	_mpc_pass
	ldr	x12, [sp, #88]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #104]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #112]                  ; 8-byte Folded Reload
	mov	x8, sp
	str	x12, [x8]
	str	x11, [x8, #8]
	str	x10, [x8, #16]
	str	x9, [x8, #24]
	str	x0, [x8, #32]
	mov	w0, #5
	bl	_mpc_or
	ldr	x11, [sp, #120]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-112]                ; 8-byte Folded Reload
	mov	x10, x0
	ldur	w0, [x29, #-124]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcf_re_repeat@PAGE
	add	x1, x1, _mpcf_re_repeat@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x1, [x29, #-112]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-144]                ; 8-byte Folded Spill
	ldur	x0, [x29, #-64]
	bl	_mpc_parens
	ldur	x1, [x29, #-112]                ; 8-byte Folded Reload
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
	ldur	x0, [x29, #-96]
	bl	_mpc_squares
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	bl	_mpc_escape
	ldr	x2, [sp, #144]                  ; 8-byte Folded Reload
	adrp	x1, _mpcf_re_escape@PAGE
	add	x1, x1, _mpcf_re_escape@PAGEOFF
	str	x1, [sp, #136]                  ; 8-byte Folded Spill
	bl	_mpc_apply_to
	stur	x0, [x29, #-152]                ; 8-byte Folded Spill
	adrp	x0, l_.str.72@PAGE
	add	x0, x0, l_.str.72@PAGEOFF
	bl	_mpc_noneof
	ldr	x1, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #144]                  ; 8-byte Folded Reload
	bl	_mpc_apply_to
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	ldr	x10, [sp, #160]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-152]                ; 8-byte Folded Reload
	mov	x8, sp
	str	x11, [x8]
	str	x10, [x8, #8]
	str	x9, [x8, #16]
	str	x0, [x8, #24]
	mov	w0, #4
	bl	_mpc_or
	mov	x1, x0
	ldur	x0, [x29, #-144]                ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-120]                ; 8-byte Folded Spill
	bl	_mpc_escape
	stur	x0, [x29, #-136]                ; 8-byte Folded Spill
	adrp	x0, l_.str.67@PAGE
	add	x0, x0, l_.str.67@PAGEOFF
	bl	_mpc_noneof
	ldur	x10, [x29, #-136]               ; 8-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-124]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_mpc_or
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	adrp	x1, _mpcf_re_range@PAGE
	add	x1, x1, _mpcf_re_range@PAGEOFF
	bl	_mpc_apply
	mov	x1, x0
	ldur	x0, [x29, #-120]                ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x0, [x29, #-64]
	bl	_mpc_predictive
	ldur	x1, [x29, #-112]                ; 8-byte Folded Reload
	bl	_mpc_whole
	stur	x0, [x29, #-104]
	ldur	x0, [x29, #-104]
	bl	_mpc_optimise
	ldur	x0, [x29, #-64]
	bl	_mpc_optimise
	ldur	x0, [x29, #-72]
	bl	_mpc_optimise
	ldur	x0, [x29, #-80]
	bl	_mpc_optimise
	ldur	x0, [x29, #-88]
	bl	_mpc_optimise
	ldur	x0, [x29, #-96]
	bl	_mpc_optimise
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-104]
	adrp	x0, l_.str.73@PAGE
	add	x0, x0, l_.str.73@PAGEOFF
	sub	x3, x29, #56
	bl	_mpc_parse
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB131_2
	b	LBB131_1
LBB131_1:
	ldur	x0, [x29, #-56]
	bl	_mpc_err_string
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.74@PAGE
	add	x0, x0, l_.str.74@PAGEOFF
	bl	_mpc_failf
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-56]
	bl	_mpc_err_delete
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-56]
	b	LBB131_2
LBB131_2:
	ldur	x14, [x29, #-104]
	ldur	x13, [x29, #-64]
	ldur	x12, [x29, #-72]
	ldur	x11, [x29, #-80]
	ldur	x10, [x29, #-88]
	ldur	x8, [x29, #-96]
	mov	x9, sp
	str	x14, [x9]
	str	x13, [x9, #8]
	str	x12, [x9, #16]
	str	x11, [x9, #24]
	str	x10, [x9, #32]
	str	x8, [x9, #40]
	mov	w0, #6
	bl	_mpc_cleanup
	ldur	x0, [x29, #-56]
	bl	_mpc_optimise
	ldur	x0, [x29, #-56]
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_re_or
_mpcf_re_or:                            ; @mpcf_re_or
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB132_2
	b	LBB132_1
LBB132_1:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB132_3
LBB132_2:
	ldr	x8, [sp, #24]
	ldr	x10, [x8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	mov	w0, #2
	bl	_mpc_or
	stur	x0, [x29, #-8]
	b	LBB132_3
LBB132_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_re_and
_mpcf_re_and:                           ; @mpcf_re_and
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	str	x0, [sp, #32]
	stur	wzr, [x29, #-20]
	b	LBB133_1
LBB133_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB133_4
	b	LBB133_2
LBB133_2:                               ;   in Loop: Header=BB133_1 Depth=1
	ldr	x10, [sp, #32]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_strfold@PAGE
	add	x1, x1, _mpcf_strfold@PAGEOFF
	bl	_mpc_and
	str	x0, [sp, #32]
	b	LBB133_3
LBB133_3:                               ;   in Loop: Header=BB133_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB133_1
LBB133_4:
	ldr	x0, [sp, #32]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_re_repeat
_mpcf_re_repeat:                        ; @mpcf_re_repeat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB134_2
	b	LBB134_1
LBB134_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB134_10
LBB134_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldrsb	w8, [x8]
	str	w8, [sp]                        ; 4-byte Folded Spill
	subs	w8, w8, #42
	cset	w8, eq
	tbnz	w8, #0, LBB134_5
	b	LBB134_3
LBB134_3:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	subs	w8, w8, #43
	cset	w8, eq
	tbnz	w8, #0, LBB134_6
	b	LBB134_4
LBB134_4:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	subs	w8, w8, #63
	cset	w8, eq
	tbnz	w8, #0, LBB134_7
	b	LBB134_8
LBB134_5:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	stur	x0, [x29, #-8]
	b	LBB134_10
LBB134_6:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many1
	stur	x0, [x29, #-8]
	b	LBB134_10
LBB134_7:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	adrp	x1, _mpcf_ctor_str@PAGE
	add	x1, x1, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_maybe_lift
	stur	x0, [x29, #-8]
	b	LBB134_10
LBB134_8:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	b	LBB134_9
LBB134_9:
	ldr	w0, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x2, [x8]
	adrp	x1, _mpcf_strfold@PAGE
	add	x1, x1, _mpcf_strfold@PAGEOFF
	adrp	x3, _free@GOTPAGE
	ldr	x3, [x3, _free@GOTPAGEOFF]
	bl	_mpc_count
	stur	x0, [x29, #-8]
	b	LBB134_10
LBB134_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_re_escape
_mpcf_re_escape:                        ; @mpcf_re_escape
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	stur	x8, [x29, #-56]                 ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldrsb	w8, [x8]
	subs	w8, w8, #46
	cset	w8, ne
	tbnz	w8, #0, LBB135_4
	b	LBB135_1
LBB135_1:
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	w8, [x29, #-28]
	ands	w8, w8, #0x2
	cset	w8, eq
	tbnz	w8, #0, LBB135_3
	b	LBB135_2
LBB135_2:
	bl	_mpc_any
	stur	x0, [x29, #-8]
	b	LBB135_18
LBB135_3:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_mpc_noneof
	adrp	x1, l_.str.110@PAGE
	add	x1, x1, l_.str.110@PAGEOFF
	bl	_mpc_expect
	stur	x0, [x29, #-8]
	b	LBB135_18
LBB135_4:
	ldur	x8, [x29, #-40]
	ldrsb	w8, [x8]
	subs	w8, w8, #94
	cset	w8, ne
	tbnz	w8, #0, LBB135_8
	b	LBB135_5
LBB135_5:
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	w8, [x29, #-28]
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB135_7
	b	LBB135_6
LBB135_6:
	bl	_mpc_soi
	stur	x0, [x29, #-80]                 ; 8-byte Folded Spill
	bl	_mpc_boundary_newline
	ldur	x9, [x29, #-80]                 ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	mov	w0, #2
	stur	w0, [x29, #-60]                 ; 4-byte Folded Spill
	bl	_mpc_or
	stur	x0, [x29, #-72]                 ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldur	x11, [x29, #-72]                ; 8-byte Folded Reload
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x10, x0
	ldur	w0, [x29, #-60]                 ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	stur	x0, [x29, #-8]
	b	LBB135_18
LBB135_7:
	bl	_mpc_soi
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldr	x10, [sp, #88]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	stur	x0, [x29, #-8]
	b	LBB135_18
LBB135_8:
	ldur	x8, [x29, #-40]
	ldrsb	w8, [x8]
	subs	w8, w8, #36
	cset	w8, ne
	tbnz	w8, #0, LBB135_12
	b	LBB135_9
LBB135_9:
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	w8, [x29, #-28]
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB135_11
	b	LBB135_10
LBB135_10:
	bl	_mpc_newline
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	bl	_mpc_eoi
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldr	x10, [sp, #64]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	str	w0, [sp, #84]                   ; 4-byte Folded Spill
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #84]                   ; 4-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_mpc_or
	stur	x0, [x29, #-8]
	b	LBB135_18
LBB135_11:
	bl	_mpc_newline
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	_mpc_eoi
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	str	w0, [sp, #60]                   ; 4-byte Folded Spill
	adrp	x1, _mpcf_fst@PAGE
	add	x1, x1, _mpcf_fst@PAGEOFF
	bl	_mpc_and
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	_mpc_eoi
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldr	x11, [sp, #40]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x10, x0
	ldr	w0, [sp, #60]                   ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	ldr	x10, [sp, #48]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #60]                   ; 4-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_mpc_or
	stur	x0, [x29, #-8]
	b	LBB135_18
LBB135_12:
	ldur	x8, [x29, #-40]
	ldrsb	w8, [x8]
	subs	w8, w8, #92
	cset	w8, ne
	tbnz	w8, #0, LBB135_17
	b	LBB135_13
LBB135_13:
	ldur	x8, [x29, #-40]
	ldrsb	w0, [x8, #1]
	bl	_mpc_re_escape_char
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB135_15
	b	LBB135_14
LBB135_14:
	ldur	x8, [x29, #-40]
	ldrsb	w0, [x8, #1]
	bl	_mpc_char
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB135_16
LBB135_15:
	ldur	x8, [x29, #-48]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB135_16
LBB135_16:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB135_18
LBB135_17:
	ldur	x8, [x29, #-40]
	ldrsb	w0, [x8]
	bl	_mpc_char
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB135_18
LBB135_18:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_re_range
_mpcf_re_range:                         ; @mpcf_re_range
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-64]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-72]
	ldrsb	w8, [x8]
	subs	w8, w8, #94
	cset	w8, eq
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinc	w8, w8, wzr, eq
	stur	w8, [x29, #-76]
	mov	x1, #1
	mov	x0, x1
	bl	_calloc
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-72]
	ldrsb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB136_2
	b	LBB136_1
LBB136_1:
	ldur	x0, [x29, #-88]
	bl	_free
	ldur	x0, [x29, #-16]
	bl	_free
	adrp	x0, l_.str.111@PAGE
	add	x0, x0, l_.str.111@PAGEOFF
	bl	_mpc_fail
	stur	x0, [x29, #-8]
	b	LBB136_30
LBB136_2:
	ldur	x8, [x29, #-72]
	ldrsb	w8, [x8]
	subs	w8, w8, #94
	cset	w8, ne
	tbnz	w8, #0, LBB136_5
	b	LBB136_3
LBB136_3:
	ldur	x8, [x29, #-72]
	ldrsb	w8, [x8, #1]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB136_5
	b	LBB136_4
LBB136_4:
	ldur	x0, [x29, #-88]
	bl	_free
	ldur	x0, [x29, #-16]
	bl	_free
	adrp	x0, l_.str.111@PAGE
	add	x0, x0, l_.str.111@PAGEOFF
	bl	_mpc_fail
	stur	x0, [x29, #-8]
	b	LBB136_30
LBB136_5:
	ldursw	x8, [x29, #-76]
	stur	x8, [x29, #-32]
	b	LBB136_6
LBB136_6:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB136_17 Depth 2
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-96]                 ; 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	bl	_strlen
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, hs
	tbnz	w8, #0, LBB136_26
	b	LBB136_7
LBB136_7:                               ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #92
	cset	w8, ne
	tbnz	w8, #0, LBB136_12
	b	LBB136_8
LBB136_8:                               ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	add	x9, x9, #1
	ldrsb	w0, [x8, x9]
	bl	_mpc_re_range_escape_char
	stur	x0, [x29, #-64]
	ldur	x8, [x29, #-64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB136_10
	b	LBB136_9
LBB136_9:                               ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-104]                ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	ldur	x0, [x29, #-64]
	bl	_strlen
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	add	x8, x8, x9
	add	x1, x8, #1
	bl	_realloc
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-88]
	ldur	x1, [x29, #-64]
	mov	x2, #-1
	bl	___strcat_chk
	b	LBB136_11
LBB136_10:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-88]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x1, x8, #1
	bl	_realloc
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x9, x0, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	add	x9, x9, #1
	add	x8, x8, x9
	ldrb	w8, [x8]
	str	w8, [sp, #108]                  ; 4-byte Folded Spill
	ldur	x8, [x29, #-88]
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	add	x10, x0, #0
	add	x9, x9, x10
	strb	w8, [x9]
	b	LBB136_11
LBB136_11:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	LBB136_24
LBB136_12:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #45
	cset	w8, ne
	tbnz	w8, #0, LBB136_22
	b	LBB136_13
LBB136_13:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	add	x9, x9, #1
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB136_15
	b	LBB136_14
LBB136_14:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB136_16
	b	LBB136_15
LBB136_15:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-88]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x1, x8, #1
	bl	_realloc
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-88]
	adrp	x1, l_.str.112@PAGE
	add	x1, x1, l_.str.112@PAGEOFF
	mov	x2, #-1
	bl	___strcat_chk
	b	LBB136_21
LBB136_16:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	subs	x9, x9, #1
	ldrsb	w8, [x8, x9]
	add	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	add	x9, x9, #1
	ldrsb	w8, [x8, x9]
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-40]
	b	LBB136_17
LBB136_17:                              ;   Parent Loop BB136_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	cset	w8, hi
	tbnz	w8, #0, LBB136_20
	b	LBB136_18
LBB136_18:                              ;   in Loop: Header=BB136_17 Depth=2
	ldur	x8, [x29, #-88]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x8, x8, #1
	add	x1, x8, #1
	bl	_realloc
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x9, x0, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-88]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	add	x10, x0, #0
                                        ; kill: def $w8 killed $w8 killed $x8
	strb	w8, [x9, x10]
	b	LBB136_19
LBB136_19:                              ;   in Loop: Header=BB136_17 Depth=2
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	LBB136_17
LBB136_20:                              ;   in Loop: Header=BB136_6 Depth=1
	b	LBB136_21
LBB136_21:                              ;   in Loop: Header=BB136_6 Depth=1
	b	LBB136_23
LBB136_22:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-88]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x1, x8, #1
	bl	_realloc
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x9, x0, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	ldrb	w8, [x8]
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-88]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-88]
	bl	_strlen
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	add	x10, x0, #0
	add	x9, x9, x10
	strb	w8, [x9]
	b	LBB136_23
LBB136_23:                              ;   in Loop: Header=BB136_6 Depth=1
	b	LBB136_24
LBB136_24:                              ;   in Loop: Header=BB136_6 Depth=1
	b	LBB136_25
LBB136_25:                              ;   in Loop: Header=BB136_6 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	LBB136_6
LBB136_26:
	ldur	w8, [x29, #-76]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB136_28
	b	LBB136_27
LBB136_27:
	ldur	x0, [x29, #-88]
	bl	_mpc_noneof
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB136_29
LBB136_28:
	ldur	x0, [x29, #-88]
	bl	_mpc_oneof
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB136_29
LBB136_29:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	_free
	ldur	x0, [x29, #-88]
	bl	_free
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB136_30
LBB136_30:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_optimise                   ; -- Begin function mpc_optimise
	.p2align	2
_mpc_optimise:                          ; @mpc_optimise
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	_mpc_optimise_unretained
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_strtriml                  ; -- Begin function mpcf_strtriml
	.p2align	2
_mpcf_strtriml:                         ; @mpcf_strtriml
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	b	LBB138_1
LBB138_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrb	w0, [x8]
	bl	_isspace
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB138_3
	b	LBB138_2
LBB138_2:                               ;   in Loop: Header=BB138_1 Depth=1
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	_strlen
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, #-1
	bl	___memmove_chk
	b	LBB138_1
LBB138_3:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_strtrimr                  ; -- Begin function mpcf_strtrimr
	.p2align	2
_mpcf_strtrimr:                         ; @mpcf_strtrimr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_strlen
	str	x0, [sp, #8]
	b	LBB139_1
LBB139_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ls
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB139_3
	b	LBB139_2
LBB139_2:                               ;   in Loop: Header=BB139_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x9, x9, #1
	ldrb	w0, [x8, x9]
	bl	_isspace
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB139_3
LBB139_3:                               ;   in Loop: Header=BB139_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB139_5
	b	LBB139_4
LBB139_4:                               ;   in Loop: Header=BB139_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x9, x9, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB139_1
LBB139_5:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_strtrim                   ; -- Begin function mpcf_strtrim
	.p2align	2
_mpcf_strtrim:                          ; @mpcf_strtrim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_mpcf_strtrimr
	bl	_mpcf_strtriml
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_escape                    ; -- Begin function mpcf_escape
	.p2align	2
_mpcf_escape:                           ; @mpcf_escape
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	bl	_mpcf_escape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_escape_new
_mpcf_escape_new:                       ; @mpcf_escape_new
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	mov	x1, #1
	mov	x0, x1
	bl	_calloc
	str	x0, [sp, #24]
	b	LBB142_1
LBB142_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB142_3 Depth 2
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB142_10
	b	LBB142_2
LBB142_2:                               ;   in Loop: Header=BB142_1 Depth=1
	stur	wzr, [x29, #-28]
	stur	wzr, [x29, #-32]
	b	LBB142_3
LBB142_3:                               ;   Parent Loop BB142_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB142_7
	b	LBB142_4
LBB142_4:                               ;   in Loop: Header=BB142_3 Depth=2
	ldr	x8, [sp, #32]
	ldrsb	w8, [x8]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-28]
	ldrsb	w9, [x9, x10]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB142_6
	b	LBB142_5
LBB142_5:                               ;   in Loop: Header=BB142_1 Depth=1
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_strlen
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	ldr	x0, [x8, x9, lsl #3]
	bl	_strlen
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, x9
	add	x1, x8, #1
	bl	_realloc
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	ldr	x1, [x8, x9, lsl #3]
	mov	x2, #-1
	bl	___strcat_chk
	mov	w8, #1
	stur	w8, [x29, #-32]
	b	LBB142_7
LBB142_6:                               ;   in Loop: Header=BB142_3 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB142_3
LBB142_7:                               ;   in Loop: Header=BB142_1 Depth=1
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB142_9
	b	LBB142_8
LBB142_8:                               ;   in Loop: Header=BB142_1 Depth=1
	ldr	x8, [sp, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #2
	bl	_realloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	sub	x1, x29, #34
	sturb	w8, [x29, #-34]
	sturb	wzr, [x29, #-33]
	ldr	x0, [sp, #24]
	mov	x2, #-1
	bl	___strcat_chk
	b	LBB142_9
LBB142_9:                               ;   in Loop: Header=BB142_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB142_1
LBB142_10:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_unescape                  ; -- Begin function mpcf_unescape
	.p2align	2
_mpcf_unescape:                         ; @mpcf_unescape
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	bl	_mpcf_unescape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_unescape_new
_mpcf_unescape_new:                     ; @mpcf_unescape_new
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	wzr, [x29, #-32]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	mov	x1, #1
	mov	x0, x1
	bl	_calloc
	str	x0, [sp, #24]
	b	LBB144_1
LBB144_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB144_3 Depth 2
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB144_14
	b	LBB144_2
LBB144_2:                               ;   in Loop: Header=BB144_1 Depth=1
	stur	wzr, [x29, #-28]
	stur	wzr, [x29, #-32]
	b	LBB144_3
LBB144_3:                               ;   Parent Loop BB144_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB144_8
	b	LBB144_4
LBB144_4:                               ;   in Loop: Header=BB144_3 Depth=2
	ldr	x8, [sp, #32]
	ldrsb	w8, [x8]
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-28]
	ldr	x9, [x9, x10, lsl #3]
	ldrsb	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB144_7
	b	LBB144_5
LBB144_5:                               ;   in Loop: Header=BB144_3 Depth=2
	ldr	x8, [sp, #32]
	ldrsb	w8, [x8, #1]
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-28]
	ldr	x9, [x9, x10, lsl #3]
	ldrsb	w9, [x9, #1]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB144_7
	b	LBB144_6
LBB144_6:                               ;   in Loop: Header=BB144_1 Depth=1
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x1, x8, #1
	bl	_realloc
	str	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-28]
	add	x8, x8, x9
	ldrb	w8, [x8]
	sub	x1, x29, #34
	sturb	w8, [x29, #-34]
	sturb	wzr, [x29, #-33]
	ldr	x0, [sp, #24]
	mov	x2, #-1
	bl	___strcat_chk
	mov	w8, #1
	stur	w8, [x29, #-32]
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB144_8
LBB144_7:                               ;   in Loop: Header=BB144_3 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB144_3
LBB144_8:                               ;   in Loop: Header=BB144_1 Depth=1
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB144_10
	b	LBB144_9
LBB144_9:                               ;   in Loop: Header=BB144_1 Depth=1
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #1
	add	x1, x8, #1
	bl	_realloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	sub	x1, x29, #34
	sturb	w8, [x29, #-34]
	sturb	wzr, [x29, #-33]
	ldr	x0, [sp, #24]
	mov	x2, #-1
	bl	___strcat_chk
	b	LBB144_10
LBB144_10:                              ;   in Loop: Header=BB144_1 Depth=1
	ldr	x8, [sp, #32]
	ldrsb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB144_12
	b	LBB144_11
LBB144_11:
	b	LBB144_14
LBB144_12:                              ;   in Loop: Header=BB144_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB144_13
LBB144_13:                              ;   in Loop: Header=BB144_1 Depth=1
	b	LBB144_1
LBB144_14:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_escape_regex              ; -- Begin function mpcf_escape_regex
	.p2align	2
_mpcf_escape_regex:                     ; @mpcf_escape_regex
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_raw_re@PAGE
	add	x1, x1, _mpc_escape_input_raw_re@PAGEOFF
	adrp	x2, _mpc_escape_output_raw_re@PAGE
	add	x2, x2, _mpc_escape_output_raw_re@PAGEOFF
	bl	_mpcf_escape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_unescape_regex            ; -- Begin function mpcf_unescape_regex
	.p2align	2
_mpcf_unescape_regex:                   ; @mpcf_unescape_regex
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_raw_re@PAGE
	add	x1, x1, _mpc_escape_input_raw_re@PAGEOFF
	adrp	x2, _mpc_escape_output_raw_re@PAGE
	add	x2, x2, _mpc_escape_output_raw_re@PAGEOFF
	bl	_mpcf_unescape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_escape_string_raw         ; -- Begin function mpcf_escape_string_raw
	.p2align	2
_mpcf_escape_string_raw:                ; @mpcf_escape_string_raw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_raw_cstr@PAGE
	add	x1, x1, _mpc_escape_input_raw_cstr@PAGEOFF
	adrp	x2, _mpc_escape_output_raw_cstr@PAGE
	add	x2, x2, _mpc_escape_output_raw_cstr@PAGEOFF
	bl	_mpcf_escape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_unescape_string_raw       ; -- Begin function mpcf_unescape_string_raw
	.p2align	2
_mpcf_unescape_string_raw:              ; @mpcf_unescape_string_raw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_raw_cstr@PAGE
	add	x1, x1, _mpc_escape_input_raw_cstr@PAGEOFF
	adrp	x2, _mpc_escape_output_raw_cstr@PAGE
	add	x2, x2, _mpc_escape_output_raw_cstr@PAGEOFF
	bl	_mpcf_unescape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_escape_char_raw           ; -- Begin function mpcf_escape_char_raw
	.p2align	2
_mpcf_escape_char_raw:                  ; @mpcf_escape_char_raw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_raw_cchar@PAGE
	add	x1, x1, _mpc_escape_input_raw_cchar@PAGEOFF
	adrp	x2, _mpc_escape_output_raw_cchar@PAGE
	add	x2, x2, _mpc_escape_output_raw_cchar@PAGEOFF
	bl	_mpcf_escape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_unescape_char_raw         ; -- Begin function mpcf_unescape_char_raw
	.p2align	2
_mpcf_unescape_char_raw:                ; @mpcf_unescape_char_raw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_escape_input_raw_cchar@PAGE
	add	x1, x1, _mpc_escape_input_raw_cchar@PAGEOFF
	adrp	x2, _mpc_escape_output_raw_cchar@PAGE
	add	x2, x2, _mpc_escape_output_raw_cchar@PAGEOFF
	bl	_mpcf_unescape_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_null                      ; -- Begin function mpcf_null
	.p2align	2
_mpcf_null:                             ; @mpcf_null
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	x1, [sp]
	mov	x0, #0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_trd                       ; -- Begin function mpcf_trd
	.p2align	2
_mpcf_trd:                              ; @mpcf_trd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x0, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_fst_free                  ; -- Begin function mpcf_fst_free
	.p2align	2
_mpcf_fst_free:                         ; @mpcf_fst_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x1, [sp]
	mov	w2, #0
	bl	_mpcf_nth_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_nth_free
_mpcf_nth_free:                         ; @mpcf_nth_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	wzr, [sp, #8]
	b	LBB154_1
LBB154_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB154_6
	b	LBB154_2
LBB154_2:                               ;   in Loop: Header=BB154_1 Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB154_4
	b	LBB154_3
LBB154_3:                               ;   in Loop: Header=BB154_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	b	LBB154_4
LBB154_4:                               ;   in Loop: Header=BB154_1 Depth=1
	b	LBB154_5
LBB154_5:                               ;   in Loop: Header=BB154_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB154_1
LBB154_6:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_trd_free                  ; -- Begin function mpcf_trd_free
	.p2align	2
_mpcf_trd_free:                         ; @mpcf_trd_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x1, [sp]
	mov	w2, #2
	bl	_mpcf_nth_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_all_free                  ; -- Begin function mpcf_all_free
	.p2align	2
_mpcf_all_free:                         ; @mpcf_all_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB156_1
LBB156_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB156_4
	b	LBB156_2
LBB156_2:                               ;   in Loop: Header=BB156_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	b	LBB156_3
LBB156_3:                               ;   in Loop: Header=BB156_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB156_1
LBB156_4:
	mov	x0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_print                      ; -- Begin function mpc_print
	.p2align	2
_mpc_print:                             ; @mpc_print
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	_mpc_print_unretained
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_print_unretained
_mpc_print_unretained:                  ; @mpc_print_unretained
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB158_6
	b	LBB158_1
LBB158_1:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB158_6
	b	LBB158_2
LBB158_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB158_4
	b	LBB158_3
LBB158_3:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.131@PAGE
	add	x0, x0, l_.str.131@PAGEOFF
	bl	_printf
	b	LBB158_5
LBB158_4:
	adrp	x0, l_.str.132@PAGE
	add	x0, x0, l_.str.132@PAGEOFF
	bl	_printf
	b	LBB158_5
LBB158_5:
	b	LBB158_68
LBB158_6:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB158_8
	b	LBB158_7
LBB158_7:
	adrp	x0, l_.str.133@PAGE
	add	x0, x0, l_.str.133@PAGEOFF
	bl	_printf
	b	LBB158_8
LBB158_8:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB158_10
	b	LBB158_9
LBB158_9:
	adrp	x0, l_.str.134@PAGE
	add	x0, x0, l_.str.134@PAGEOFF
	bl	_printf
	b	LBB158_10
LBB158_10:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB158_12
	b	LBB158_11
LBB158_11:
	adrp	x0, l_.str.135@PAGE
	add	x0, x0, l_.str.135@PAGEOFF
	bl	_printf
	b	LBB158_12
LBB158_12:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #3
	cset	w8, ne
	tbnz	w8, #0, LBB158_14
	b	LBB158_13
LBB158_13:
	adrp	x0, l_.str.136@PAGE
	add	x0, x0, l_.str.136@PAGEOFF
	bl	_printf
	b	LBB158_14
LBB158_14:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #7
	cset	w8, ne
	tbnz	w8, #0, LBB158_16
	b	LBB158_15
LBB158_15:
	adrp	x0, l_.str.137@PAGE
	add	x0, x0, l_.str.137@PAGEOFF
	bl	_printf
	b	LBB158_16
LBB158_16:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #6
	cset	w8, ne
	tbnz	w8, #0, LBB158_18
	b	LBB158_17
LBB158_17:
	adrp	x0, l_.str.138@PAGE
	add	x0, x0, l_.str.138@PAGEOFF
	bl	_printf
	b	LBB158_18
LBB158_18:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #5
	cset	w8, ne
	tbnz	w8, #0, LBB158_20
	b	LBB158_19
LBB158_19:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB158_20
LBB158_20:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #8
	cset	w8, ne
	tbnz	w8, #0, LBB158_22
	b	LBB158_21
LBB158_21:
	adrp	x0, l_.str.139@PAGE
	add	x0, x0, l_.str.139@PAGEOFF
	bl	_printf
	b	LBB158_22
LBB158_22:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #13
	cset	w8, ne
	tbnz	w8, #0, LBB158_24
	b	LBB158_23
LBB158_23:
	adrp	x0, l_.str.140@PAGE
	add	x0, x0, l_.str.140@PAGEOFF
	bl	_printf
	b	LBB158_24
LBB158_24:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #9
	cset	w8, ne
	tbnz	w8, #0, LBB158_26
	b	LBB158_25
LBB158_25:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #8]
	sub	x0, x29, #34
	sturb	w8, [x29, #-34]
	sturb	wzr, [x29, #-33]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	bl	_mpcf_escape_new
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.141@PAGE
	add	x0, x0, l_.str.141@PAGEOFF
	bl	_printf
	ldur	x0, [x29, #-24]
	bl	_free
	b	LBB158_26
LBB158_26:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #12
	cset	w8, ne
	tbnz	w8, #0, LBB158_28
	b	LBB158_27
LBB158_27:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #8]
	sub	x0, x29, #34
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	sturb	w8, [x29, #-34]
	sturb	wzr, [x29, #-33]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	str	x2, [sp, #40]                   ; 8-byte Folded Spill
	bl	_mpcf_escape_new
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #40]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8, #9]
	sturb	w8, [x29, #-34]
	sturb	wzr, [x29, #-33]
	bl	_mpcf_escape_new
	stur	x0, [x29, #-32]
	ldur	x10, [x29, #-24]
	ldur	x8, [x29, #-32]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.142@PAGE
	add	x0, x0, l_.str.142@PAGEOFF
	bl	_printf
	ldur	x0, [x29, #-24]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB158_28
LBB158_28:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #10
	cset	w8, ne
	tbnz	w8, #0, LBB158_30
	b	LBB158_29
LBB158_29:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	bl	_mpcf_escape_new
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.143@PAGE
	add	x0, x0, l_.str.143@PAGEOFF
	bl	_printf
	ldur	x0, [x29, #-24]
	bl	_free
	b	LBB158_30
LBB158_30:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #11
	cset	w8, ne
	tbnz	w8, #0, LBB158_32
	b	LBB158_31
LBB158_31:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	bl	_mpcf_escape_new
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.144@PAGE
	add	x0, x0, l_.str.144@PAGEOFF
	bl	_printf
	ldur	x0, [x29, #-24]
	bl	_free
	b	LBB158_32
LBB158_32:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #14
	cset	w8, ne
	tbnz	w8, #0, LBB158_34
	b	LBB158_33
LBB158_33:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	adrp	x1, _mpc_escape_input_c@PAGE
	add	x1, x1, _mpc_escape_input_c@PAGEOFF
	adrp	x2, _mpc_escape_output_c@PAGE
	add	x2, x2, _mpc_escape_output_c@PAGEOFF
	bl	_mpcf_escape_new
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.19@PAGE
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_printf
	ldur	x0, [x29, #-24]
	bl	_free
	b	LBB158_34
LBB158_34:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #15
	cset	w8, ne
	tbnz	w8, #0, LBB158_36
	b	LBB158_35
LBB158_35:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	b	LBB158_36
LBB158_36:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #16
	cset	w8, ne
	tbnz	w8, #0, LBB158_38
	b	LBB158_37
LBB158_37:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	b	LBB158_38
LBB158_38:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #17
	cset	w8, ne
	tbnz	w8, #0, LBB158_40
	b	LBB158_39
LBB158_39:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	b	LBB158_40
LBB158_40:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #18
	cset	w8, ne
	tbnz	w8, #0, LBB158_42
	b	LBB158_41
LBB158_41:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.85@PAGE
	add	x0, x0, l_.str.85@PAGEOFF
	bl	_printf
	b	LBB158_42
LBB158_42:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #19
	cset	w8, ne
	tbnz	w8, #0, LBB158_44
	b	LBB158_43
LBB158_43:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.84@PAGE
	add	x0, x0, l_.str.84@PAGEOFF
	bl	_printf
	b	LBB158_44
LBB158_44:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #20
	cset	w8, ne
	tbnz	w8, #0, LBB158_46
	b	LBB158_45
LBB158_45:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.82@PAGE
	add	x0, x0, l_.str.82@PAGEOFF
	bl	_printf
	b	LBB158_46
LBB158_46:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #21
	cset	w8, ne
	tbnz	w8, #0, LBB158_48
	b	LBB158_47
LBB158_47:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.83@PAGE
	add	x0, x0, l_.str.83@PAGEOFF
	bl	_printf
	b	LBB158_48
LBB158_48:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #22
	cset	w8, ne
	tbnz	w8, #0, LBB158_50
	b	LBB158_49
LBB158_49:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_print_unretained
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.145@PAGE
	add	x0, x0, l_.str.145@PAGEOFF
	bl	_printf
	b	LBB158_50
LBB158_50:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #29
	cset	w8, ne
	tbnz	w8, #0, LBB158_52
	b	LBB158_51
LBB158_51:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	str	w1, [sp, #28]                   ; 4-byte Folded Spill
	bl	_mpc_print_unretained
	adrp	x0, l_.str.146@PAGE
	add	x0, x0, l_.str.146@PAGEOFF
	bl	_printf
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	_mpc_print_unretained
	adrp	x0, l_.str.147@PAGE
	add	x0, x0, l_.str.147@PAGEOFF
	bl	_printf
	ldr	w1, [sp, #28]                   ; 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	bl	_mpc_print_unretained
	adrp	x0, l_.str.61@PAGE
	add	x0, x0, l_.str.61@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.82@PAGE
	add	x0, x0, l_.str.82@PAGEOFF
	bl	_printf
	b	LBB158_52
LBB158_52:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB158_58
	b	LBB158_53
LBB158_53:
	adrp	x0, l_.str.60@PAGE
	add	x0, x0, l_.str.60@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-16]
	b	LBB158_54
LBB158_54:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB158_57
	b	LBB158_55
LBB158_55:                              ;   in Loop: Header=BB158_54 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-16]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.148@PAGE
	add	x0, x0, l_.str.148@PAGEOFF
	bl	_printf
	b	LBB158_56
LBB158_56:                              ;   in Loop: Header=BB158_54 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB158_54
LBB158_57:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.61@PAGE
	add	x0, x0, l_.str.61@PAGEOFF
	bl	_printf
	b	LBB158_58
LBB158_58:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB158_64
	b	LBB158_59
LBB158_59:
	adrp	x0, l_.str.60@PAGE
	add	x0, x0, l_.str.60@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-16]
	b	LBB158_60
LBB158_60:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB158_63
	b	LBB158_61
LBB158_61:                              ;   in Loop: Header=BB158_60 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-16]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.147@PAGE
	add	x0, x0, l_.str.147@PAGEOFF
	bl	_printf
	b	LBB158_62
LBB158_62:                              ;   in Loop: Header=BB158_60 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB158_60
LBB158_63:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.61@PAGE
	add	x0, x0, l_.str.61@PAGEOFF
	bl	_printf
	b	LBB158_64
LBB158_64:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #25
	cset	w8, ne
	tbnz	w8, #0, LBB158_66
	b	LBB158_65
LBB158_65:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.149@PAGE
	add	x0, x0, l_.str.149@PAGEOFF
	bl	_printf
	b	LBB158_66
LBB158_66:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #26
	cset	w8, ne
	tbnz	w8, #0, LBB158_68
	b	LBB158_67
LBB158_67:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_print_unretained
	adrp	x0, l_.str.149@PAGE
	add	x0, x0, l_.str.149@PAGEOFF
	bl	_printf
	b	LBB158_68
LBB158_68:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_test_fail                  ; -- Begin function mpc_test_fail
	.p2align	2
_mpc_test_fail:                         ; @mpc_test_fail
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	str	x5, [sp, #8]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-16]
	adrp	x0, l_.str.75@PAGE
	add	x0, x0, l_.str.75@PAGEOFF
	mov	x3, sp
	bl	_mpc_parse
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB159_4
	b	LBB159_1
LBB159_1:
	ldr	x8, [sp, #24]
	ldr	x0, [sp]
	ldr	x1, [sp, #32]
	blr	x8
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB159_3
	b	LBB159_2
LBB159_2:
	ldr	x8, [sp, #16]
	ldr	x0, [sp]
	blr	x8
	stur	wzr, [x29, #-4]
	b	LBB159_5
LBB159_3:
	ldr	x8, [sp, #16]
	ldr	x0, [sp]
	blr	x8
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB159_5
LBB159_4:
	ldr	x0, [sp]
	bl	_mpc_err_delete
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB159_5
LBB159_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_test_pass                  ; -- Begin function mpc_test_pass
	.p2align	2
_mpc_test_pass:                         ; @mpc_test_pass
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	str	x4, [sp, #32]
	str	x5, [sp, #24]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-16]
	adrp	x0, l_.str.75@PAGE
	add	x0, x0, l_.str.75@PAGEOFF
	add	x3, sp, #16
	bl	_mpc_parse
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB160_4
	b	LBB160_1
LBB160_1:
	ldr	x8, [sp, #40]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-32]
	blr	x8
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB160_3
	b	LBB160_2
LBB160_2:
	ldr	x8, [sp, #32]
	ldr	x0, [sp, #16]
	blr	x8
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB160_5
LBB160_3:
	adrp	x0, l_.str.76@PAGE
	add	x0, x0, l_.str.76@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #24]
	ldr	x0, [sp, #16]
	blr	x8
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_printf
	adrp	x0, l_.str.77@PAGE
	add	x0, x0, l_.str.77@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #24]
	ldur	x0, [x29, #-32]
	blr	x8
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	_printf
	ldr	x8, [sp, #32]
	ldr	x0, [sp, #16]
	blr	x8
	stur	wzr, [x29, #-4]
	b	LBB160_5
LBB160_4:
	ldr	x0, [sp, #16]
	bl	_mpc_err_print
	ldr	x0, [sp, #16]
	bl	_mpc_err_delete
	stur	wzr, [x29, #-4]
	b	LBB160_5
LBB160_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_delete                 ; -- Begin function mpc_ast_delete
	.p2align	2
_mpc_ast_delete:                        ; @mpc_ast_delete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB161_2
	b	LBB161_1
LBB161_1:
	b	LBB161_7
LBB161_2:
	str	wzr, [sp, #4]
	b	LBB161_3
LBB161_3:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB161_6
	b	LBB161_4
LBB161_4:                               ;   in Loop: Header=BB161_3 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_ast_delete
	b	LBB161_5
LBB161_5:                               ;   in Loop: Header=BB161_3 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB161_3
LBB161_6:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x0, [sp, #8]
	bl	_free
	b	LBB161_7
LBB161_7:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_new                    ; -- Begin function mpc_ast_new
	.p2align	2
_mpc_ast_new:                           ; @mpc_ast_new
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #64
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldur	x0, [x29, #-16]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-16]
	bl	___strcpy_chk
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x8, sp, #24
	bl	_mpc_state_new
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	q0, [sp, #24]
	str	q0, [x8, #16]
	ldur	q0, [sp, #40]
	str	q0, [x8, #32]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #48]
	ldur	x8, [x29, #-24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_state_new
_mpc_state_new:                         ; @mpc_state_new
	.cfi_startproc
; %bb.0:
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	str	wzr, [x8, #24]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_build                  ; -- Begin function mpc_ast_build
	.p2align	2
_mpc_ast_build:                         ; @mpc_ast_build
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-16]
	adrp	x1, l_.str.78@PAGE
	add	x1, x1, l_.str.78@PAGEOFF
	bl	_mpc_ast_new
	str	x0, [sp, #24]
	add	x9, sp, #8
	add	x8, x29, #16
	str	x8, [x9]
	str	wzr, [sp, #20]
	b	LBB164_1
LBB164_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB164_4
	b	LBB164_2
LBB164_2:                               ;   in Loop: Header=BB164_1 Depth=1
	ldr	x0, [sp, #24]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [sp, #8]
	str	x8, [sp]
	ldr	x1, [sp]
	bl	_mpc_ast_add_child
	b	LBB164_3
LBB164_3:                               ;   in Loop: Header=BB164_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB164_1
LBB164_4:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_add_child              ; -- Begin function mpc_ast_add_child
	.p2align	2
_mpc_ast_add_child:                     ; @mpc_ast_add_child
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #48]
	add	w8, w8, #1
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	ldr	x8, [sp, #8]
	ldrsw	x9, [x8, #48]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #56]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #56]
	ldr	x10, [sp, #8]
	ldr	w10, [x10, #48]
	subs	w10, w10, #1
	str	x8, [x9, w10, sxtw #3]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_add_root               ; -- Begin function mpc_ast_add_root
	.p2align	2
_mpc_ast_add_root:                      ; @mpc_ast_add_root
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
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB166_2
	b	LBB166_1
LBB166_1:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB166_7
LBB166_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB166_4
	b	LBB166_3
LBB166_3:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB166_7
LBB166_4:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #48]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB166_6
	b	LBB166_5
LBB166_5:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB166_7
LBB166_6:
	adrp	x0, l_.str.63@PAGE
	add	x0, x0, l_.str.63@PAGEOFF
	adrp	x1, l_.str.78@PAGE
	add	x1, x1, l_.str.78@PAGEOFF
	bl	_mpc_ast_new
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	_mpc_ast_add_child
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB166_7
LBB166_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_eq                     ; -- Begin function mpc_ast_eq
	.p2align	2
_mpc_ast_eq:                            ; @mpc_ast_eq
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
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB167_2
	b	LBB167_1
LBB167_1:
	stur	wzr, [x29, #-4]
	b	LBB167_13
LBB167_2:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #8]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB167_4
	b	LBB167_3
LBB167_3:
	stur	wzr, [x29, #-4]
	b	LBB167_13
LBB167_4:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #48]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB167_6
	b	LBB167_5
LBB167_5:
	stur	wzr, [x29, #-4]
	b	LBB167_13
LBB167_6:
	str	wzr, [sp, #4]
	b	LBB167_7
LBB167_7:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB167_12
	b	LBB167_8
LBB167_8:                               ;   in Loop: Header=BB167_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #4]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_ast_eq
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB167_10
	b	LBB167_9
LBB167_9:
	stur	wzr, [x29, #-4]
	b	LBB167_13
LBB167_10:                              ;   in Loop: Header=BB167_7 Depth=1
	b	LBB167_11
LBB167_11:                              ;   in Loop: Header=BB167_7 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB167_7
LBB167_12:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB167_13
LBB167_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_add_tag                ; -- Begin function mpc_ast_add_tag
	.p2align	2
_mpc_ast_add_tag:                       ; @mpc_ast_add_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB168_2
	b	LBB168_1
LBB168_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB168_3
LBB168_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	add	x8, x0, #1
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	_strlen
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, x9
	add	x1, x8, #1
	bl	_realloc
	ldur	x8, [x29, #-16]
	str	x0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, x0
	add	x8, x8, #1
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	_strlen
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	add	x2, x8, #1
	mov	x3, #-1
	str	x3, [sp, #48]                   ; 8-byte Folded Spill
	bl	___memmove_chk
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-40]                 ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #48]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x0, [x29, #-40]                 ; 8-byte Folded Reload
	bl	___memmove_chk
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	add	x9, x8, x0
	adrp	x8, l_.str.79@PAGE
	ldrb	w8, [x8, l_.str.79@PAGEOFF]
	strb	w8, [x9]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB168_3
LBB168_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_add_root_tag           ; -- Begin function mpc_ast_add_root_tag
	.p2align	2
_mpc_ast_add_root_tag:                  ; @mpc_ast_add_root_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB169_2
	b	LBB169_1
LBB169_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB169_3
LBB169_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	subs	x8, x0, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	_strlen
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, x9
	add	x1, x8, #1
	bl	_realloc
	ldur	x8, [x29, #-16]
	str	x0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x9, x0, #1
	add	x8, x8, x9
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	_strlen
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	add	x2, x8, #1
	mov	x3, #-1
	stur	x3, [x29, #-40]                 ; 8-byte Folded Spill
	bl	___memmove_chk
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	ldur	x3, [x29, #-40]                 ; 8-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	subs	x2, x8, #1
	bl	___memmove_chk
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB169_3
LBB169_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_tag                    ; -- Begin function mpc_ast_tag
	.p2align	2
_mpc_ast_tag:                           ; @mpc_ast_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	mov	x2, #-1
	bl	___strcpy_chk
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_state                  ; -- Begin function mpc_ast_state
	.p2align	2
_mpc_ast_state:                         ; @mpc_ast_state
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB171_2
	b	LBB171_1
LBB171_1:
	ldr	x8, [sp, #16]
	str	x8, [sp, #24]
	b	LBB171_3
LBB171_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	q0, [x9]
	str	q0, [x8, #16]
	ldr	q0, [x9, #16]
	str	q0, [x8, #32]
	ldr	x8, [sp, #16]
	str	x8, [sp, #24]
	b	LBB171_3
LBB171_3:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_print                  ; -- Begin function mpc_ast_print
	.p2align	2
_mpc_ast_print:                         ; @mpc_ast_print
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	ldr	x2, [x8]
	mov	w1, #0
	bl	_mpc_ast_print_depth
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_ast_print_depth
_mpc_ast_print_depth:                   ; @mpc_ast_print_depth
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB173_2
	b	LBB173_1
LBB173_1:
	ldur	x0, [x29, #-24]
	adrp	x1, l_.str.150@PAGE
	add	x1, x1, l_.str.150@PAGEOFF
	bl	_fprintf
	b	LBB173_13
LBB173_2:
	stur	wzr, [x29, #-28]
	b	LBB173_3
LBB173_3:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB173_6
	b	LBB173_4
LBB173_4:                               ;   in Loop: Header=BB173_3 Depth=1
	ldur	x0, [x29, #-24]
	adrp	x1, l_.str.151@PAGE
	add	x1, x1, l_.str.151@PAGEOFF
	bl	_fprintf
	b	LBB173_5
LBB173_5:                               ;   in Loop: Header=BB173_3 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB173_3
LBB173_6:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	_strlen
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB173_8
	b	LBB173_7
LBB173_7:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	x12, [x8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	add	x11, x8, #1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	add	x10, x8, #1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	mov	x9, sp
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	adrp	x1, l_.str.152@PAGE
	add	x1, x1, l_.str.152@PAGEOFF
	bl	_fprintf
	b	LBB173_9
LBB173_8:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.153@PAGE
	add	x1, x1, l_.str.153@PAGEOFF
	bl	_fprintf
	b	LBB173_9
LBB173_9:
	stur	wzr, [x29, #-28]
	b	LBB173_10
LBB173_10:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB173_13
	b	LBB173_11
LBB173_11:                              ;   in Loop: Header=BB173_10 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-28]
	ldr	x0, [x8, x9, lsl #3]
	ldur	w8, [x29, #-12]
	add	w1, w8, #1
	ldur	x2, [x29, #-24]
	bl	_mpc_ast_print_depth
	b	LBB173_12
LBB173_12:                              ;   in Loop: Header=BB173_10 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB173_10
LBB173_13:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_print_to               ; -- Begin function mpc_ast_print_to
	.p2align	2
_mpc_ast_print_to:                      ; @mpc_ast_print_to
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x2, [sp]
	mov	w1, #0
	bl	_mpc_ast_print_depth
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_get_index              ; -- Begin function mpc_ast_get_index
	.p2align	2
_mpc_ast_get_index:                     ; @mpc_ast_get_index
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	mov	w2, #0
	bl	_mpc_ast_get_index_lb
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_get_index_lb           ; -- Begin function mpc_ast_get_index_lb
	.p2align	2
_mpc_ast_get_index_lb:                  ; @mpc_ast_get_index_lb
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
	str	x1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]
	b	LBB176_1
LBB176_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB176_6
	b	LBB176_2
LBB176_2:                               ;   in Loop: Header=BB176_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB176_4
	b	LBB176_3
LBB176_3:
	ldr	w8, [sp]
	stur	w8, [x29, #-4]
	b	LBB176_7
LBB176_4:                               ;   in Loop: Header=BB176_1 Depth=1
	b	LBB176_5
LBB176_5:                               ;   in Loop: Header=BB176_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB176_1
LBB176_6:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB176_7
LBB176_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_get_child              ; -- Begin function mpc_ast_get_child
	.p2align	2
_mpc_ast_get_child:                     ; @mpc_ast_get_child
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	mov	w2, #0
	bl	_mpc_ast_get_child_lb
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_get_child_lb           ; -- Begin function mpc_ast_get_child_lb
	.p2align	2
_mpc_ast_get_child_lb:                  ; @mpc_ast_get_child_lb
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
	str	x1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]
	b	LBB178_1
LBB178_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB178_6
	b	LBB178_2
LBB178_2:                               ;   in Loop: Header=BB178_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB178_4
	b	LBB178_3
LBB178_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-8]
	b	LBB178_7
LBB178_4:                               ;   in Loop: Header=BB178_1 Depth=1
	b	LBB178_5
LBB178_5:                               ;   in Loop: Header=BB178_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB178_1
LBB178_6:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB178_7
LBB178_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_traverse_start         ; -- Begin function mpc_ast_traverse_start
	.p2align	2
_mpc_ast_traverse_start:                ; @mpc_ast_traverse_start
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	mov	x0, #24
	bl	_malloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldr	x8, [sp, #24]
	str	wzr, [x8, #16]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #24]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB179_2
	b	LBB179_1
LBB179_1:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB179_3
	b	LBB179_7
LBB179_2:
	b	LBB179_8
LBB179_3:
	b	LBB179_4
LBB179_4:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB179_6
	b	LBB179_5
LBB179_5:                               ;   in Loop: Header=BB179_4 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	mov	x0, #24
	bl	_malloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	str	wzr, [x8, #16]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #16]
	str	w8, [x9, #20]
	ldr	x8, [sp, #16]
	str	x8, [sp, #24]
	b	LBB179_4
LBB179_6:
	b	LBB179_8
LBB179_7:
	b	LBB179_8
LBB179_8:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_traverse_next          ; -- Begin function mpc_ast_traverse_next
	.p2align	2
_mpc_ast_traverse_next:                 ; @mpc_ast_traverse_next
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB180_2
	b	LBB180_1
LBB180_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB180_22
LBB180_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #20]
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB180_4
	b	LBB180_3
LBB180_3:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB180_12
	b	LBB180_20
LBB180_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	b	LBB180_5
LBB180_5:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB180_7
	b	LBB180_6
LBB180_6:                               ;   in Loop: Header=BB180_5 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB180_7
LBB180_7:                               ;   in Loop: Header=BB180_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB180_9
	b	LBB180_8
LBB180_8:                               ;   in Loop: Header=BB180_5 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	x0, [sp, #32]
	bl	_free
	b	LBB180_5
LBB180_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB180_11
	b	LBB180_10
LBB180_10:
	b	LBB180_21
LBB180_11:
	mov	x0, #24
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #16]
	str	w8, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #20]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-24]
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #20]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	ldr	w8, [x9, #16]
	add	w8, w8, #1
	str	w8, [x9, #16]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	LBB180_21
LBB180_12:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	x0, [sp, #32]
	bl	_free
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB180_14
	b	LBB180_13
LBB180_13:
	b	LBB180_21
LBB180_14:
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	ldr	w8, [x9, #16]
	add	w8, w8, #1
	str	w8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB180_16
	b	LBB180_15
LBB180_15:
	b	LBB180_21
LBB180_16:
	b	LBB180_17
LBB180_17:                              ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB180_19
	b	LBB180_18
LBB180_18:                              ;   in Loop: Header=BB180_17 Depth=1
	mov	x0, #24
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #16]
	str	w8, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #20]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-24]
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #20]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	LBB180_17
LBB180_19:
	b	LBB180_20
LBB180_20:
	b	LBB180_21
LBB180_21:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB180_22
LBB180_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_ast_traverse_free          ; -- Begin function mpc_ast_traverse_free
	.p2align	2
_mpc_ast_traverse_free:                 ; @mpc_ast_traverse_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB181_1
LBB181_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB181_3
	b	LBB181_2
LBB181_2:                               ;   in Loop: Header=BB181_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_free
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	LBB181_1
LBB181_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_fold_ast                  ; -- Begin function mpcf_fold_ast
	.p2align	2
_mpcf_fold_ast:                         ; @mpcf_fold_ast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB182_2
	b	LBB182_1
LBB182_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB182_34
LBB182_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB182_4
	b	LBB182_3
LBB182_3:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB182_34
LBB182_4:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB182_7
	b	LBB182_5
LBB182_5:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB182_7
	b	LBB182_6
LBB182_6:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB182_34
LBB182_7:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB182_10
	b	LBB182_8
LBB182_8:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB182_10
	b	LBB182_9
LBB182_9:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-8]
	b	LBB182_34
LBB182_10:
	adrp	x0, l_.str.63@PAGE
	add	x0, x0, l_.str.63@PAGEOFF
	adrp	x1, l_.str.78@PAGE
	add	x1, x1, l_.str.78@PAGEOFF
	bl	_mpc_ast_new
	str	x0, [sp, #16]
	stur	wzr, [x29, #-28]
	b	LBB182_11
LBB182_11:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB182_23 Depth 2
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB182_31
	b	LBB182_12
LBB182_12:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB182_14
	b	LBB182_13
LBB182_13:                              ;   in Loop: Header=BB182_11 Depth=1
	b	LBB182_30
LBB182_14:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB182_17
	b	LBB182_15
LBB182_15:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB182_17
	b	LBB182_16
LBB182_16:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_ast_add_child
	b	LBB182_29
LBB182_17:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB182_20
	b	LBB182_18
LBB182_18:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8, #48]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB182_20
	b	LBB182_19
LBB182_19:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8, #56]
	ldr	x0, [x8]
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x1, [x8]
	bl	_mpc_ast_add_root_tag
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	_mpc_ast_add_child
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_ast_delete_no_children
	b	LBB182_28
LBB182_20:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB182_27
	b	LBB182_21
LBB182_21:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8, #48]
	subs	w8, w8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB182_27
	b	LBB182_22
LBB182_22:                              ;   in Loop: Header=BB182_11 Depth=1
	str	wzr, [sp, #32]
	b	LBB182_23
LBB182_23:                              ;   Parent Loop BB182_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #32]
	ldr	x9, [sp, #24]
	ldursw	x10, [x29, #-28]
	ldr	x9, [x9, x10, lsl #3]
	ldr	w9, [x9, #48]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB182_26
	b	LBB182_24
LBB182_24:                              ;   in Loop: Header=BB182_23 Depth=2
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #32]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_ast_add_child
	b	LBB182_25
LBB182_25:                              ;   in Loop: Header=BB182_23 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB182_23
LBB182_26:                              ;   in Loop: Header=BB182_11 Depth=1
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-28]
	ldr	x0, [x8, x9, lsl #3]
	bl	_mpc_ast_delete_no_children
	b	LBB182_27
LBB182_27:                              ;   in Loop: Header=BB182_11 Depth=1
	b	LBB182_28
LBB182_28:                              ;   in Loop: Header=BB182_11 Depth=1
	b	LBB182_29
LBB182_29:                              ;   in Loop: Header=BB182_11 Depth=1
	b	LBB182_30
LBB182_30:                              ;   in Loop: Header=BB182_11 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB182_11
LBB182_31:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #48]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB182_33
	b	LBB182_32
LBB182_32:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #56]
	ldr	x9, [x9]
	ldr	q0, [x9, #16]
	str	q0, [x8, #16]
	ldr	q0, [x9, #32]
	str	q0, [x8, #32]
	b	LBB182_33
LBB182_33:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB182_34
LBB182_34:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_ast_delete_no_children
_mpc_ast_delete_no_children:            ; @mpc_ast_delete_no_children
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x0, [sp, #8]
	bl	_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_str_ast                   ; -- Begin function mpcf_str_ast
	.p2align	2
_mpcf_str_ast:                          ; @mpcf_str_ast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, l_.str.78@PAGE
	add	x0, x0, l_.str.78@PAGEOFF
	bl	_mpc_ast_new
	str	x0, [sp]
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpcf_state_ast                 ; -- Begin function mpcf_state_ast
	.p2align	2
_mpcf_state_ast:                        ; @mpcf_state_ast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	ldr	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	q0, [x8]
	mov	x1, sp
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	bl	_mpc_ast_state
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	_free
	ldr	x0, [sp, #32]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_state                     ; -- Begin function mpca_state
	.p2align	2
_mpca_state:                            ; @mpca_state
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	bl	_mpc_state
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x0, [x9]
	str	x8, [x9, #8]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_state_ast@PAGE
	add	x1, x1, _mpcf_state_ast@PAGEOFF
	bl	_mpc_and
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_tag                       ; -- Begin function mpca_tag
	.p2align	2
_mpca_tag:                              ; @mpca_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x2, [sp]
	adrp	x1, _mpc_ast_tag@PAGE
	add	x1, x1, _mpc_ast_tag@PAGEOFF
	bl	_mpc_apply_to
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_add_tag                   ; -- Begin function mpca_add_tag
	.p2align	2
_mpca_add_tag:                          ; @mpca_add_tag
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x2, [sp]
	adrp	x1, _mpc_ast_add_tag@PAGE
	add	x1, x1, _mpc_ast_add_tag@PAGEOFF
	bl	_mpc_apply_to
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_root                      ; -- Begin function mpca_root
	.p2align	2
_mpca_root:                             ; @mpca_root
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_ast_add_root@PAGE
	add	x1, x1, _mpc_ast_add_root@PAGEOFF
	bl	_mpc_apply
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_not                       ; -- Begin function mpca_not
	.p2align	2
_mpca_not:                              ; @mpca_not
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_ast_delete@PAGE
	add	x1, x1, _mpc_ast_delete@PAGEOFF
	bl	_mpc_not
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_maybe                     ; -- Begin function mpca_maybe
	.p2align	2
_mpca_maybe:                            ; @mpca_maybe
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_mpc_maybe
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_many                      ; -- Begin function mpca_many
	.p2align	2
_mpca_many:                             ; @mpca_many
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, _mpcf_fold_ast@PAGE
	add	x0, x0, _mpcf_fold_ast@PAGEOFF
	bl	_mpc_many
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_many1                     ; -- Begin function mpca_many1
	.p2align	2
_mpca_many1:                            ; @mpca_many1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, _mpcf_fold_ast@PAGE
	add	x0, x0, _mpcf_fold_ast@PAGEOFF
	bl	_mpc_many1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_count                     ; -- Begin function mpca_count
	.p2align	2
_mpca_count:                            ; @mpca_count
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x2, [sp]
	adrp	x1, _mpcf_fold_ast@PAGE
	add	x1, x1, _mpcf_fold_ast@PAGEOFF
	adrp	x3, _mpc_ast_delete@PAGE
	add	x3, x3, _mpc_ast_delete@PAGEOFF
	bl	_mpc_count
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_or                        ; -- Begin function mpca_or
	.p2align	2
_mpca_or:                               ; @mpca_or
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	bl	_mpc_undefined
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #23
	strb	w8, [x9, #48]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldursw	x9, [x29, #-4]
	mov	x8, #8
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #16]
	add	x9, sp, #16
	add	x8, x29, #16
	str	x8, [x9]
	stur	wzr, [x29, #-8]
	b	LBB195_1
LBB195_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB195_4
	b	LBB195_2
LBB195_2:                               ;   in Loop: Header=BB195_1 Depth=1
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [sp, #16]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-8]
	str	x8, [x9, x10, lsl #3]
	b	LBB195_3
LBB195_3:                               ;   in Loop: Header=BB195_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB195_1
LBB195_4:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_and                       ; -- Begin function mpca_and
	.p2align	2
_mpca_and:                              ; @mpca_and
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	bl	_mpc_undefined
	str	x0, [sp, #24]
	ldr	x9, [sp, #24]
	mov	w8, #24
	strb	w8, [x9, #48]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	x9, [sp, #24]
	adrp	x8, _mpcf_fold_ast@PAGE
	add	x8, x8, _mpcf_fold_ast@PAGEOFF
	str	x8, [x9, #16]
	ldursw	x9, [x29, #-4]
	mov	x8, #8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #24]
	str	x0, [x9, #24]
	ldur	w9, [x29, #-4]
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	mul	x0, x8, x9
	bl	_malloc
	ldr	x8, [sp, #24]
	str	x0, [x8, #32]
	sub	x9, x29, #16
	add	x8, x29, #16
	str	x8, [x9]
	stur	wzr, [x29, #-8]
	b	LBB196_1
LBB196_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB196_4
	b	LBB196_2
LBB196_2:                               ;   in Loop: Header=BB196_1 Depth=1
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	add	x9, x9, #8
	stur	x9, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-8]
	str	x8, [x9, x10, lsl #3]
	b	LBB196_3
LBB196_3:                               ;   in Loop: Header=BB196_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB196_1
LBB196_4:
	stur	wzr, [x29, #-8]
	b	LBB196_5
LBB196_5:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB196_8
	b	LBB196_6
LBB196_6:                               ;   in Loop: Header=BB196_5 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-8]
	adrp	x8, _mpc_ast_delete@PAGE
	add	x8, x8, _mpc_ast_delete@PAGEOFF
	str	x8, [x9, x10, lsl #3]
	b	LBB196_7
LBB196_7:                               ;   in Loop: Header=BB196_5 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	LBB196_5
LBB196_8:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_total                     ; -- Begin function mpca_total
	.p2align	2
_mpca_total:                            ; @mpca_total
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _mpc_ast_delete@PAGE
	add	x1, x1, _mpc_ast_delete@PAGEOFF
	bl	_mpc_total
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_grammar_st                ; -- Begin function mpca_grammar_st
	.p2align	2
_mpca_grammar_st:                       ; @mpca_grammar_st
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #336]            ; 16-byte Folded Spill
	add	x29, sp, #336
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	stur	x8, [x29, #-152]                ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	adrp	x0, l_.str.80@PAGE
	add	x0, x0, l_.str.80@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-64]
	adrp	x0, l_.str.81@PAGE
	add	x0, x0, l_.str.81@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-72]
	adrp	x0, l_.str.68@PAGE
	add	x0, x0, l_.str.68@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-80]
	adrp	x0, l_.str.69@PAGE
	add	x0, x0, l_.str.69@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-88]
	adrp	x0, l_.str.70@PAGE
	add	x0, x0, l_.str.70@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-96]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	adrp	x1, _mpc_soft_delete@PAGE
	add	x1, x1, _mpc_soft_delete@PAGEOFF
	stur	x1, [x29, #-144]                ; 8-byte Folded Spill
	bl	_mpc_total
	bl	_mpc_predictive
	mov	x1, x0
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-72]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-80]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	adrp	x0, l_.str.79@PAGE
	add	x0, x0, l_.str.79@PAGEOFF
	bl	_mpc_sym
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	ldur	x10, [x29, #-72]
	mov	x9, sp
	str	x0, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	stur	w0, [x29, #-156]                ; 4-byte Folded Spill
	adrp	x1, _mpcf_snd_free@PAGE
	add	x1, x1, _mpcf_snd_free@PAGEOFF
	bl	_mpc_and
	bl	_mpc_maybe
	ldr	x11, [sp, #72]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-144]                ; 8-byte Folded Reload
	mov	x10, x0
	ldur	w0, [x29, #-156]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcaf_grammar_or@PAGE
	add	x1, x1, _mpcaf_grammar_or@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-80]
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldur	x1, [x29, #-88]
	adrp	x0, _mpcaf_grammar_and@PAGE
	add	x0, x0, _mpcaf_grammar_and@PAGEOFF
	bl	_mpc_many1
	mov	x1, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-88]
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	ldur	x8, [x29, #-96]
	str	x8, [sp, #136]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.82@PAGE
	add	x0, x0, l_.str.82@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	adrp	x0, l_.str.83@PAGE
	add	x0, x0, l_.str.83@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.84@PAGE
	add	x0, x0, l_.str.84@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.85@PAGE
	add	x0, x0, l_.str.85@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
	bl	_mpc_int
	ldur	x1, [x29, #-152]                ; 8-byte Folded Reload
	bl	_mpc_tok_brackets
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
	bl	_mpc_pass
	ldr	x13, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #104]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #112]                 ; 8-byte Folded Reload
	ldr	x10, [sp, #120]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	mov	x8, sp
	str	x13, [x8]
	str	x12, [x8, #8]
	str	x11, [x8, #16]
	str	x10, [x8, #24]
	str	x9, [x8, #32]
	str	x0, [x8, #40]
	mov	w0, #6
	bl	_mpc_or
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-144]                ; 8-byte Folded Reload
	mov	x10, x0
	ldur	w0, [x29, #-156]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcaf_grammar_repeat@PAGE
	add	x1, x1, _mpcaf_grammar_repeat@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-104]                ; 8-byte Folded Spill
	bl	_mpc_string_lit
	bl	_mpc_tok
	ldur	x2, [x29, #-32]
	adrp	x1, _mpcaf_grammar_string@PAGE
	add	x1, x1, _mpcaf_grammar_string@PAGEOFF
	bl	_mpc_apply_to
	stur	x0, [x29, #-136]                ; 8-byte Folded Spill
	bl	_mpc_char_lit
	bl	_mpc_tok
	ldur	x2, [x29, #-32]
	adrp	x1, _mpcaf_grammar_char@PAGE
	add	x1, x1, _mpcaf_grammar_char@PAGEOFF
	bl	_mpc_apply_to
	stur	x0, [x29, #-128]                ; 8-byte Folded Spill
	bl	_mpc_regex_lit
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.86@PAGE
	add	x0, x0, l_.str.86@PAGEOFF
	bl	_mpc_oneof
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_mpc_lift_val
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	ldr	x10, [sp, #160]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x0, [x9, #16]
	mov	x10, x8
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	adrp	x1, _mpcaf_fold_regex@PAGE
	add	x1, x1, _mpcaf_fold_regex@PAGEOFF
	bl	_mpc_and
	bl	_mpc_tok
	stur	x0, [x29, #-120]                ; 8-byte Folded Spill
	bl	_mpc_digits
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
	bl	_mpc_ident
	ldr	x10, [sp, #168]                 ; 8-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-156]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_mpc_or
	ldur	x1, [x29, #-152]                ; 8-byte Folded Reload
	bl	_mpc_tok_braces
	ldur	x2, [x29, #-32]
	adrp	x1, _mpcaf_grammar_id@PAGE
	add	x1, x1, _mpcaf_grammar_id@PAGEOFF
	bl	_mpc_apply_to
	ldur	x1, [x29, #-144]                ; 8-byte Folded Reload
	stur	x0, [x29, #-112]                ; 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	bl	_mpc_tok_parens
	ldur	x12, [x29, #-136]               ; 8-byte Folded Reload
	ldur	x11, [x29, #-128]               ; 8-byte Folded Reload
	ldur	x10, [x29, #-120]               ; 8-byte Folded Reload
	ldur	x9, [x29, #-112]                ; 8-byte Folded Reload
	mov	x8, sp
	str	x12, [x8]
	str	x11, [x8, #8]
	str	x10, [x8, #16]
	str	x9, [x8, #24]
	str	x0, [x8, #32]
	mov	w0, #5
	bl	_mpc_or
	mov	x1, x0
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x0, [x29, #-64]
	bl	_mpc_optimise
	ldur	x0, [x29, #-72]
	bl	_mpc_optimise
	ldur	x0, [x29, #-88]
	bl	_mpc_optimise
	ldur	x0, [x29, #-80]
	bl	_mpc_optimise
	ldur	x0, [x29, #-96]
	bl	_mpc_optimise
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-64]
	adrp	x0, l_.str.87@PAGE
	add	x0, x0, l_.str.87@PAGEOFF
	sub	x3, x29, #56
	bl	_mpc_parse
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB198_2
	b	LBB198_1
LBB198_1:
	ldur	x0, [x29, #-56]
	bl	_mpc_err_string
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.88@PAGE
	add	x0, x0, l_.str.88@PAGEOFF
	bl	_mpc_failf
	stur	x0, [x29, #-48]
	ldur	x0, [x29, #-56]
	bl	_mpc_err_delete
	ldur	x0, [x29, #-40]
	bl	_free
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-56]
	b	LBB198_2
LBB198_2:
	ldur	x13, [x29, #-64]
	ldur	x12, [x29, #-72]
	ldur	x11, [x29, #-80]
	ldur	x10, [x29, #-88]
	ldur	x8, [x29, #-96]
	mov	x9, sp
	str	x13, [x9]
	str	x12, [x9, #8]
	str	x11, [x9, #16]
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #5
	bl	_mpc_cleanup
	ldur	x0, [x29, #-56]
	bl	_mpc_optimise
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #24]
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB198_4
	b	LBB198_3
LBB198_3:
	ldur	x0, [x29, #-56]
	bl	_mpc_predictive
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB198_5
LBB198_4:
	ldur	x8, [x29, #-56]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB198_5
LBB198_5:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_soft_delete
_mpc_soft_delete:                       ; @mpc_soft_delete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_grammar_or
_mpcaf_grammar_or:                      ; @mpcaf_grammar_or
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB200_2
	b	LBB200_1
LBB200_1:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB200_3
LBB200_2:
	ldr	x8, [sp, #24]
	ldr	x10, [x8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	mov	w0, #2
	bl	_mpca_or
	stur	x0, [x29, #-8]
	b	LBB200_3
LBB200_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_grammar_and
_mpcaf_grammar_and:                     ; @mpcaf_grammar_and
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	bl	_mpc_pass
	str	x0, [sp, #16]
	stur	wzr, [x29, #-20]
	b	LBB201_1
LBB201_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB201_6
	b	LBB201_2
LBB201_2:                               ;   in Loop: Header=BB201_1 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB201_4
	b	LBB201_3
LBB201_3:                               ;   in Loop: Header=BB201_1 Depth=1
	ldr	x10, [sp, #16]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	mov	w0, #2
	bl	_mpca_and
	str	x0, [sp, #16]
	b	LBB201_4
LBB201_4:                               ;   in Loop: Header=BB201_1 Depth=1
	b	LBB201_5
LBB201_5:                               ;   in Loop: Header=BB201_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB201_1
LBB201_6:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_grammar_repeat
_mpcaf_grammar_repeat:                  ; @mpcaf_grammar_repeat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB202_2
	b	LBB202_1
LBB202_1:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB202_10
LBB202_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldrsb	w8, [x8]
	subs	w8, w8, #33
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #30
	cset	w8, hi
	tbnz	w8, #0, LBB202_8
; %bb.3:
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI202_0@PAGE
	add	x10, x10, lJTI202_0@PAGEOFF
Ltmp12:
	adr	x8, Ltmp12
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB202_4:
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	bl	_mpca_many
	stur	x0, [x29, #-8]
	b	LBB202_10
LBB202_5:
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	bl	_mpca_many1
	stur	x0, [x29, #-8]
	b	LBB202_10
LBB202_6:
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	bl	_mpca_maybe
	stur	x0, [x29, #-8]
	b	LBB202_10
LBB202_7:
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	bl	_mpca_not
	stur	x0, [x29, #-8]
	b	LBB202_10
LBB202_8:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	_free
	b	LBB202_9
LBB202_9:
	ldr	w0, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	x1, [x8]
	bl	_mpca_count
	stur	x0, [x29, #-8]
	b	LBB202_10
LBB202_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
	.p2align	2
lJTI202_0:
	.long	LBB202_7-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_4-Ltmp12
	.long	LBB202_5-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_8-Ltmp12
	.long	LBB202_6-Ltmp12
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_grammar_string
_mpcaf_grammar_string:                  ; @mpcaf_grammar_string
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	_mpcf_unescape
	str	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #24]
	ands	w8, w8, #0x2
	cset	w8, eq
	tbnz	w8, #0, LBB203_2
	b	LBB203_1
LBB203_1:
	ldr	x0, [sp, #16]
	bl	_mpc_string
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB203_3
LBB203_2:
	ldr	x0, [sp, #16]
	bl	_mpc_string
	bl	_mpc_tok
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB203_3
LBB203_3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_free
	ldr	x0, [sp, #8]
	adrp	x1, _mpcf_str_ast@PAGE
	add	x1, x1, _mpcf_str_ast@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	bl	_mpca_tag
	bl	_mpca_state
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_grammar_char
_mpcaf_grammar_char:                    ; @mpcaf_grammar_char
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	_mpcf_unescape
	str	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #24]
	ands	w8, w8, #0x2
	cset	w8, eq
	tbnz	w8, #0, LBB204_2
	b	LBB204_1
LBB204_1:
	ldr	x8, [sp, #16]
	ldrsb	w0, [x8]
	bl	_mpc_char
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB204_3
LBB204_2:
	ldr	x8, [sp, #16]
	ldrsb	w0, [x8]
	bl	_mpc_char
	bl	_mpc_tok
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB204_3
LBB204_3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_free
	ldr	x0, [sp, #8]
	adrp	x1, _mpcf_str_ast@PAGE
	add	x1, x1, _mpcf_str_ast@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.55@PAGE
	add	x1, x1, l_.str.55@PAGEOFF
	bl	_mpca_tag
	bl	_mpca_state
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_fold_regex
_mpcaf_fold_regex:                      ; @mpcaf_fold_regex
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	str	wzr, [sp, #12]
	ldr	x0, [sp, #32]
	mov	w1, #109
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB205_2
	b	LBB205_1
LBB205_1:
	ldr	w8, [sp, #12]
	orr	w8, w8, #0x1
	str	w8, [sp, #12]
	b	LBB205_2
LBB205_2:
	ldr	x0, [sp, #32]
	mov	w1, #115
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB205_4
	b	LBB205_3
LBB205_3:
	ldr	w8, [sp, #12]
	orr	w8, w8, #0x2
	str	w8, [sp, #12]
	b	LBB205_4
LBB205_4:
	ldur	x0, [x29, #-24]
	bl	_mpcf_unescape_regex
	stur	x0, [x29, #-24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #24]
	ands	w8, w8, #0x2
	cset	w8, eq
	tbnz	w8, #0, LBB205_6
	b	LBB205_5
LBB205_5:
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #12]
	bl	_mpc_re_mode
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB205_7
LBB205_6:
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #12]
	bl	_mpc_re_mode
	bl	_mpc_tok
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB205_7
LBB205_7:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldur	x0, [x29, #-24]
	bl	_free
	ldr	x0, [sp, #32]
	bl	_free
	ldr	x0, [sp, #16]
	adrp	x1, _mpcf_str_ast@PAGE
	add	x1, x1, _mpcf_str_ast@PAGEOFF
	bl	_mpc_apply
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	bl	_mpca_tag
	bl	_mpca_state
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcaf_grammar_id
_mpcaf_grammar_id:                      ; @mpcaf_grammar_id
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	_mpca_grammar_find_parser
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB206_2
	b	LBB206_1
LBB206_1:
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	bl	_mpca_add_tag
	bl	_mpca_root
	bl	_mpca_state
	stur	x0, [x29, #-8]
	b	LBB206_3
LBB206_2:
	ldr	x0, [sp, #8]
	bl	_mpca_root
	bl	_mpca_state
	stur	x0, [x29, #-8]
	b	LBB206_3
LBB206_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_grammar                   ; -- Begin function mpca_grammar
	.p2align	2
_mpca_grammar:                          ; @mpca_grammar
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	mov	x8, sp
	add	x9, x29, #16
	str	x9, [x8]
	add	x1, sp, #16
	str	x8, [sp, #16]
	str	wzr, [sp, #24]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	_mpca_grammar_st
	str	x0, [sp, #8]
	ldr	x0, [sp, #32]
	bl	_free
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_lang_file                 ; -- Begin function mpca_lang_file
	.p2align	2
_mpca_lang_file:                        ; @mpca_lang_file
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	add	x8, sp, #8
	add	x9, x29, #16
	str	x9, [x8]
	add	x9, sp, #32
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	x8, [sp, #32]
	str	wzr, [sp, #40]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #48]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #56]
	ldur	x1, [x29, #-16]
	adrp	x0, l_.str.89@PAGE
	add	x0, x0, l_.str.89@PAGEOFF
	bl	_mpc_input_new_file
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_mpca_lang_st
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_mpc_input_delete
	ldr	x0, [sp, #48]
	bl	_free
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpca_lang_st
_mpca_lang_st:                          ; @mpca_lang_st
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #400]            ; 16-byte Folded Spill
	add	x29, sp, #400
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	stur	x8, [x29, #-160]                ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	adrp	x0, l_.str.156@PAGE
	add	x0, x0, l_.str.156@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-56]
	adrp	x0, l_.str.157@PAGE
	add	x0, x0, l_.str.157@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-64]
	adrp	x0, l_.str.81@PAGE
	add	x0, x0, l_.str.81@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-72]
	adrp	x0, l_.str.68@PAGE
	add	x0, x0, l_.str.68@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-80]
	adrp	x0, l_.str.69@PAGE
	add	x0, x0, l_.str.69@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-88]
	adrp	x0, l_.str.70@PAGE
	add	x0, x0, l_.str.70@PAGEOFF
	bl	_mpc_new
	stur	x0, [x29, #-96]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	ldur	x1, [x29, #-64]
	adrp	x0, _mpca_stmt_fold@PAGE
	add	x0, x0, _mpca_stmt_fold@PAGEOFF
	bl	_mpc_many
	bl	_mpc_predictive
	adrp	x1, _mpca_stmt_list_delete@PAGE
	add	x1, x1, _mpca_stmt_list_delete@PAGEOFF
	bl	_mpc_total
	ldur	x2, [x29, #-32]
	adrp	x1, _mpca_stmt_list_apply_to@PAGE
	add	x1, x1, _mpca_stmt_list_apply_to@PAGEOFF
	bl	_mpc_apply_to
	mov	x1, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-64]
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	bl	_mpc_ident
	bl	_mpc_tok
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	bl	_mpc_string_lit
	bl	_mpc_tok
	bl	_mpc_maybe
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	adrp	x0, l_.str.158@PAGE
	add	x0, x0, l_.str.158@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-72]
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.159@PAGE
	add	x0, x0, l_.str.159@PAGEOFF
	bl	_mpc_sym
	ldr	x13, [sp, #80]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #88]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #104]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-160]                ; 8-byte Folded Reload
	mov	x9, sp
	str	x9, [sp, #112]                  ; 8-byte Folded Spill
	str	x13, [x9]
	str	x12, [x9, #8]
	str	x11, [x9, #16]
	str	x10, [x9, #24]
	str	x0, [x9, #32]
	mov	x10, x8
	str	x10, [x9, #40]
	mov	x10, x8
	str	x10, [x9, #48]
	str	x8, [x9, #56]
	adrp	x8, _mpc_soft_delete@PAGE
	add	x8, x8, _mpc_soft_delete@PAGEOFF
	stur	x8, [x29, #-152]                ; 8-byte Folded Spill
	str	x8, [x9, #64]
	mov	w0, #5
	stur	w0, [x29, #-108]                ; 4-byte Folded Spill
	adrp	x1, _mpca_stmt_afold@PAGE
	add	x1, x1, _mpca_stmt_afold@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-72]
	str	x8, [sp, #136]                  ; 8-byte Folded Spill
	ldur	x8, [x29, #-80]
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.79@PAGE
	add	x0, x0, l_.str.79@PAGEOFF
	bl	_mpc_sym
	ldur	x8, [x29, #-160]                ; 8-byte Folded Reload
	ldur	x10, [x29, #-72]
	mov	x9, sp
	str	x0, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	stur	w0, [x29, #-164]                ; 4-byte Folded Spill
	adrp	x1, _mpcf_snd_free@PAGE
	add	x1, x1, _mpcf_snd_free@PAGEOFF
	bl	_mpc_and
	bl	_mpc_maybe
	ldr	x11, [sp, #128]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	mov	x10, x0
	ldur	w0, [x29, #-164]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcaf_grammar_or@PAGE
	add	x1, x1, _mpcaf_grammar_or@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-80]
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	ldur	x1, [x29, #-88]
	adrp	x0, _mpcaf_grammar_and@PAGE
	add	x0, x0, _mpcaf_grammar_and@PAGEOFF
	bl	_mpc_many1
	mov	x1, x0
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-88]
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldur	x8, [x29, #-96]
	str	x8, [sp, #192]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.82@PAGE
	add	x0, x0, l_.str.82@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.83@PAGE
	add	x0, x0, l_.str.83@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.84@PAGE
	add	x0, x0, l_.str.84@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
	adrp	x0, l_.str.85@PAGE
	add	x0, x0, l_.str.85@PAGEOFF
	bl	_mpc_sym
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
	bl	_mpc_int
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	_mpc_tok_brackets
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
	bl	_mpc_pass
	ldr	x13, [sp, #152]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #160]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #168]                 ; 8-byte Folded Reload
	ldr	x10, [sp, #176]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #184]                  ; 8-byte Folded Reload
	mov	x8, sp
	str	x13, [x8]
	str	x12, [x8, #8]
	str	x11, [x8, #16]
	str	x10, [x8, #24]
	str	x9, [x8, #32]
	str	x0, [x8, #40]
	mov	w0, #6
	bl	_mpc_or
	ldr	x11, [sp, #192]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	mov	x10, x0
	ldur	w0, [x29, #-164]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x1, _mpcaf_grammar_repeat@PAGE
	add	x1, x1, _mpcaf_grammar_repeat@PAGEOFF
	bl	_mpc_and
	mov	x1, x0
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-104]                ; 8-byte Folded Spill
	bl	_mpc_string_lit
	bl	_mpc_tok
	ldur	x2, [x29, #-32]
	adrp	x1, _mpcaf_grammar_string@PAGE
	add	x1, x1, _mpcaf_grammar_string@PAGEOFF
	bl	_mpc_apply_to
	stur	x0, [x29, #-144]                ; 8-byte Folded Spill
	bl	_mpc_char_lit
	bl	_mpc_tok
	ldur	x2, [x29, #-32]
	adrp	x1, _mpcaf_grammar_char@PAGE
	add	x1, x1, _mpcaf_grammar_char@PAGEOFF
	bl	_mpc_apply_to
	stur	x0, [x29, #-136]                ; 8-byte Folded Spill
	bl	_mpc_regex_lit
	stur	x0, [x29, #-192]                ; 8-byte Folded Spill
	adrp	x0, l_.str.86@PAGE
	add	x0, x0, l_.str.86@PAGEOFF
	bl	_mpc_oneof
	mov	x1, x0
	adrp	x0, _mpcf_strfold@PAGE
	add	x0, x0, _mpcf_strfold@PAGEOFF
	bl	_mpc_many
	stur	x0, [x29, #-184]                ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_mpc_lift_val
	ldur	x11, [x29, #-192]               ; 8-byte Folded Reload
	ldur	x10, [x29, #-184]               ; 8-byte Folded Reload
	ldur	x8, [x29, #-160]                ; 8-byte Folded Reload
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x0, [x9, #16]
	mov	x10, x8
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	mov	w0, #3
	adrp	x1, _mpcaf_fold_regex@PAGE
	add	x1, x1, _mpcaf_fold_regex@PAGEOFF
	bl	_mpc_and
	bl	_mpc_tok
	stur	x0, [x29, #-128]                ; 8-byte Folded Spill
	bl	_mpc_digits
	stur	x0, [x29, #-176]                ; 8-byte Folded Spill
	bl	_mpc_ident
	ldur	x10, [x29, #-176]               ; 8-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-164]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	bl	_mpc_or
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	_mpc_tok_braces
	ldur	x2, [x29, #-32]
	adrp	x1, _mpcaf_grammar_id@PAGE
	add	x1, x1, _mpcaf_grammar_id@PAGEOFF
	bl	_mpc_apply_to
	ldur	x1, [x29, #-152]                ; 8-byte Folded Reload
	stur	x0, [x29, #-120]                ; 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	bl	_mpc_tok_parens
	ldur	x13, [x29, #-144]               ; 8-byte Folded Reload
	ldur	x12, [x29, #-136]               ; 8-byte Folded Reload
	ldur	x11, [x29, #-128]               ; 8-byte Folded Reload
	ldur	x10, [x29, #-120]               ; 8-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-108]                ; 4-byte Folded Reload
	mov	x9, sp
	str	x13, [x9]
	str	x12, [x9, #8]
	str	x11, [x9, #16]
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	bl	_mpc_or
	mov	x1, x0
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	bl	_mpc_define
	ldur	x0, [x29, #-56]
	bl	_mpc_optimise
	ldur	x0, [x29, #-64]
	bl	_mpc_optimise
	ldur	x0, [x29, #-72]
	bl	_mpc_optimise
	ldur	x0, [x29, #-80]
	bl	_mpc_optimise
	ldur	x0, [x29, #-88]
	bl	_mpc_optimise
	ldur	x0, [x29, #-96]
	bl	_mpc_optimise
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-56]
	sub	x2, x29, #40
	bl	_mpc_parse_input
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB209_2
	b	LBB209_1
LBB209_1:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-48]
	b	LBB209_3
LBB209_2:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-48]
	b	LBB209_3
LBB209_3:
	ldur	x14, [x29, #-56]
	ldur	x13, [x29, #-64]
	ldur	x12, [x29, #-72]
	ldur	x11, [x29, #-80]
	ldur	x10, [x29, #-88]
	ldur	x8, [x29, #-96]
	mov	x9, sp
	str	x14, [x9]
	str	x13, [x9, #8]
	str	x12, [x9, #16]
	str	x11, [x9, #24]
	str	x10, [x9, #32]
	str	x8, [x9, #40]
	mov	w0, #6
	bl	_mpc_cleanup
	ldur	x0, [x29, #-48]
	ldp	x29, x30, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	add	sp, sp, #416
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_lang_pipe                 ; -- Begin function mpca_lang_pipe
	.p2align	2
_mpca_lang_pipe:                        ; @mpca_lang_pipe
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	add	x8, sp, #8
	add	x9, x29, #16
	str	x9, [x8]
	add	x9, sp, #32
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	x8, [sp, #32]
	str	wzr, [sp, #40]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #48]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #56]
	ldur	x1, [x29, #-16]
	adrp	x0, l_.str.90@PAGE
	add	x0, x0, l_.str.90@PAGEOFF
	bl	_mpc_input_new_pipe
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_mpca_lang_st
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_mpc_input_delete
	ldr	x0, [sp, #48]
	bl	_free
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_lang                      ; -- Begin function mpca_lang
	.p2align	2
_mpca_lang:                             ; @mpca_lang
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	add	x8, sp, #8
	add	x9, x29, #16
	str	x9, [x8]
	add	x9, sp, #32
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	x8, [sp, #32]
	str	wzr, [sp, #40]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #48]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #56]
	ldur	x1, [x29, #-16]
	adrp	x0, l_.str.91@PAGE
	add	x0, x0, l_.str.91@PAGEOFF
	bl	_mpc_input_new_string
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	_mpca_lang_st
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_mpc_input_delete
	ldr	x0, [sp, #48]
	bl	_free
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpca_lang_contents             ; -- Begin function mpca_lang_contents
	.p2align	2
_mpca_lang_contents:                    ; @mpca_lang_contents
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-24]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_fopen
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB212_2
	b	LBB212_1
LBB212_1:
	ldur	x0, [x29, #-24]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_mpc_err_file
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB212_3
LBB212_2:
	add	x8, sp, #16
	add	x9, x29, #16
	str	x9, [x8]
	add	x9, sp, #40
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	x8, [sp, #40]
	str	wzr, [sp, #48]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #56]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #8]
	bl	_mpc_input_new_file
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_mpca_lang_st
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	_mpc_input_delete
	ldr	x0, [sp, #56]
	bl	_free
	ldr	x0, [sp, #8]
	bl	_fclose
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB212_3
LBB212_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mpc_stats                      ; -- Begin function mpc_stats
	.p2align	2
_mpc_stats:                             ; @mpc_stats
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.92@PAGE
	add	x0, x0, l_.str.92@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.93@PAGE
	add	x0, x0, l_.str.93@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #8]
	mov	w1, #1
	bl	_mpc_nodecount_unretained
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x0
	str	x8, [x9]
	adrp	x0, l_.str.94@PAGE
	add	x0, x0, l_.str.94@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_nodecount_unretained
_mpc_nodecount_unretained:              ; @mpc_nodecount_unretained
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
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB214_3
	b	LBB214_1
LBB214_1:
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB214_3
	b	LBB214_2
LBB214_2:
	stur	wzr, [x29, #-4]
	b	LBB214_40
LBB214_3:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #5
	cset	w8, ne
	tbnz	w8, #0, LBB214_5
	b	LBB214_4
LBB214_4:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_5:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #15
	cset	w8, ne
	tbnz	w8, #0, LBB214_7
	b	LBB214_6
LBB214_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_7:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #16
	cset	w8, ne
	tbnz	w8, #0, LBB214_9
	b	LBB214_8
LBB214_8:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_9:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #17
	cset	w8, ne
	tbnz	w8, #0, LBB214_11
	b	LBB214_10
LBB214_10:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_11:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #25
	cset	w8, ne
	tbnz	w8, #0, LBB214_13
	b	LBB214_12
LBB214_12:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_13:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #26
	cset	w8, ne
	tbnz	w8, #0, LBB214_15
	b	LBB214_14
LBB214_14:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_15:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #18
	cset	w8, ne
	tbnz	w8, #0, LBB214_17
	b	LBB214_16
LBB214_16:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_17:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #19
	cset	w8, ne
	tbnz	w8, #0, LBB214_19
	b	LBB214_18
LBB214_18:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_19:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #20
	cset	w8, ne
	tbnz	w8, #0, LBB214_21
	b	LBB214_20
LBB214_20:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_21:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #21
	cset	w8, ne
	tbnz	w8, #0, LBB214_23
	b	LBB214_22
LBB214_22:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_23:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #22
	cset	w8, ne
	tbnz	w8, #0, LBB214_25
	b	LBB214_24
LBB214_24:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	add	w8, w0, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_25:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #29
	cset	w8, ne
	tbnz	w8, #0, LBB214_27
	b	LBB214_26
LBB214_26:
	mov	w8, #1
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	mov	w1, #0
	str	w1, [sp]                        ; 4-byte Folded Spill
	bl	_mpc_nodecount_unretained
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	ldr	w8, [sp, #4]
	add	w8, w8, w0
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #32]
	bl	_mpc_nodecount_unretained
	ldr	w1, [sp]                        ; 4-byte Folded Reload
	ldr	w8, [sp, #4]
	add	w8, w8, w0
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	bl	_mpc_nodecount_unretained
	ldr	w8, [sp, #4]
	add	w8, w8, w0
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_27:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB214_33
	b	LBB214_28
LBB214_28:
	mov	w8, #1
	str	w8, [sp, #4]
	str	wzr, [sp, #8]
	b	LBB214_29
LBB214_29:                              ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB214_32
	b	LBB214_30
LBB214_30:                              ;   in Loop: Header=BB214_29 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	ldr	w8, [sp, #4]
	add	w8, w8, w0
	str	w8, [sp, #4]
	b	LBB214_31
LBB214_31:                              ;   in Loop: Header=BB214_29 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB214_29
LBB214_32:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_33:
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB214_39
	b	LBB214_34
LBB214_34:
	mov	w8, #1
	str	w8, [sp, #4]
	str	wzr, [sp, #8]
	b	LBB214_35
LBB214_35:                              ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB214_38
	b	LBB214_36
LBB214_36:                              ;   in Loop: Header=BB214_35 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_nodecount_unretained
	ldr	w8, [sp, #4]
	add	w8, w8, w0
	str	w8, [sp, #4]
	b	LBB214_37
LBB214_37:                              ;   in Loop: Header=BB214_35 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB214_35
LBB214_38:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_39:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB214_40
LBB214_40:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_optimise_unretained
_mpc_optimise_unretained:               ; @mpc_optimise_unretained
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB215_3
	b	LBB215_1
LBB215_1:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_3
	b	LBB215_2
LBB215_2:
	b	LBB215_102
LBB215_3:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #5
	cset	w8, ne
	tbnz	w8, #0, LBB215_5
	b	LBB215_4
LBB215_4:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_5
LBB215_5:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #15
	cset	w8, ne
	tbnz	w8, #0, LBB215_7
	b	LBB215_6
LBB215_6:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_7
LBB215_7:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #16
	cset	w8, ne
	tbnz	w8, #0, LBB215_9
	b	LBB215_8
LBB215_8:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_9
LBB215_9:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #25
	cset	w8, ne
	tbnz	w8, #0, LBB215_11
	b	LBB215_10
LBB215_10:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_11
LBB215_11:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #26
	cset	w8, ne
	tbnz	w8, #0, LBB215_13
	b	LBB215_12
LBB215_12:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_13
LBB215_13:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #17
	cset	w8, ne
	tbnz	w8, #0, LBB215_15
	b	LBB215_14
LBB215_14:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_15
LBB215_15:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #18
	cset	w8, ne
	tbnz	w8, #0, LBB215_17
	b	LBB215_16
LBB215_16:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_17
LBB215_17:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #19
	cset	w8, ne
	tbnz	w8, #0, LBB215_19
	b	LBB215_18
LBB215_18:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_19
LBB215_19:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #20
	cset	w8, ne
	tbnz	w8, #0, LBB215_21
	b	LBB215_20
LBB215_20:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_21
LBB215_21:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #21
	cset	w8, ne
	tbnz	w8, #0, LBB215_23
	b	LBB215_22
LBB215_22:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_23
LBB215_23:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #22
	cset	w8, ne
	tbnz	w8, #0, LBB215_25
	b	LBB215_24
LBB215_24:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_25
LBB215_25:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #29
	cset	w8, ne
	tbnz	w8, #0, LBB215_27
	b	LBB215_26
LBB215_26:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	mov	w1, #0
	stur	w1, [x29, #-36]                 ; 4-byte Folded Spill
	bl	_mpc_optimise_unretained
	ldur	w1, [x29, #-36]                 ; 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	_mpc_optimise_unretained
	b	LBB215_27
LBB215_27:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB215_33
	b	LBB215_28
LBB215_28:
	stur	wzr, [x29, #-16]
	b	LBB215_29
LBB215_29:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB215_32
	b	LBB215_30
LBB215_30:                              ;   in Loop: Header=BB215_29 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-16]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_31
LBB215_31:                              ;   in Loop: Header=BB215_29 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB215_29
LBB215_32:
	b	LBB215_33
LBB215_33:
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_39
	b	LBB215_34
LBB215_34:
	stur	wzr, [x29, #-16]
	b	LBB215_35
LBB215_35:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB215_38
	b	LBB215_36
LBB215_36:                              ;   in Loop: Header=BB215_35 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-16]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_optimise_unretained
	b	LBB215_37
LBB215_37:                              ;   in Loop: Header=BB215_35 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB215_35
LBB215_38:
	b	LBB215_39
LBB215_39:
	b	LBB215_40
LBB215_40:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB215_60 Depth 2
                                        ;     Child Loop BB215_70 Depth 2
                                        ;     Child Loop BB215_87 Depth 2
                                        ;     Child Loop BB215_97 Depth 2
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB215_44
	b	LBB215_41
LBB215_41:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB215_44
	b	LBB215_42
LBB215_42:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_44
	b	LBB215_43
LBB215_43:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9, lsl #3
	subs	x0, x8, #8
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #16]
	ldursw	x8, [x29, #-24]
	lsl	x2, x8, #3
	mov	x3, #-1
	bl	___memmove_chk
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #16]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_44:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB215_48
	b	LBB215_45
LBB215_45:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #23
	cset	w8, ne
	tbnz	w8, #0, LBB215_48
	b	LBB215_46
LBB215_46:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_48
	b	LBB215_47
LBB215_47:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-24]
	add	x0, x8, x9, lsl #3
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	add	x1, x8, #8
	ldur	w8, [x29, #-20]
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	lsl	x2, x8, #3
	mov	x3, #-1
	str	x3, [sp, #48]                   ; 8-byte Folded Spill
	bl	___memmove_chk
	ldr	x3, [sp, #48]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #16]
	ldursw	x8, [x29, #-24]
	lsl	x2, x8, #3
	bl	___memmove_chk
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #16]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_48:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_54
	b	LBB215_49
LBB215_49:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB215_54
	b	LBB215_50
LBB215_50:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB215_54
	b	LBB215_51
LBB215_51:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_54
	b	LBB215_52
LBB215_52:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_fold_ast@PAGE
	add	x9, x9, _mpcf_fold_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_54
	b	LBB215_53
LBB215_53:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x0, [x8]
	bl	_mpc_delete
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	bl	_free
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	_free
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	mov	x2, #56
	mov	x3, #-1
	bl	___memcpy_chk
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_54:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_64
	b	LBB215_55
LBB215_55:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_fold_ast@PAGE
	add	x9, x9, _mpcf_fold_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_64
	b	LBB215_56
LBB215_56:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_64
	b	LBB215_57
LBB215_57:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_64
	b	LBB215_58
LBB215_58:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_fold_ast@PAGE
	add	x9, x9, _mpcf_fold_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_64
	b	LBB215_59
LBB215_59:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x0, [x9, #24]
	ldur	x9, [x29, #-8]
	ldr	x0, [x9, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	subs	w9, w9, #1
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-24]
	add	x0, x8, x9, lsl #3
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	add	x1, x8, #8
	ldur	w8, [x29, #-20]
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	lsl	x2, x8, #3
	mov	x3, #-1
	str	x3, [sp, #40]                   ; 8-byte Folded Spill
	bl	___memmove_chk
	ldr	x3, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #24]
	ldursw	x8, [x29, #-24]
	lsl	x2, x8, #3
	bl	___memmove_chk
	stur	wzr, [x29, #-16]
	b	LBB215_60
LBB215_60:                              ;   Parent Loop BB215_40 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB215_63
	b	LBB215_61
LBB215_61:                              ;   in Loop: Header=BB215_60 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-16]
	adrp	x8, _mpc_ast_delete@PAGE
	add	x8, x8, _mpc_ast_delete@PAGEOFF
	str	x8, [x9, x10, lsl #3]
	b	LBB215_62
LBB215_62:                              ;   in Loop: Header=BB215_60 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB215_60
LBB215_63:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #24]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #32]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_64:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_74
	b	LBB215_65
LBB215_65:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_fold_ast@PAGE
	add	x9, x9, _mpcf_fold_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_74
	b	LBB215_66
LBB215_66:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_74
	b	LBB215_67
LBB215_67:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_74
	b	LBB215_68
LBB215_68:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_fold_ast@PAGE
	add	x9, x9, _mpcf_fold_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_74
	b	LBB215_69
LBB215_69:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x0, [x9, #24]
	ldur	x9, [x29, #-8]
	ldr	x0, [x9, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	subs	w9, w9, #1
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9, lsl #3
	subs	x0, x8, #8
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #24]
	ldursw	x8, [x29, #-24]
	lsl	x2, x8, #3
	mov	x3, #-1
	bl	___memmove_chk
	stur	wzr, [x29, #-16]
	b	LBB215_70
LBB215_70:                              ;   Parent Loop BB215_40 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB215_73
	b	LBB215_71
LBB215_71:                              ;   in Loop: Header=BB215_70 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-16]
	adrp	x8, _mpc_ast_delete@PAGE
	add	x8, x8, _mpc_ast_delete@PAGEOFF
	str	x8, [x9, x10, lsl #3]
	b	LBB215_72
LBB215_72:                              ;   in Loop: Header=BB215_70 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB215_70
LBB215_73:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #24]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #32]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_74:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_81
	b	LBB215_75
LBB215_75:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB215_81
	b	LBB215_76
LBB215_76:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #3
	cset	w8, ne
	tbnz	w8, #0, LBB215_81
	b	LBB215_77
LBB215_77:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	adrp	x9, _mpcf_ctor_str@PAGE
	add	x9, x9, _mpcf_ctor_str@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_81
	b	LBB215_78
LBB215_78:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_81
	b	LBB215_79
LBB215_79:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_strfold@PAGE
	add	x9, x9, _mpcf_strfold@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_81
	b	LBB215_80
LBB215_80:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x0, [x8]
	bl	_mpc_delete
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	bl	_free
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	_free
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	mov	x2, #56
	mov	x3, #-1
	bl	___memcpy_chk
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_81:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_91
	b	LBB215_82
LBB215_82:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_strfold@PAGE
	add	x9, x9, _mpcf_strfold@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_91
	b	LBB215_83
LBB215_83:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_91
	b	LBB215_84
LBB215_84:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_91
	b	LBB215_85
LBB215_85:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_strfold@PAGE
	add	x9, x9, _mpcf_strfold@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_91
	b	LBB215_86
LBB215_86:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x0, [x9, #24]
	ldur	x9, [x29, #-8]
	ldr	x0, [x9, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	subs	w9, w9, #1
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-24]
	add	x0, x8, x9, lsl #3
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	add	x1, x8, #8
	ldur	w8, [x29, #-20]
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	lsl	x2, x8, #3
	mov	x3, #-1
	str	x3, [sp, #16]                   ; 8-byte Folded Spill
	bl	___memmove_chk
	ldr	x3, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #24]
	ldursw	x8, [x29, #-24]
	lsl	x2, x8, #3
	bl	___memmove_chk
	stur	wzr, [x29, #-16]
	b	LBB215_87
LBB215_87:                              ;   Parent Loop BB215_40 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB215_90
	b	LBB215_88
LBB215_88:                              ;   in Loop: Header=BB215_87 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-16]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [x9, x10, lsl #3]
	b	LBB215_89
LBB215_89:                              ;   in Loop: Header=BB215_87 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB215_87
LBB215_90:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #24]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #32]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_91:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_101
	b	LBB215_92
LBB215_92:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_strfold@PAGE
	add	x9, x9, _mpcf_strfold@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_101
	b	LBB215_93
LBB215_93:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrsb	w8, [x8, #48]
	subs	w8, w8, #24
	cset	w8, ne
	tbnz	w8, #0, LBB215_101
	b	LBB215_94
LBB215_94:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrb	w8, [x8, #49]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB215_101
	b	LBB215_95
LBB215_95:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldr	x8, [x8, #16]
	adrp	x9, _mpcf_strfold@PAGE
	add	x9, x9, _mpcf_strfold@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB215_101
	b	LBB215_96
LBB215_96:                              ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	add	w8, w8, w9
	subs	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x0, [x9, #24]
	ldur	x9, [x29, #-8]
	ldr	x0, [x9, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	subs	w9, w9, #1
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9, lsl #3
	subs	x0, x8, #8
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #24]
	ldursw	x8, [x29, #-24]
	lsl	x2, x8, #3
	mov	x3, #-1
	bl	___memmove_chk
	stur	wzr, [x29, #-16]
	b	LBB215_97
LBB215_97:                              ;   Parent Loop BB215_40 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB215_100
	b	LBB215_98
LBB215_98:                              ;   in Loop: Header=BB215_97 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-16]
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	str	x8, [x9, x10, lsl #3]
	b	LBB215_99
LBB215_99:                              ;   in Loop: Header=BB215_97 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB215_97
LBB215_100:                             ;   in Loop: Header=BB215_40 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #24]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #32]
	bl	_free
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	_free
	ldur	x0, [x29, #-32]
	bl	_free
	b	LBB215_40
LBB215_101:
	b	LBB215_102
LBB215_102:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_malloc
_mpc_malloc:                            ; @mpc_malloc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #64
	cset	w8, ls
	tbnz	w8, #0, LBB216_2
	b	LBB216_1
LBB216_1:
	ldr	x0, [sp, #24]
	bl	_malloc
	stur	x0, [x29, #-8]
	b	LBB216_8
LBB216_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #112]
	str	x8, [sp, #16]
	b	LBB216_3
LBB216_3:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #120
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #112]
	add	x8, x8, x9
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB216_5
	b	LBB216_4
LBB216_4:
	ldur	x8, [x29, #-16]
	add	x8, x8, #632
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #112]
	add	x8, x8, x9, lsl #6
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	add	x8, x8, #120
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #112]
	add	x9, x8, x9
	mov	w8, #1
	strb	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #112]
	add	x8, x8, #1
	mov	x10, #512
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	ldur	x9, [x29, #-16]
	str	x8, [x9, #112]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB216_8
LBB216_5:                               ;   in Loop: Header=BB216_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #112]
	add	x8, x8, #1
	mov	x10, #512
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	ldur	x9, [x29, #-16]
	str	x8, [x9, #112]
	b	LBB216_6
LBB216_6:                               ;   in Loop: Header=BB216_3 Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #112]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB216_3
	b	LBB216_7
LBB216_7:
	ldr	x0, [sp, #24]
	bl	_malloc
	stur	x0, [x29, #-8]
	b	LBB216_8
LBB216_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_any
_mpc_input_any:                         ; @mpc_input_any
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
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB217_2
	b	LBB217_1
LBB217_1:
	stur	wzr, [x29, #-4]
	b	LBB217_3
LBB217_2:
	ldr	x0, [sp, #16]
	bl	_mpc_input_getc
	strb	w0, [sp, #7]
	ldr	x0, [sp, #16]
	ldrsb	w1, [sp, #7]
	ldr	x2, [sp, #8]
	bl	_mpc_input_success
	stur	w0, [x29, #-4]
	b	LBB217_3
LBB217_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_char
_mpc_input_char:                        ; @mpc_input_char
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	sturb	w1, [x29, #-17]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB218_2
	b	LBB218_1
LBB218_1:
	stur	wzr, [x29, #-4]
	b	LBB218_6
LBB218_2:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_getc
	strb	w0, [sp, #15]
	ldrsb	w8, [sp, #15]
	ldursb	w9, [x29, #-17]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB218_4
	b	LBB218_3
LBB218_3:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	ldr	x2, [sp, #16]
	bl	_mpc_input_success
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB218_5
LBB218_4:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	bl	_mpc_input_failure
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB218_5
LBB218_5:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	LBB218_6
LBB218_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_range
_mpc_input_range:                       ; @mpc_input_range
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	sturb	w1, [x29, #-17]
	sturb	w2, [x29, #-18]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB219_2
	b	LBB219_1
LBB219_1:
	stur	wzr, [x29, #-4]
	b	LBB219_7
LBB219_2:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_getc
	strb	w0, [sp, #15]
	ldrsb	w8, [sp, #15]
	ldursb	w9, [x29, #-17]
	subs	w8, w8, w9
	cset	w8, lt
	tbnz	w8, #0, LBB219_5
	b	LBB219_3
LBB219_3:
	ldrsb	w8, [sp, #15]
	ldursb	w9, [x29, #-18]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB219_5
	b	LBB219_4
LBB219_4:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	ldr	x2, [sp, #16]
	bl	_mpc_input_success
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB219_6
LBB219_5:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	bl	_mpc_input_failure
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB219_6
LBB219_6:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	LBB219_7
LBB219_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_oneof
_mpc_input_oneof:                       ; @mpc_input_oneof
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB220_2
	b	LBB220_1
LBB220_1:
	stur	wzr, [x29, #-4]
	b	LBB220_6
LBB220_2:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_getc
	strb	w0, [sp, #15]
	ldr	x0, [sp, #24]
	ldrsb	w1, [sp, #15]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB220_4
	b	LBB220_3
LBB220_3:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	ldr	x2, [sp, #16]
	bl	_mpc_input_success
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB220_5
LBB220_4:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	bl	_mpc_input_failure
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB220_5
LBB220_5:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	LBB220_6
LBB220_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_noneof
_mpc_input_noneof:                      ; @mpc_input_noneof
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB221_2
	b	LBB221_1
LBB221_1:
	stur	wzr, [x29, #-4]
	b	LBB221_6
LBB221_2:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_getc
	strb	w0, [sp, #15]
	ldr	x0, [sp, #24]
	ldrsb	w1, [sp, #15]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB221_4
	b	LBB221_3
LBB221_3:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	ldr	x2, [sp, #16]
	bl	_mpc_input_success
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB221_5
LBB221_4:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	bl	_mpc_input_failure
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB221_5
LBB221_5:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	LBB221_6
LBB221_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_satisfy
_mpc_input_satisfy:                     ; @mpc_input_satisfy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB222_2
	b	LBB222_1
LBB222_1:
	stur	wzr, [x29, #-4]
	b	LBB222_6
LBB222_2:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_getc
	strb	w0, [sp, #15]
	ldr	x8, [sp, #24]
	ldrsb	w0, [sp, #15]
	blr	x8
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB222_4
	b	LBB222_3
LBB222_3:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	ldr	x2, [sp, #16]
	bl	_mpc_input_success
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB222_5
LBB222_4:
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #15]
	bl	_mpc_input_failure
	str	w0, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB222_5
LBB222_5:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	LBB222_6
LBB222_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_string
_mpc_input_string:                      ; @mpc_input_string
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_mark
	b	LBB223_1
LBB223_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB223_5
	b	LBB223_2
LBB223_2:                               ;   in Loop: Header=BB223_1 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldrsb	w1, [x8]
	mov	x2, #0
	bl	_mpc_input_char
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB223_4
	b	LBB223_3
LBB223_3:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_rewind
	stur	wzr, [x29, #-4]
	b	LBB223_6
LBB223_4:                               ;   in Loop: Header=BB223_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB223_1
LBB223_5:
	ldur	x0, [x29, #-16]
	bl	_mpc_input_unmark
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldr	x8, [sp, #16]
	str	x0, [x8]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #24]
	mov	x2, #-1
	bl	___strcpy_chk
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB223_6
LBB223_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_anchor
_mpc_input_anchor:                      ; @mpc_input_anchor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldrsb	w8, [x8, #104]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	_mpc_input_peekc
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	sxtb	w1, w9
	blr	x8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_soi
_mpc_input_soi:                         ; @mpc_input_soi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x8, [sp, #8]
	ldrsb	w8, [x8, #104]
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_eoi
_mpc_input_eoi:                         ; @mpc_input_eoi
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
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #40]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB226_2
	b	LBB226_1
LBB226_1:
	stur	wzr, [x29, #-4]
	b	LBB226_5
LBB226_2:
	ldr	x0, [sp, #16]
	bl	_mpc_input_terminated
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB226_4
	b	LBB226_3
LBB226_3:
	ldr	x9, [sp, #16]
	mov	w8, #1
	str	w8, [x9, #40]
	stur	w8, [x29, #-4]
	b	LBB226_5
LBB226_4:
	stur	wzr, [x29, #-4]
	b	LBB226_5
LBB226_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_state_copy
_mpc_input_state_copy:                  ; @mpc_input_state_copy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	x1, #32
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	_mpc_malloc
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	add	x1, x8, #16
	mov	x3, #-1
	bl	___memcpy_chk
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_parse_apply
_mpc_parse_apply:                       ; @mpc_parse_apply
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_free@PAGE
	add	x9, x9, _mpcf_free@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB228_2
	b	LBB228_1
LBB228_1:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	_mpcf_input_free
	stur	x0, [x29, #-8]
	b	LBB228_5
LBB228_2:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_str_ast@PAGE
	add	x9, x9, _mpcf_str_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB228_4
	b	LBB228_3
LBB228_3:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	_mpcf_input_str_ast
	stur	x0, [x29, #-8]
	b	LBB228_5
LBB228_4:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	_mpc_export
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB228_5
LBB228_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_parse_apply_to
_mpc_parse_apply_to:                    ; @mpc_parse_apply_to
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	_mpc_export
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	blr	x8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_parse_dtor
_mpc_parse_dtor:                        ; @mpc_parse_dtor
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	adrp	x9, _free@GOTPAGE
	ldr	x9, [x9, _free@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB230_2
	b	LBB230_1
LBB230_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	_mpc_free
	b	LBB230_3
LBB230_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	_mpc_export
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	blr	x8
	b	LBB230_3
LBB230_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_suppress_enable
_mpc_input_suppress_enable:             ; @mpc_input_suppress_enable
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #72]
	add	w8, w8, #1
	str	w8, [x9, #72]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_suppress_disable
_mpc_input_suppress_disable:            ; @mpc_input_suppress_disable
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #72]
	subs	w8, w8, #1
	str	w8, [x9, #72]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_new
_mpc_err_new:                           ; @mpc_err_new
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #72]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB233_2
	b	LBB233_1
LBB233_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB233_3
LBB233_2:
	ldur	x0, [x29, #-16]
	mov	x1, #72
	bl	_mpc_malloc
	str	x0, [sp, #32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldr	x8, [sp, #32]
	str	x0, [x8, #40]
	ldr	x8, [sp, #32]
	ldr	x0, [x8, #40]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	mov	x2, #-1
	str	x2, [sp, #24]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	ldr	q0, [x9, #16]
	str	q0, [x8]
	ldr	q0, [x9, #32]
	str	q0, [x8, #16]
	ldr	x9, [sp, #32]
	mov	w8, #1
	str	w8, [x9, #32]
	ldur	x0, [x29, #-16]
	mov	x1, #8
	bl	_mpc_malloc
	ldr	x8, [sp, #32]
	str	x0, [x8, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #56]
	str	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #56]
	ldr	x0, [x8]
	ldur	x1, [x29, #-24]
	bl	___strcpy_chk
	ldr	x8, [sp, #32]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #48]
	ldur	x0, [x29, #-16]
	bl	_mpc_input_peekc
	ldr	x8, [sp, #32]
	strb	w0, [x8, #64]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB233_3
LBB233_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_backtrack_disable
_mpc_input_backtrack_disable:           ; @mpc_input_backtrack_disable
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #76]
	subs	w8, w8, #1
	str	w8, [x9, #76]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_backtrack_enable
_mpc_input_backtrack_enable:            ; @mpc_input_backtrack_enable
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #76]
	add	w8, w8, #1
	str	w8, [x9, #76]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_mark
_mpc_input_mark:                        ; @mpc_input_mark
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #76]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB236_2
	b	LBB236_1
LBB236_1:
	b	LBB236_7
LBB236_2:
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #84]
	add	w8, w8, #1
	str	w8, [x9, #84]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #84]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #80]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB236_4
	b	LBB236_3
LBB236_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #84]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #84]
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #80]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #88]
	ldr	x8, [sp, #8]
	ldrsw	x9, [x8, #80]
	mov	x8, #32
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #88]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #96]
	ldr	x8, [sp, #8]
	ldrsw	x9, [x8, #80]
	mov	x8, #1
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #96]
	b	LBB236_4
LBB236_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #88]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #84]
	subs	w10, w9, #1
                                        ; implicit-def: $x9
	mov	x9, x10
	sxtw	x9, w9
	add	x8, x8, x9, lsl #5
	ldr	x9, [sp, #8]
	ldr	q0, [x9, #16]
	str	q0, [x8]
	ldr	q0, [x9, #32]
	str	q0, [x8, #16]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #104]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #96]
	ldr	x10, [sp, #8]
	ldr	w10, [x10, #84]
	subs	w10, w10, #1
	add	x9, x9, w10, sxtw
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB236_7
	b	LBB236_5
LBB236_5:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #84]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB236_7
	b	LBB236_6
LBB236_6:
	mov	x1, #1
	mov	x0, x1
	bl	_calloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #56]
	b	LBB236_7
LBB236_7:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_rewind
_mpc_input_rewind:                      ; @mpc_input_rewind
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #76]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB237_2
	b	LBB237_1
LBB237_1:
	b	LBB237_5
LBB237_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #88]
	ldr	x10, [sp, #8]
	ldr	w10, [x10, #84]
	subs	w11, w10, #1
                                        ; implicit-def: $x10
	mov	x10, x11
	sxtw	x10, w10
	add	x9, x9, x10, lsl #5
	ldr	q0, [x9]
	str	q0, [x8, #16]
	ldr	q0, [x9, #16]
	str	q0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #96]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #84]
	subs	w9, w9, #1
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #104]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB237_4
	b	LBB237_3
LBB237_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #64]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #16]
	mov	w2, #0
	bl	_fseek
	b	LBB237_4
LBB237_4:
	ldr	x0, [sp, #8]
	bl	_mpc_input_unmark
	b	LBB237_5
LBB237_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_unmark
_mpc_input_unmark:                      ; @mpc_input_unmark
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #76]
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB238_2
	b	LBB238_1
LBB238_1:
	b	LBB238_15
LBB238_2:
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #84]
	subs	w8, w8, #1
	str	w8, [x9, #84]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #80]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #84]
	ldr	x10, [sp, #8]
	ldr	w10, [x10, #84]
	mov	w11, #2
	sdiv	w10, w10, w11
	add	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB238_8
	b	LBB238_3
LBB238_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #80]
	subs	w8, w8, #32
	cset	w8, le
	tbnz	w8, #0, LBB238_8
	b	LBB238_4
LBB238_4:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #84]
	subs	w8, w8, #32
	cset	w8, le
	tbnz	w8, #0, LBB238_6
	b	LBB238_5
LBB238_5:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #84]
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB238_7
LBB238_6:
	mov	w8, #32
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB238_7
LBB238_7:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	ldr	x9, [sp, #8]
	str	w8, [x9, #80]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #88]
	ldr	x8, [sp, #8]
	ldrsw	x9, [x8, #80]
	mov	x8, #32
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #88]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #96]
	ldr	x8, [sp, #8]
	ldrsw	x9, [x8, #80]
	mov	x8, #1
	mul	x1, x8, x9
	bl	_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #96]
	b	LBB238_8
LBB238_8:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB238_15
	b	LBB238_9
LBB238_9:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #84]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB238_15
	b	LBB238_10
LBB238_10:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_strlen
	subs	x8, x0, #1
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	b	LBB238_11
LBB238_11:                              ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB238_14
	b	LBB238_12
LBB238_12:                              ;   in Loop: Header=BB238_11 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #4]
	ldrsb	w0, [x8, x9]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #64]
	bl	_ungetc
	b	LBB238_13
LBB238_13:                              ;   in Loop: Header=BB238_11 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB238_11
LBB238_14:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_free
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	b	LBB238_15
LBB238_15:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_grow_results
_mpc_grow_results:                      ; @mpc_grow_results
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #4
	cset	w8, ne
	tbnz	w8, #0, LBB239_2
	b	LBB239_1
LBB239_1:
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-12]
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #4]
	ldur	x0, [x29, #-8]
	ldrsw	x9, [sp, #4]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_mpc_malloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	mov	x2, #32
	mov	x3, #-1
	bl	___memcpy_chk
	b	LBB239_5
LBB239_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #4
	cset	w8, lt
	tbnz	w8, #0, LBB239_4
	b	LBB239_3
LBB239_3:
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-12]
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldrsw	x9, [sp]
	mov	x8, #8
	mul	x2, x8, x9
	bl	_mpc_realloc
	str	x0, [sp, #8]
	b	LBB239_4
LBB239_4:
	b	LBB239_5
LBB239_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_parse_fold
_mpc_parse_fold:                        ; @mpc_parse_fold
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	str	x3, [sp, #8]
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_null@PAGE
	add	x9, x9, _mpcf_null@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_2
	b	LBB240_1
LBB240_1:
	ldr	w0, [sp, #20]
	ldr	x1, [sp, #8]
	bl	_mpcf_null
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_2:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_fst@PAGE
	add	x9, x9, _mpcf_fst@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_4
	b	LBB240_3
LBB240_3:
	ldr	w0, [sp, #20]
	ldr	x1, [sp, #8]
	bl	_mpcf_fst
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_4:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_snd@PAGE
	add	x9, x9, _mpcf_snd@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_6
	b	LBB240_5
LBB240_5:
	ldr	w0, [sp, #20]
	ldr	x1, [sp, #8]
	bl	_mpcf_snd
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_6:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_trd@PAGE
	add	x9, x9, _mpcf_trd@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_8
	b	LBB240_7
LBB240_7:
	ldr	w0, [sp, #20]
	ldr	x1, [sp, #8]
	bl	_mpcf_trd
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_8:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_fst_free@PAGE
	add	x9, x9, _mpcf_fst_free@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_10
	b	LBB240_9
LBB240_9:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #20]
	ldr	x2, [sp, #8]
	bl	_mpcf_input_fst_free
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_10:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_snd_free@PAGE
	add	x9, x9, _mpcf_snd_free@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_12
	b	LBB240_11
LBB240_11:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #20]
	ldr	x2, [sp, #8]
	bl	_mpcf_input_snd_free
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_12:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_trd_free@PAGE
	add	x9, x9, _mpcf_trd_free@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_14
	b	LBB240_13
LBB240_13:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #20]
	ldr	x2, [sp, #8]
	bl	_mpcf_input_trd_free
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_14:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_strfold@PAGE
	add	x9, x9, _mpcf_strfold@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_16
	b	LBB240_15
LBB240_15:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #20]
	ldr	x2, [sp, #8]
	bl	_mpcf_input_strfold
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_16:
	ldr	x8, [sp, #24]
	adrp	x9, _mpcf_state_ast@PAGE
	add	x9, x9, _mpcf_state_ast@PAGEOFF
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB240_18
	b	LBB240_17
LBB240_17:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #20]
	ldr	x2, [sp, #8]
	bl	_mpcf_input_state_ast
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_18:
	str	wzr, [sp, #4]
	b	LBB240_19
LBB240_19:                              ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB240_22
	b	LBB240_20
LBB240_20:                              ;   in Loop: Header=BB240_19 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_export
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	str	x0, [x8, x9, lsl #3]
	b	LBB240_21
LBB240_21:                              ;   in Loop: Header=BB240_19 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB240_19
LBB240_22:
	ldr	x8, [sp, #24]
	ldr	w0, [sp, #4]
	ldr	x1, [sp, #8]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB240_23
LBB240_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_free
_mpc_free:                              ; @mpc_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_mpc_mem_ptr
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB241_2
	b	LBB241_1
LBB241_1:
	ldr	x0, [sp, #16]
	bl	_free
	b	LBB241_3
LBB241_2:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	add	x9, x9, #632
	subs	x8, x8, x9
	mov	x9, #64
	udiv	x8, x8, x9
	str	x8, [sp, #8]
	ldur	x8, [x29, #-8]
	add	x8, x8, #120
	ldr	x9, [sp, #8]
	add	x8, x8, x9
	strb	wzr, [x8]
	b	LBB241_3
LBB241_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_many1
_mpc_err_many1:                         ; @mpc_err_many1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x2, l_.str.105@PAGE
	add	x2, x2, l_.str.105@PAGEOFF
	bl	_mpc_err_repeat
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_count
_mpc_err_count:                         ; @mpc_err_count
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	w8, [x29, #-28]
	mov	w9, #10
	sdiv	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #20]
	ldur	x0, [x29, #-16]
	ldrsw	x8, [sp, #20]
	add	x8, x8, #4
	add	x1, x8, #1
	bl	_mpc_malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB243_2
	b	LBB243_1
LBB243_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB243_3
LBB243_2:
	ldr	x0, [sp, #8]
	ldur	w9, [x29, #-28]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	mov	w1, #0
	mov	x2, #-1
	adrp	x3, l_.str.108@PAGE
	add	x3, x3, l_.str.108@PAGEOFF
	bl	___sprintf_chk
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #8]
	bl	_mpc_err_repeat
	str	x0, [sp, #24]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	bl	_mpc_free
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB243_3
LBB243_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_terminated
_mpc_input_terminated:                  ; @mpc_input_terminated
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_mpc_input_peekc
	sxtb	w8, w0
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_getc
_mpc_input_getc:                        ; @mpc_input_getc
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
	strb	wzr, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB245_3
	b	LBB245_1
LBB245_1:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB245_4
	b	LBB245_2
LBB245_2:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB245_5
	b	LBB245_11
LBB245_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #48]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	sturb	w8, [x29, #-1]
	b	LBB245_12
LBB245_4:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_fgetc
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB245_12
LBB245_5:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB245_7
	b	LBB245_6
LBB245_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_getc
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB245_12
LBB245_7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB245_10
	b	LBB245_8
LBB245_8:
	ldr	x0, [sp, #16]
	bl	_mpc_input_buffer_in_range
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB245_10
	b	LBB245_9
LBB245_9:
	ldr	x0, [sp, #16]
	bl	_mpc_input_buffer_get
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB245_12
LBB245_10:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_getc
	strb	w0, [sp, #15]
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB245_12
LBB245_11:
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB245_12
LBB245_12:
	ldursb	w0, [x29, #-1]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_success
_mpc_input_success:                     ; @mpc_input_success
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB246_4
	b	LBB246_1
LBB246_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB246_4
	b	LBB246_2
LBB246_2:
	ldur	x0, [x29, #-8]
	bl	_mpc_input_buffer_in_range
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB246_4
	b	LBB246_3
LBB246_3:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #56]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #2
	bl	_realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #56]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #56]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #56]
	bl	_strlen
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x9, x0, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldurb	w8, [x29, #-9]
	stur	w8, [x29, #-28]                 ; 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #56]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #56]
	bl	_strlen
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldur	w8, [x29, #-28]                 ; 4-byte Folded Reload
	add	x10, x0, #0
	add	x9, x9, x10
	strb	w8, [x9]
	b	LBB246_4
LBB246_4:
	ldurb	w8, [x29, #-9]
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #104]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #16]
	add	x8, x8, #1
	str	x8, [x9, #16]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #32]
	add	x8, x8, #1
	str	x8, [x9, #32]
	ldursb	w8, [x29, #-9]
	subs	w8, w8, #10
	cset	w8, ne
	tbnz	w8, #0, LBB246_6
	b	LBB246_5
LBB246_5:
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #24]
	add	x8, x8, #1
	str	x8, [x9, #24]
	b	LBB246_6
LBB246_6:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB246_8
	b	LBB246_7
LBB246_7:
	ldur	x0, [x29, #-8]
	mov	x1, #2
	bl	_mpc_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	ldurb	w8, [x29, #-9]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	strb	w8, [x9]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	strb	wzr, [x8, #1]
	b	LBB246_8
LBB246_8:
	mov	w0, #1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_peekc
_mpc_input_peekc:                       ; @mpc_input_peekc
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
	strb	wzr, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB247_3
	b	LBB247_1
LBB247_1:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB247_4
	b	LBB247_2
LBB247_2:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB247_7
	b	LBB247_17
LBB247_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #48]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	sturb	w8, [x29, #-1]
	b	LBB247_18
LBB247_4:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_fgetc
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_feof
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB247_6
	b	LBB247_5
LBB247_5:
	sturb	wzr, [x29, #-1]
	b	LBB247_18
LBB247_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	mov	x1, #-1
	mov	w2, #1
	bl	_fseek
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB247_18
LBB247_7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB247_11
	b	LBB247_8
LBB247_8:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_getc
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_feof
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB247_10
	b	LBB247_9
LBB247_9:
	sturb	wzr, [x29, #-1]
	b	LBB247_18
LBB247_10:
	ldrsb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #64]
	bl	_ungetc
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB247_18
LBB247_11:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB247_14
	b	LBB247_12
LBB247_12:
	ldr	x0, [sp, #16]
	bl	_mpc_input_buffer_in_range
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB247_14
	b	LBB247_13
LBB247_13:
	ldr	x0, [sp, #16]
	bl	_mpc_input_buffer_get
	sturb	w0, [x29, #-1]
	b	LBB247_18
LBB247_14:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_getc
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #64]
	bl	_feof
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB247_16
	b	LBB247_15
LBB247_15:
	sturb	wzr, [x29, #-1]
	b	LBB247_18
LBB247_16:
	ldrsb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #64]
	bl	_ungetc
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB247_18
LBB247_17:
	ldrb	w8, [sp, #15]
	sturb	w8, [x29, #-1]
	b	LBB247_18
LBB247_18:
	ldursb	w0, [x29, #-1]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_buffer_in_range
_mpc_input_buffer_in_range:             ; @mpc_input_buffer_in_range
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	_strlen
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #88]
	ldr	x9, [x9]
	add	x9, x0, x9
	subs	x8, x8, x9
	cset	w8, lt
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_buffer_get
_mpc_input_buffer_get:                  ; @mpc_input_buffer_get
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	ldr	x10, [sp, #8]
	ldr	x10, [x10, #88]
	ldr	x10, [x10]
	subs	x9, x9, x10
	ldrsb	w0, [x8, x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_input_failure
_mpc_input_failure:                     ; @mpc_input_failure
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp]                        ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB250_3
	b	LBB250_1
LBB250_1:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB250_4
	b	LBB250_2
LBB250_2:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB250_5
	b	LBB250_12
LBB250_3:
	b	LBB250_13
LBB250_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #64]
	mov	x1, #-1
	mov	w2, #1
	bl	_fseek
	b	LBB250_13
LBB250_5:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB250_7
	b	LBB250_6
LBB250_6:
	ldrsb	w0, [sp, #7]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #64]
	bl	_ungetc
	b	LBB250_13
LBB250_7:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB250_10
	b	LBB250_8
LBB250_8:
	ldr	x0, [sp, #8]
	bl	_mpc_input_buffer_in_range
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB250_10
	b	LBB250_9
LBB250_9:
	b	LBB250_13
LBB250_10:
	ldrsb	w0, [sp, #7]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #64]
	bl	_ungetc
	b	LBB250_11
LBB250_11:
	b	LBB250_12
LBB250_12:
	b	LBB250_13
LBB250_13:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_free
_mpcf_input_free:                       ; @mpcf_input_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	_mpc_free
	mov	x0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_str_ast
_mpcf_input_str_ast:                    ; @mpcf_input_str_ast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x1, [sp, #16]
	adrp	x0, l_.str.78@PAGE
	add	x0, x0, l_.str.78@PAGEOFF
	bl	_mpc_ast_new
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_mpc_free
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_realloc
_mpc_realloc:                           ; @mpc_realloc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_mpc_mem_ptr
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB253_2
	b	LBB253_1
LBB253_1:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	_realloc
	stur	x0, [x29, #-8]
	b	LBB253_5
LBB253_2:
	ldr	x8, [sp, #16]
	subs	x8, x8, #64
	cset	w8, ls
	tbnz	w8, #0, LBB253_4
	b	LBB253_3
LBB253_3:
	ldr	x0, [sp, #16]
	bl	_malloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	mov	x2, #64
	mov	x3, #-1
	bl	___memcpy_chk
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	_mpc_free
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB253_5
LBB253_4:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB253_5
LBB253_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_mem_ptr
_mpc_mem_ptr:                           ; @mpc_mem_ptr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	add	x9, x9, #632
	subs	x8, x8, x9
	cset	w8, lo
	mov	w9, #0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB254_2
	b	LBB254_1
LBB254_1:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	mov	x10, #33400
	add	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lo
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB254_2
LBB254_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_fst_free
_mpcf_input_fst_free:                   ; @mpcf_input_fst_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #8]
	mov	w3, #0
	bl	_mpcf_input_nth_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_snd_free
_mpcf_input_snd_free:                   ; @mpcf_input_snd_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #8]
	mov	w3, #1
	bl	_mpcf_input_nth_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_trd_free
_mpcf_input_trd_free:                   ; @mpcf_input_trd_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #8]
	mov	w3, #2
	bl	_mpcf_input_nth_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_strfold
_mpcf_input_strfold:                    ; @mpcf_input_strfold
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	str	xzr, [sp]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB258_2
	b	LBB258_1
LBB258_1:
	ldur	x0, [x29, #-16]
	mov	x2, #1
	mov	x1, x2
	bl	_mpc_calloc
	stur	x0, [x29, #-8]
	b	LBB258_11
LBB258_2:
	str	wzr, [sp, #12]
	b	LBB258_3
LBB258_3:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB258_6
	b	LBB258_4
LBB258_4:                               ;   in Loop: Header=BB258_3 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	bl	_strlen
	ldr	x8, [sp]
	add	x8, x8, x0
	str	x8, [sp]
	b	LBB258_5
LBB258_5:                               ;   in Loop: Header=BB258_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB258_3
LBB258_6:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldr	x8, [sp]
	add	x2, x8, #1
	bl	_mpc_realloc
	ldr	x8, [sp, #16]
	str	x0, [x8]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB258_7
LBB258_7:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB258_10
	b	LBB258_8
LBB258_8:                               ;   in Loop: Header=BB258_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x1, [x8, x9, lsl #3]
	mov	x2, #-1
	bl	___strcat_chk
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_free
	b	LBB258_9
LBB258_9:                               ;   in Loop: Header=BB258_7 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB258_7
LBB258_10:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB258_11
LBB258_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_state_ast
_mpcf_input_state_ast:                  ; @mpcf_input_state_ast
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #40]
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-32]
	ldr	q0, [x8]
	mov	x1, sp
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	bl	_mpc_ast_state
	str	x0, [sp, #40]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	bl	_mpc_free
	ldr	x0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpcf_input_nth_free
_mpcf_input_nth_free:                   ; @mpcf_input_nth_free
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	str	wzr, [sp]
	b	LBB260_1
LBB260_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB260_6
	b	LBB260_2
LBB260_2:                               ;   in Loop: Header=BB260_1 Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB260_4
	b	LBB260_3
LBB260_3:                               ;   in Loop: Header=BB260_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_free
	b	LBB260_4
LBB260_4:                               ;   in Loop: Header=BB260_1 Depth=1
	b	LBB260_5
LBB260_5:                               ;   in Loop: Header=BB260_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB260_1
LBB260_6:
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_calloc
_mpc_calloc:                            ; @mpc_calloc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	mul	x1, x8, x9
	bl	_mpc_malloc
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	mul	x2, x8, x9
	mov	w1, #0
	mov	x3, #-1
	bl	___memset_chk
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_repeat
_mpc_err_repeat:                        ; @mpc_err_repeat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	wzr, [x29, #-36]
	str	xzr, [sp, #48]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB262_2
	b	LBB262_1
LBB262_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB262_23
LBB262_2:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB262_4
	b	LBB262_3
LBB262_3:
	ldur	x0, [x29, #-16]
	mov	x2, #1
	mov	x1, x2
	bl	_mpc_calloc
	str	x0, [sp, #40]
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9, #32]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #56]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #32]
	mov	x8, #8
	mul	x2, x8, x9
	bl	_mpc_realloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #56]
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #56]
	str	x8, [x9]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB262_23
LBB262_4:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #32]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB262_6
	b	LBB262_5
LBB262_5:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_strlen
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldr	x0, [x8]
	bl	_strlen
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x8, x9
	add	x1, x8, #1
	bl	_mpc_malloc
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-32]
	mov	x2, #-1
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	bl	___strcpy_chk
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldr	x1, [x8]
	bl	___strcat_chk
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldr	x1, [x8]
	bl	_mpc_free
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #56]
	str	x8, [x9]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB262_23
LBB262_6:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #32]
	subs	w8, w8, #1
	cset	w8, le
	tbnz	w8, #0, LBB262_20
	b	LBB262_7
LBB262_7:
	ldur	x0, [x29, #-32]
	bl	_strlen
	ldr	x8, [sp, #48]
	add	x8, x8, x0
	str	x8, [sp, #48]
	stur	wzr, [x29, #-36]
	b	LBB262_8
LBB262_8:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w9, w9, #2
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB262_11
	b	LBB262_9
LBB262_9:                               ;   in Loop: Header=BB262_8 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-36]
	ldr	x0, [x8, x9, lsl #3]
	bl	_strlen
	add	x9, x0, #2
	ldr	x8, [sp, #48]
	add	x8, x8, x9
	str	x8, [sp, #48]
	b	LBB262_10
LBB262_10:                              ;   in Loop: Header=BB262_8 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	LBB262_8
LBB262_11:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w9, w9, #2
	ldr	x0, [x8, w9, sxtw #3]
	bl	_strlen
	ldr	x8, [sp, #48]
	add	x8, x8, x0
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	add	x8, x8, #4
	str	x8, [sp, #48]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	_strlen
	ldr	x8, [sp, #48]
	add	x8, x8, x0
	str	x8, [sp, #48]
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #48]
	add	x1, x8, #1
	bl	_mpc_malloc
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-32]
	mov	x2, #-1
	bl	___strcpy_chk
	stur	wzr, [x29, #-36]
	b	LBB262_12
LBB262_12:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w9, w9, #2
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB262_15
	b	LBB262_13
LBB262_13:                              ;   in Loop: Header=BB262_12 Depth=1
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-36]
	ldr	x1, [x8, x9, lsl #3]
	mov	x2, #-1
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	___strcat_chk
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #40]
	adrp	x1, l_.str.106@PAGE
	add	x1, x1, l_.str.106@PAGEOFF
	bl	___strcat_chk
	b	LBB262_14
LBB262_14:                              ;   in Loop: Header=BB262_12 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	LBB262_12
LBB262_15:
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w9, w9, #2
	ldr	x1, [x8, w9, sxtw #3]
	mov	x2, #-1
	str	x2, [sp]                        ; 8-byte Folded Spill
	bl	___strcat_chk
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [sp, #40]
	adrp	x1, l_.str.107@PAGE
	add	x1, x1, l_.str.107@PAGEOFF
	bl	___strcat_chk
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w9, w9, #1
	ldr	x1, [x8, w9, sxtw #3]
	bl	___strcat_chk
	stur	wzr, [x29, #-36]
	b	LBB262_16
LBB262_16:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB262_19
	b	LBB262_17
LBB262_17:                              ;   in Loop: Header=BB262_16 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-36]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_free
	b	LBB262_18
LBB262_18:                              ;   in Loop: Header=BB262_16 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	LBB262_16
LBB262_19:
	ldur	x9, [x29, #-24]
	mov	w8, #1
	str	w8, [x9, #32]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #56]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #32]
	mov	x8, #8
	mul	x2, x8, x9
	bl	_mpc_realloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #56]
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #56]
	str	x8, [x9]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB262_23
LBB262_20:
	b	LBB262_21
LBB262_21:
	b	LBB262_22
LBB262_22:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB262_23
LBB262_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_or
_mpc_err_or:                            ; @mpc_err_or
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	mov	w8, #-1
	stur	w8, [x29, #-40]
	stur	wzr, [x29, #-32]
	b	LBB263_1
LBB263_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB263_6
	b	LBB263_2
LBB263_2:                               ;   in Loop: Header=BB263_1 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB263_4
	b	LBB263_3
LBB263_3:                               ;   in Loop: Header=BB263_1 Depth=1
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-40]
	b	LBB263_4
LBB263_4:                               ;   in Loop: Header=BB263_1 Depth=1
	b	LBB263_5
LBB263_5:                               ;   in Loop: Header=BB263_1 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	LBB263_1
LBB263_6:
	ldur	w8, [x29, #-40]
	adds	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB263_8
	b	LBB263_7
LBB263_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB263_39
LBB263_8:
	ldur	x0, [x29, #-16]
	mov	x1, #72
	bl	_mpc_malloc
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x8, sp, #32
	bl	_mpc_state_invalid
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	q0, [sp, #32]
	str	q0, [x8]
	ldr	q0, [sp, #48]
	str	q0, [x8, #16]
	ldur	x8, [x29, #-48]
	str	wzr, [x8, #32]
	ldur	x8, [x29, #-48]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldur	x8, [x29, #-48]
	str	xzr, [x8, #48]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-40]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x0, [x8, #40]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldur	x8, [x29, #-48]
	str	x0, [x8, #40]
	ldur	x8, [x29, #-48]
	ldr	x0, [x8, #40]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-40]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x1, [x8, #40]
	mov	x2, #-1
	bl	___strcpy_chk
	stur	wzr, [x29, #-32]
	b	LBB263_9
LBB263_9:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB263_16
	b	LBB263_10
LBB263_10:                              ;   in Loop: Header=BB263_9 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB263_12
	b	LBB263_11
LBB263_11:                              ;   in Loop: Header=BB263_9 Depth=1
	b	LBB263_15
LBB263_12:                              ;   in Loop: Header=BB263_9 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8]
	ldur	x9, [x29, #-48]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB263_14
	b	LBB263_13
LBB263_13:                              ;   in Loop: Header=BB263_9 Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-32]
	ldr	x9, [x9, x10, lsl #3]
	ldr	q0, [x9]
	str	q0, [x8]
	ldr	q0, [x9, #16]
	str	q0, [x8, #16]
	b	LBB263_14
LBB263_14:                              ;   in Loop: Header=BB263_9 Depth=1
	b	LBB263_15
LBB263_15:                              ;   in Loop: Header=BB263_9 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	LBB263_9
LBB263_16:
	stur	wzr, [x29, #-32]
	b	LBB263_17
LBB263_17:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB263_25 Depth 2
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB263_32
	b	LBB263_18
LBB263_18:                              ;   in Loop: Header=BB263_17 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB263_20
	b	LBB263_19
LBB263_19:                              ;   in Loop: Header=BB263_17 Depth=1
	b	LBB263_31
LBB263_20:                              ;   in Loop: Header=BB263_17 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8]
	ldur	x9, [x29, #-48]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB263_22
	b	LBB263_21
LBB263_21:                              ;   in Loop: Header=BB263_17 Depth=1
	b	LBB263_31
LBB263_22:                              ;   in Loop: Header=BB263_17 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8, #48]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB263_24
	b	LBB263_23
LBB263_23:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x0, [x8, #48]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldur	x8, [x29, #-48]
	str	x0, [x8, #48]
	ldur	x8, [x29, #-48]
	ldr	x0, [x8, #48]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x1, [x8, #48]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB263_32
LBB263_24:                              ;   in Loop: Header=BB263_17 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldrb	w8, [x8, #64]
	ldur	x9, [x29, #-48]
	strb	w8, [x9, #64]
	stur	wzr, [x29, #-36]
	b	LBB263_25
LBB263_25:                              ;   Parent Loop BB263_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-32]
	ldr	x9, [x9, x10, lsl #3]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB263_30
	b	LBB263_26
LBB263_26:                              ;   in Loop: Header=BB263_25 Depth=2
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-48]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-36]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_err_contains_expected
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB263_28
	b	LBB263_27
LBB263_27:                              ;   in Loop: Header=BB263_25 Depth=2
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-48]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-36]
	ldr	x2, [x8, x9, lsl #3]
	bl	_mpc_err_add_expected
	b	LBB263_28
LBB263_28:                              ;   in Loop: Header=BB263_25 Depth=2
	b	LBB263_29
LBB263_29:                              ;   in Loop: Header=BB263_25 Depth=2
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	LBB263_25
LBB263_30:                              ;   in Loop: Header=BB263_17 Depth=1
	b	LBB263_31
LBB263_31:                              ;   in Loop: Header=BB263_17 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	LBB263_17
LBB263_32:
	stur	wzr, [x29, #-32]
	b	LBB263_33
LBB263_33:                              ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB263_38
	b	LBB263_34
LBB263_34:                              ;   in Loop: Header=BB263_33 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB263_36
	b	LBB263_35
LBB263_35:                              ;   in Loop: Header=BB263_33 Depth=1
	b	LBB263_37
LBB263_36:                              ;   in Loop: Header=BB263_33 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-32]
	ldr	x1, [x8, x9, lsl #3]
	bl	_mpc_err_delete_internal
	b	LBB263_37
LBB263_37:                              ;   in Loop: Header=BB263_33 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	LBB263_33
LBB263_38:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB263_39
LBB263_39:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_contains_expected
_mpc_err_contains_expected:             ; @mpc_err_contains_expected
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB264_1
LBB264_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB264_6
	b	LBB264_2
LBB264_2:                               ;   in Loop: Header=BB264_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB264_4
	b	LBB264_3
LBB264_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB264_7
LBB264_4:                               ;   in Loop: Header=BB264_1 Depth=1
	b	LBB264_5
LBB264_5:                               ;   in Loop: Header=BB264_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB264_1
LBB264_6:
	stur	wzr, [x29, #-4]
	b	LBB264_7
LBB264_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_err_add_expected
_mpc_err_add_expected:                  ; @mpc_err_add_expected
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	w8, [x9, #32]
	add	w8, w8, #1
	str	w8, [x9, #32]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #56]
	ldr	x8, [sp, #16]
	ldrsw	x9, [x8, #32]
	mov	x8, #8
	mul	x2, x8, x9
	bl	_mpc_realloc
	ldr	x8, [sp, #16]
	str	x0, [x8, #56]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	_strlen
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	_mpc_malloc
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #32]
	subs	w9, w9, #1
	str	x0, [x8, w9, sxtw #3]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #32]
	subs	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	ldr	x1, [sp, #8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_undefine_or
_mpc_undefine_or:                       ; @mpc_undefine_or
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB266_1
LBB266_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB266_4
	b	LBB266_2
LBB266_2:                               ;   in Loop: Header=BB266_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB266_3
LBB266_3:                               ;   in Loop: Header=BB266_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB266_1
LBB266_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_undefine_and
_mpc_undefine_and:                      ; @mpc_undefine_and
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB267_1
LBB267_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB267_4
	b	LBB267_2
LBB267_2:                               ;   in Loop: Header=BB267_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #0
	bl	_mpc_undefine_unretained
	b	LBB267_3
LBB267_3:                               ;   in Loop: Header=BB267_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB267_1
LBB267_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	bl	_free
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_re_escape_char
_mpc_re_escape_char:                    ; @mpc_re_escape_char
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _free@GOTPAGE
	ldr	x8, [x8, _free@GOTPAGEOFF]
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	sturb	w0, [x29, #-9]
	ldursb	w8, [x29, #-9]
	subs	w8, w8, #65
                                        ; kill: def $x8 killed $w8
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	subs	x8, x8, #54
	cset	w8, hi
	tbnz	w8, #0, LBB268_18
; %bb.1:
	ldur	x11, [x29, #-24]                ; 8-byte Folded Reload
	adrp	x10, lJTI268_0@PAGE
	add	x10, x10, lJTI268_0@PAGEOFF
Ltmp20:
	adr	x8, Ltmp20
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB268_2:
	mov	w0, #7
	bl	_mpc_char
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_3:
	mov	w0, #12
	bl	_mpc_char
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_4:
	mov	w0, #10
	bl	_mpc_char
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_5:
	mov	w0, #13
	bl	_mpc_char
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_6:
	mov	w0, #9
	bl	_mpc_char
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_7:
	mov	w0, #11
	bl	_mpc_char
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_8:
	bl	_mpc_boundary
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_9:
	bl	_mpc_boundary
	ldur	x1, [x29, #-32]                 ; 8-byte Folded Reload
	adrp	x2, _mpcf_ctor_str@PAGE
	add	x2, x2, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_not_lift
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_10:
	bl	_mpc_soi
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_11:
	bl	_mpc_eoi
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x0, _mpcf_ctor_str@PAGE
	add	x0, x0, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_lift
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, sp
	str	x10, [x9]
	str	x0, [x9, #8]
	str	x8, [x9, #16]
	mov	w0, #2
	adrp	x1, _mpcf_snd@PAGE
	add	x1, x1, _mpcf_snd@PAGEOFF
	bl	_mpc_and
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_12:
	bl	_mpc_digit
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_13:
	bl	_mpc_digit
	ldur	x1, [x29, #-32]                 ; 8-byte Folded Reload
	adrp	x2, _mpcf_ctor_str@PAGE
	add	x2, x2, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_not_lift
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_14:
	bl	_mpc_whitespace
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_15:
	bl	_mpc_whitespace
	ldur	x1, [x29, #-32]                 ; 8-byte Folded Reload
	adrp	x2, _mpcf_ctor_str@PAGE
	add	x2, x2, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_not_lift
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_16:
	bl	_mpc_alphanum
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_17:
	bl	_mpc_alphanum
	ldur	x1, [x29, #-32]                 ; 8-byte Folded Reload
	adrp	x2, _mpcf_ctor_str@PAGE
	add	x2, x2, _mpcf_ctor_str@PAGEOFF
	bl	_mpc_not_lift
	stur	x0, [x29, #-8]
	b	LBB268_19
LBB268_18:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB268_19
LBB268_19:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
	.p2align	2
lJTI268_0:
	.long	LBB268_10-Ltmp20
	.long	LBB268_9-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_13-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_15-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_17-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_11-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_2-Ltmp20
	.long	LBB268_8-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_12-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_3-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_4-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_5-Ltmp20
	.long	LBB268_14-Ltmp20
	.long	LBB268_6-Ltmp20
	.long	LBB268_18-Ltmp20
	.long	LBB268_7-Ltmp20
	.long	LBB268_16-Ltmp20
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpc_re_range_escape_char
_mpc_re_range_escape_char:              ; @mpc_re_range_escape_char
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strb	w0, [sp, #23]
	ldrsb	w8, [sp, #23]
	subs	w8, w8, #45
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #74
	cset	w8, hi
	tbnz	w8, #0, LBB269_13
; %bb.1:
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI269_0@PAGE
	add	x10, x10, lJTI269_0@PAGEOFF
Ltmp22:
	adr	x8, Ltmp22
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB269_2:
	adrp	x8, l_.str.112@PAGE
	add	x8, x8, l_.str.112@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_3:
	adrp	x8, l_.str.113@PAGE
	add	x8, x8, l_.str.113@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_4:
	adrp	x8, l_.str.114@PAGE
	add	x8, x8, l_.str.114@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_5:
	adrp	x8, l_.str.7@PAGE
	add	x8, x8, l_.str.7@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_6:
	adrp	x8, l_.str.115@PAGE
	add	x8, x8, l_.str.115@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_7:
	adrp	x8, l_.str.116@PAGE
	add	x8, x8, l_.str.116@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_8:
	adrp	x8, l_.str.117@PAGE
	add	x8, x8, l_.str.117@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_9:
	adrp	x8, l_.str.118@PAGE
	add	x8, x8, l_.str.118@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_10:
	adrp	x8, l_.str.29@PAGE
	add	x8, x8, l_.str.29@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_11:
	adrp	x8, l_.str.24@PAGE
	add	x8, x8, l_.str.24@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_12:
	adrp	x8, l_.str.109@PAGE
	add	x8, x8, l_.str.109@PAGEOFF
	str	x8, [sp, #24]
	b	LBB269_14
LBB269_13:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB269_14
LBB269_14:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
	.p2align	2
lJTI269_0:
	.long	LBB269_2-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_3-Ltmp22
	.long	LBB269_9-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_10-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_4-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_5-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_6-Ltmp22
	.long	LBB269_11-Ltmp22
	.long	LBB269_7-Ltmp22
	.long	LBB269_13-Ltmp22
	.long	LBB269_8-Ltmp22
	.long	LBB269_12-Ltmp22
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpca_grammar_find_parser
_mpca_grammar_find_parser:              ; @mpca_grammar_find_parser
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	_is_number
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB270_7
	b	LBB270_1
LBB270_1:
	ldur	x0, [x29, #-16]
	mov	x1, #0
	mov	w2, #10
	bl	_strtol
	mov	x8, x0
	stur	w8, [x29, #-28]
	b	LBB270_2
LBB270_2:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB270_6
	b	LBB270_3
LBB270_3:                               ;   in Loop: Header=BB270_2 Depth=1
	ldur	x9, [x29, #-24]
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #8]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldr	x10, [x8]
	ldr	x9, [x10]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [x10]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldur	x10, [x29, #-24]
	ldr	w10, [x10, #8]
	subs	w10, w10, #1
	str	x8, [x9, w10, sxtw #3]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB270_5
	b	LBB270_4
LBB270_4:
	ldur	w8, [x29, #-28]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	x8, [x29, #-24]
	ldr	w9, [x8, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.154@PAGE
	add	x0, x0, l_.str.154@PAGEOFF
	bl	_mpc_failf
	stur	x0, [x29, #-8]
	b	LBB270_24
LBB270_5:                               ;   in Loop: Header=BB270_2 Depth=1
	b	LBB270_2
LBB270_6:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	stur	x8, [x29, #-8]
	b	LBB270_24
LBB270_7:
	stur	wzr, [x29, #-28]
	b	LBB270_8
LBB270_8:                               ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB270_16
	b	LBB270_9
LBB270_9:                               ;   in Loop: Header=BB270_8 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB270_11
	b	LBB270_10
LBB270_10:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.155@PAGE
	add	x0, x0, l_.str.155@PAGEOFF
	bl	_mpc_failf
	stur	x0, [x29, #-8]
	b	LBB270_24
LBB270_11:                              ;   in Loop: Header=BB270_8 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB270_14
	b	LBB270_12
LBB270_12:                              ;   in Loop: Header=BB270_8 Depth=1
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	ldur	x1, [x29, #-16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB270_14
	b	LBB270_13
LBB270_13:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB270_24
LBB270_14:                              ;   in Loop: Header=BB270_8 Depth=1
	b	LBB270_15
LBB270_15:                              ;   in Loop: Header=BB270_8 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB270_8
LBB270_16:
	b	LBB270_17
LBB270_17:                              ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldr	x10, [x8]
	ldr	x9, [x10]
	ldr	x8, [x9]
	add	x9, x9, #8
	str	x9, [x10]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #40]
	ldur	x9, [x29, #-24]
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [x8, #8]
	mov	x8, #8
	mul	x1, x8, x9
	bl	_realloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #16]
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldur	x10, [x29, #-24]
	ldr	w10, [x10, #8]
	subs	w10, w10, #1
	str	x8, [x9, w10, sxtw #3]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB270_19
	b	LBB270_18
LBB270_18:                              ;   in Loop: Header=BB270_17 Depth=1
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB270_20
	b	LBB270_19
LBB270_19:
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.155@PAGE
	add	x0, x0, l_.str.155@PAGEOFF
	bl	_mpc_failf
	stur	x0, [x29, #-8]
	b	LBB270_24
LBB270_20:                              ;   in Loop: Header=BB270_17 Depth=1
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB270_23
	b	LBB270_21
LBB270_21:                              ;   in Loop: Header=BB270_17 Depth=1
	ldr	x8, [sp, #40]
	ldr	x0, [x8]
	ldur	x1, [x29, #-16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB270_23
	b	LBB270_22
LBB270_22:
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB270_24
LBB270_23:                              ;   in Loop: Header=BB270_17 Depth=1
	b	LBB270_17
LBB270_24:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function is_number
_is_number:                             ; @is_number
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
	str	xzr, [sp, #8]
	b	LBB271_1
LBB271_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	_strlen
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, hs
	tbnz	w8, #0, LBB271_6
	b	LBB271_2
LBB271_2:                               ;   in Loop: Header=BB271_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldrsb	w1, [x8, x9]
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB271_4
	b	LBB271_3
LBB271_3:
	stur	wzr, [x29, #-4]
	b	LBB271_7
LBB271_4:                               ;   in Loop: Header=BB271_1 Depth=1
	b	LBB271_5
LBB271_5:                               ;   in Loop: Header=BB271_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB271_1
LBB271_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB271_7
LBB271_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpca_stmt_fold
_mpca_stmt_fold:                        ; @mpca_stmt_fold
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w8, [x29, #-4]
	add	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #8
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp]
	str	wzr, [sp, #12]
	b	LBB272_1
LBB272_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB272_4
	b	LBB272_2
LBB272_2:                               ;   in Loop: Header=BB272_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp]
	ldrsw	x10, [sp, #12]
	str	x8, [x9, x10, lsl #3]
	b	LBB272_3
LBB272_3:                               ;   in Loop: Header=BB272_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB272_1
LBB272_4:
	ldr	x9, [sp]
	ldursw	x10, [x29, #-4]
	mov	x8, #0
	str	x8, [x9, x10, lsl #3]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpca_stmt_list_delete
_mpca_stmt_list_delete:                 ; @mpca_stmt_list_delete
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	b	LBB273_1
LBB273_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB273_3
	b	LBB273_2
LBB273_2:                               ;   in Loop: Header=BB273_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	_mpc_soft_delete
	ldr	x0, [sp, #8]
	bl	_free
	ldr	x8, [sp, #16]
	add	x8, x8, #8
	str	x8, [sp, #16]
	b	LBB273_1
LBB273_3:
	ldur	x0, [x29, #-8]
	bl	_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpca_stmt_list_apply_to
_mpca_stmt_list_apply_to:               ; @mpca_stmt_list_apply_to
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	LBB274_1
LBB274_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB274_7
	b	LBB274_2
LBB274_2:                               ;   in Loop: Header=BB274_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #24]
	bl	_mpca_grammar_find_parser
	str	x0, [sp]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #24]
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB274_4
	b	LBB274_3
LBB274_3:                               ;   in Loop: Header=BB274_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	bl	_mpc_predictive
	ldr	x8, [sp, #16]
	str	x0, [x8, #16]
	b	LBB274_4
LBB274_4:                               ;   in Loop: Header=BB274_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB274_6
	b	LBB274_5
LBB274_5:                               ;   in Loop: Header=BB274_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #8]
	bl	_mpc_expect
	ldr	x8, [sp, #16]
	str	x0, [x8, #16]
	b	LBB274_6
LBB274_6:                               ;   in Loop: Header=BB274_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	bl	_mpc_optimise
	ldr	x0, [sp]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #16]
	bl	_mpc_define
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	_free
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	_free
	ldr	x0, [sp, #16]
	bl	_free
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB274_1
LBB274_7:
	ldur	x0, [x29, #-8]
	bl	_free
	mov	x0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mpca_stmt_afold
_mpca_stmt_afold:                       ; @mpca_stmt_afold
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	mov	x0, #24
	bl	_malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	bl	_free
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #32]
	bl	_free
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"%s: error: %s\n"

l_.str.2:                               ; @.str.2
	.asciz	"%s:%li:%li: error: expected "

l_.str.3:                               ; @.str.3
	.asciz	"ERROR: NOTHING EXPECTED"

l_.str.4:                               ; @.str.4
	.asciz	"%s, "

l_.str.5:                               ; @.str.5
	.asciz	"%s or %s"

l_.str.6:                               ; @.str.6
	.asciz	" at "

l_.str.7:                               ; @.str.7
	.asciz	"\n"

l_.str.8:                               ; @.str.8
	.asciz	"Unknown Error"

l_.str.9:                               ; @.str.9
	.asciz	"rb"

l_.str.10:                              ; @.str.10
	.asciz	"Unable to open file!"

l_.str.11:                              ; @.str.11
	.asciz	"Attempt to assign to Unretained Parser!"

l_.str.12:                              ; @.str.12
	.asciz	"anchor"

l_.str.13:                              ; @.str.13
	.asciz	"any character"

l_.str.14:                              ; @.str.14
	.asciz	"'%c'"

l_.str.15:                              ; @.str.15
	.asciz	"character between '%c' and '%c'"

l_.str.16:                              ; @.str.16
	.asciz	"one of '%s'"

l_.str.17:                              ; @.str.17
	.asciz	"none of '%s'"

l_.str.18:                              ; @.str.18
	.asciz	"character satisfying function %p"

l_.str.19:                              ; @.str.19
	.asciz	"\"%s\""

l_.str.20:                              ; @.str.20
	.asciz	"start of input"

l_.str.21:                              ; @.str.21
	.asciz	"end of input"

l_.str.22:                              ; @.str.22
	.asciz	"word boundary"

l_.str.23:                              ; @.str.23
	.asciz	"start of newline"

l_.str.24:                              ; @.str.24
	.asciz	" \f\n\r\t\013"

l_.str.25:                              ; @.str.25
	.asciz	"whitespace"

l_.str.26:                              ; @.str.26
	.asciz	"spaces"

l_.str.27:                              ; @.str.27
	.asciz	"newline"

l_.str.28:                              ; @.str.28
	.asciz	"tab"

l_.str.29:                              ; @.str.29
	.asciz	"0123456789"

l_.str.30:                              ; @.str.30
	.asciz	"digit"

l_.str.31:                              ; @.str.31
	.asciz	"0123456789ABCDEFabcdef"

l_.str.32:                              ; @.str.32
	.asciz	"hex digit"

l_.str.33:                              ; @.str.33
	.asciz	"01234567"

l_.str.34:                              ; @.str.34
	.asciz	"oct digit"

l_.str.35:                              ; @.str.35
	.asciz	"digits"

l_.str.36:                              ; @.str.36
	.asciz	"hex digits"

l_.str.37:                              ; @.str.37
	.asciz	"oct digits"

l_.str.38:                              ; @.str.38
	.asciz	"abcdefghijklmnopqrstuvwxyz"

l_.str.39:                              ; @.str.39
	.asciz	"lowercase letter"

l_.str.40:                              ; @.str.40
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"

l_.str.41:                              ; @.str.41
	.asciz	"uppercase letter"

l_.str.42:                              ; @.str.42
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

l_.str.43:                              ; @.str.43
	.asciz	"letter"

l_.str.44:                              ; @.str.44
	.asciz	"underscore"

l_.str.45:                              ; @.str.45
	.asciz	"alphanumeric"

l_.str.46:                              ; @.str.46
	.asciz	"integer"

l_.str.47:                              ; @.str.47
	.asciz	"hexadecimal"

l_.str.48:                              ; @.str.48
	.asciz	"octadecimal"

l_.str.49:                              ; @.str.49
	.asciz	"number"

l_.str.50:                              ; @.str.50
	.asciz	"+-"

l_.str.51:                              ; @.str.51
	.asciz	"eE"

l_.str.52:                              ; @.str.52
	.asciz	"real"

l_.str.53:                              ; @.str.53
	.asciz	"float"

l_.str.54:                              ; @.str.54
	.asciz	"'"

l_.str.55:                              ; @.str.55
	.asciz	"char"

l_.str.56:                              ; @.str.56
	.asciz	"\""

l_.str.57:                              ; @.str.57
	.asciz	"string"

l_.str.58:                              ; @.str.58
	.asciz	"/"

l_.str.59:                              ; @.str.59
	.asciz	"regex"

l_.str.60:                              ; @.str.60
	.asciz	"("

l_.str.61:                              ; @.str.61
	.asciz	")"

l_.str.62:                              ; @.str.62
	.asciz	"<"

l_.str.63:                              ; @.str.63
	.asciz	">"

l_.str.64:                              ; @.str.64
	.asciz	"{"

l_.str.65:                              ; @.str.65
	.asciz	"}"

l_.str.66:                              ; @.str.66
	.asciz	"["

l_.str.67:                              ; @.str.67
	.asciz	"]"

l_.str.68:                              ; @.str.68
	.asciz	"term"

l_.str.69:                              ; @.str.69
	.asciz	"factor"

l_.str.70:                              ; @.str.70
	.asciz	"base"

l_.str.71:                              ; @.str.71
	.asciz	"range"

l_.str.72:                              ; @.str.72
	.asciz	")|"

l_.str.73:                              ; @.str.73
	.asciz	"<mpc_re_compiler>"

l_.str.74:                              ; @.str.74
	.asciz	"Invalid Regex: %s"

	.section	__TEXT,__const
_mpc_escape_input_c:                    ; @mpc_escape_input_c
	.asciz	"\007\b\f\n\r\t\013\\'\""

	.section	__DATA,__data
	.p2align	3                               ; @mpc_escape_output_c
_mpc_escape_output_c:
	.quad	l_.str.119
	.quad	l_.str.120
	.quad	l_.str.121
	.quad	l_.str.122
	.quad	l_.str.123
	.quad	l_.str.124
	.quad	l_.str.125
	.quad	l_.str.126
	.quad	l_.str.127
	.quad	l_.str.128
	.quad	l_.str.129
	.quad	0

	.section	__TEXT,__const
_mpc_escape_input_raw_re:               ; @mpc_escape_input_raw_re
	.byte	47

	.section	__DATA,__data
	.p2align	3                               ; @mpc_escape_output_raw_re
_mpc_escape_output_raw_re:
	.quad	l_.str.130
	.quad	0

	.section	__TEXT,__const
_mpc_escape_input_raw_cstr:             ; @mpc_escape_input_raw_cstr
	.byte	34

	.section	__DATA,__data
	.p2align	3                               ; @mpc_escape_output_raw_cstr
_mpc_escape_output_raw_cstr:
	.quad	l_.str.128
	.quad	0

	.section	__TEXT,__const
_mpc_escape_input_raw_cchar:            ; @mpc_escape_input_raw_cchar
	.byte	39

	.section	__DATA,__data
	.p2align	3                               ; @mpc_escape_output_raw_cchar
_mpc_escape_output_raw_cchar:
	.quad	l_.str.127
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
l_.str.75:                              ; @.str.75
	.asciz	"<test>"

l_.str.76:                              ; @.str.76
	.asciz	"Got "

l_.str.77:                              ; @.str.77
	.asciz	"Expected "

l_.str.78:                              ; @.str.78
	.space	1

l_.str.79:                              ; @.str.79
	.asciz	"|"

l_.str.80:                              ; @.str.80
	.asciz	"grammar_total"

l_.str.81:                              ; @.str.81
	.asciz	"grammar"

l_.str.82:                              ; @.str.82
	.asciz	"*"

l_.str.83:                              ; @.str.83
	.asciz	"+"

l_.str.84:                              ; @.str.84
	.asciz	"?"

l_.str.85:                              ; @.str.85
	.asciz	"!"

l_.str.86:                              ; @.str.86
	.asciz	"ms"

l_.str.87:                              ; @.str.87
	.asciz	"<mpc_grammar_compiler>"

l_.str.88:                              ; @.str.88
	.asciz	"Invalid Grammar: %s"

l_.str.89:                              ; @.str.89
	.asciz	"<mpca_lang_file>"

l_.str.90:                              ; @.str.90
	.asciz	"<mpca_lang_pipe>"

l_.str.91:                              ; @.str.91
	.asciz	"<mpca_lang>"

l_.str.92:                              ; @.str.92
	.asciz	"Stats\n"

l_.str.93:                              ; @.str.93
	.asciz	"=====\n"

l_.str.94:                              ; @.str.94
	.asciz	"Node Count: %i\n"

l_.str.95:                              ; @.str.95
	.asciz	"bell"

l_.str.96:                              ; @.str.96
	.asciz	"backspace"

l_.str.97:                              ; @.str.97
	.asciz	"formfeed"

l_.str.98:                              ; @.str.98
	.asciz	"carriage return"

l_.str.99:                              ; @.str.99
	.asciz	"vertical tab"

l_.str.100:                             ; @.str.100
	.asciz	"space"

l_.str.101:                             ; @.str.101
	.asciz	"Maximum recursion depth exceeded!"

l_.str.102:                             ; @.str.102
	.asciz	"Parser Undefined!"

l_.str.103:                             ; @.str.103
	.asciz	"opposite"

l_.str.104:                             ; @.str.104
	.asciz	"Unknown Parser Type Id!"

l_.str.105:                             ; @.str.105
	.asciz	"one or more of "

l_.str.106:                             ; @.str.106
	.asciz	", "

l_.str.107:                             ; @.str.107
	.asciz	" or "

l_.str.108:                             ; @.str.108
	.asciz	"%i of "

l_.str.109:                             ; @.str.109
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"

l_.str.110:                             ; @.str.110
	.asciz	"any character except a newline"

l_.str.111:                             ; @.str.111
	.asciz	"Invalid Regex Range Expression"

l_.str.112:                             ; @.str.112
	.asciz	"-"

l_.str.113:                             ; @.str.113
	.asciz	"\007"

l_.str.114:                             ; @.str.114
	.asciz	"\f"

l_.str.115:                             ; @.str.115
	.asciz	"\r"

l_.str.116:                             ; @.str.116
	.asciz	"\t"

l_.str.117:                             ; @.str.117
	.asciz	"\013"

l_.str.118:                             ; @.str.118
	.asciz	"\b"

l_.str.119:                             ; @.str.119
	.asciz	"\\a"

l_.str.120:                             ; @.str.120
	.asciz	"\\b"

l_.str.121:                             ; @.str.121
	.asciz	"\\f"

l_.str.122:                             ; @.str.122
	.asciz	"\\n"

l_.str.123:                             ; @.str.123
	.asciz	"\\r"

l_.str.124:                             ; @.str.124
	.asciz	"\\t"

l_.str.125:                             ; @.str.125
	.asciz	"\\v"

l_.str.126:                             ; @.str.126
	.asciz	"\\\\"

l_.str.127:                             ; @.str.127
	.asciz	"\\'"

l_.str.128:                             ; @.str.128
	.asciz	"\\\""

l_.str.129:                             ; @.str.129
	.asciz	"\\0"

l_.str.130:                             ; @.str.130
	.asciz	"\\/"

l_.str.131:                             ; @.str.131
	.asciz	"<%s>"

l_.str.132:                             ; @.str.132
	.asciz	"<anon>"

l_.str.133:                             ; @.str.133
	.asciz	"<?>"

l_.str.134:                             ; @.str.134
	.asciz	"<:>"

l_.str.135:                             ; @.str.135
	.asciz	"<!>"

l_.str.136:                             ; @.str.136
	.asciz	"<#>"

l_.str.137:                             ; @.str.137
	.asciz	"<S>"

l_.str.138:                             ; @.str.138
	.asciz	"<@>"

l_.str.139:                             ; @.str.139
	.asciz	"<.>"

l_.str.140:                             ; @.str.140
	.asciz	"<f>"

l_.str.141:                             ; @.str.141
	.asciz	"'%s'"

l_.str.142:                             ; @.str.142
	.asciz	"[%s-%s]"

l_.str.143:                             ; @.str.143
	.asciz	"[%s]"

l_.str.144:                             ; @.str.144
	.asciz	"[^%s]"

l_.str.145:                             ; @.str.145
	.asciz	"{%i}"

l_.str.146:                             ; @.str.146
	.asciz	" ("

l_.str.147:                             ; @.str.147
	.asciz	" "

l_.str.148:                             ; @.str.148
	.asciz	" | "

l_.str.149:                             ; @.str.149
	.asciz	"->?"

l_.str.150:                             ; @.str.150
	.asciz	"NULL\n"

l_.str.151:                             ; @.str.151
	.asciz	"  "

l_.str.152:                             ; @.str.152
	.asciz	"%s:%lu:%lu '%s'\n"

l_.str.153:                             ; @.str.153
	.asciz	"%s \n"

l_.str.154:                             ; @.str.154
	.asciz	"No Parser in position %i! Only supplied %i Parsers!"

l_.str.155:                             ; @.str.155
	.asciz	"Unknown Parser '%s'!"

l_.str.156:                             ; @.str.156
	.asciz	"lang"

l_.str.157:                             ; @.str.157
	.asciz	"stmt"

l_.str.158:                             ; @.str.158
	.asciz	":"

l_.str.159:                             ; @.str.159
	.asciz	";"

.subsections_via_symbols

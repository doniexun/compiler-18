; ELF32 on Ubuntu 12.04 
; NASM version 2.09.10 
; GCC version 4.6.3 
SECTION .DATA
	fmt_int_r:  DB "%d", 0
	fmt_int_w:  DB "%d", 10, 0
	fmt_char_r: DB 10, "%c", 0
	fmt_char_w: DB "%c", 10, 0
	fmt_string: DB "%s", 0

SECTION .TEXT
	EXTERN	scanf, printf
	GLOBAL	scan_int, scan_char
	GLOBAL	print_int, print_char, print_string

scan_int:
	push	ebp
	mov	ebp, esp
	sub	esp, 0x4
	lea	eax, [ebp - 4]
	push	eax
	push	fmt_int_r
	call	scanf
	pop	ecx
	pop	ecx
	mov	eax, [ebp - 4]
	mov	esp, ebp
	pop	ebp
	ret

scan_char:
	push	ebp
	mov	ebp, esp
	sub	esp, 0x4
	lea	eax, [ebp - 4]
	push	eax
	push	fmt_char_r
	call	scanf
	pop	ecx
	pop	ecx
	mov	eax, [ebp - 4]
	leave
	ret

print_int:
	push	ebp
	mov	ebp, esp
	push	eax
	push	fmt_int_w
	call	printf
	pop	ecx
	pop	ecx
	xor	eax, eax
	leave
	ret

print_char:
	push	ebp
	mov	ebp, esp
	push	eax
	push	fmt_char_w
	call	printf
	pop	ecx
	pop	ecx
	xor	eax, eax
	leave
	ret

print_string:
	push	ebp
	mov	ebp, esp
	push	eax
	push	fmt_string
	call	printf
	pop	ecx
	pop	ecx
	xor	eax, eax
	leave
	ret


SECTION .TEXT
	GLOBAL J_qsort$IV$IV_swap$IR$IR
J_qsort$IV$IV_swap$IR$IR:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	ebx
	push	esi
	push	edi
	mov	esi, [ebp + 20]
	mov	ecx, [esi]	; *J_qsort$IV$IV_swap$IR$IR_i
	mov	[ebp - 8], ecx	; J_qsort$IV$IV_swap$IR$IR_temp
	mov	esi, [ebp + 16]
	mov	ecx, [esi]	; *J_qsort$IV$IV_swap$IR$IR_j
	mov	esi, [ebp + 20]
	mov	[esi], ecx	; *J_qsort$IV$IV_swap$IR$IR_i
	mov	ecx, [ebp - 8]	; J_qsort$IV$IV_swap$IR$IR_temp
	mov	esi, [ebp + 16]
	mov	[esi], ecx	; *J_qsort$IV$IV_swap$IR$IR_j
	pop	edi
	pop	esi
	pop	ebx
	mov	eax, [ebp - 4]
	mov	esp, ebp
	pop	ebp
	ret

SECTION .TEXT
	GLOBAL J_qsort$IV$IV
J_qsort$IV$IV:
	push	ebp
	mov	ebp, esp
	sub	esp, 64
	push	ebx
	push	esi
	push	edi
	mov	ecx, [ebp + 16]	; J_qsort$IV$IV_l
	mov	[ebp - 8], ecx	; J_qsort$IV$IV_i
	mov	ecx, [ebp + 12]	; J_qsort$IV$IV_h
	mov	[ebp - 12], ecx	; J_qsort$IV$IV_j
	mov	ecx, [ebp - 8]	; J_qsort$IV$IV_i
	mov	edx, [ebp - 12]	; J_qsort$IV$IV_j
	add	ecx, edx
	mov	[ebp - 24], ecx	; J_qsort$IV$IV_&1
	xor	edx, edx
	mov	eax, [ebp - 24]	; J_qsort$IV$IV_&1
	mov	ecx, 2
	div	ecx
	mov	[ebp - 28], eax	; J_qsort$IV$IV_&2
	mov	eax, [ebp - 28]	; J_qsort$IV$IV_&2
	mov	esi, [ebp + 8]	; display array
	lea	edi, [esi - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	ecx, [edi]
	mov	[ebp - 32], ecx	; J_qsort$IV$IV_&3
	mov	ecx, [ebp - 32]	; J_qsort$IV$IV_&3
	mov	[ebp - 20], ecx	; J_qsort$IV$IV_m
..@l1:
	mov	eax, [ebp - 8]	; J_qsort$IV$IV_i
	mov	esi, [ebp + 8]	; display array
	lea	edi, [esi - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	ecx, [edi]
	mov	[ebp - 36], ecx	; J_qsort$IV$IV_&4
	mov	eax, [ebp - 36]	; J_qsort$IV$IV_&4
	mov	ecx, [ebp - 20]	; J_qsort$IV$IV_m
	cmp	eax, ecx
	jl	..@l3
	jmp	..@l4
..@l3:
..@l5:
	mov	ecx, [ebp - 8]	; J_qsort$IV$IV_i
	mov	edx, 1
	add	ecx, edx
	mov	[ebp - 40], ecx	; J_qsort$IV$IV_&5
	mov	ecx, [ebp - 40]	; J_qsort$IV$IV_&5
	mov	[ebp - 8], ecx	; J_qsort$IV$IV_i
	mov	eax, [ebp - 8]	; J_qsort$IV$IV_i
	mov	esi, [ebp + 8]	; display array
	lea	edi, [esi - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	ecx, [edi]
	mov	[ebp - 44], ecx	; J_qsort$IV$IV_&6
	mov	eax, [ebp - 44]	; J_qsort$IV$IV_&6
	mov	ecx, [ebp - 20]	; J_qsort$IV$IV_m
	cmp	eax, ecx
	jnl	..@l6
	jmp	..@l5
..@l6:
..@l4:
	mov	eax, [ebp - 12]	; J_qsort$IV$IV_j
	mov	esi, [ebp + 8]	; display array
	lea	edi, [esi - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	ecx, [edi]
	mov	[ebp - 48], ecx	; J_qsort$IV$IV_&7
	mov	eax, [ebp - 20]	; J_qsort$IV$IV_m
	mov	ecx, [ebp - 48]	; J_qsort$IV$IV_&7
	cmp	eax, ecx
	jl	..@l7
	jmp	..@l8
..@l7:
..@l9:
	mov	ecx, [ebp - 12]	; J_qsort$IV$IV_j
	mov	edx, 1
	sub	ecx, edx
	mov	[ebp - 52], ecx	; J_qsort$IV$IV_&8
	mov	ecx, [ebp - 52]	; J_qsort$IV$IV_&8
	mov	[ebp - 12], ecx	; J_qsort$IV$IV_j
	mov	eax, [ebp - 12]	; J_qsort$IV$IV_j
	mov	esi, [ebp + 8]	; display array
	lea	edi, [esi - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	ecx, [edi]
	mov	[ebp - 56], ecx	; J_qsort$IV$IV_&9
	mov	eax, [ebp - 20]	; J_qsort$IV$IV_m
	mov	ecx, [ebp - 56]	; J_qsort$IV$IV_&9
	cmp	eax, ecx
	jnl	..@l10
	jmp	..@l9
..@l10:
..@l8:
	mov	eax, [ebp - 8]	; J_qsort$IV$IV_i
	mov	ecx, [ebp - 12]	; J_qsort$IV$IV_j
	cmp	eax, ecx
	jng	..@l11
	jmp	..@l12
..@l11:
	mov	edx, [ebp - 8]	; J_qsort$IV$IV_i
	mov	esi, [ebp + 8]	; J_a
	lea	ecx, [esi - 8]	; J_a
	imul	edx, 4
	sub	ecx, edx
	push	ecx
	mov	edx, [ebp - 12]	; J_qsort$IV$IV_j
	mov	esi, [ebp + 8]	; J_a
	lea	ecx, [esi - 8]	; J_a
	imul	edx, 4
	sub	ecx, edx
	push	ecx
	push	ebp		; push current ebp
	mov	edi, [ebp + 8]
	push	edi		; push old ebp
	call	J_qsort$IV$IV_swap$IR$IR
	add	esp, 16
	mov	ecx, [ebp - 8]	; J_qsort$IV$IV_i
	mov	edx, 1
	add	ecx, edx
	mov	[ebp - 60], ecx	; J_qsort$IV$IV_&10
	mov	ecx, [ebp - 60]	; J_qsort$IV$IV_&10
	mov	[ebp - 8], ecx	; J_qsort$IV$IV_i
	mov	ecx, [ebp - 12]	; J_qsort$IV$IV_j
	mov	edx, 1
	sub	ecx, edx
	mov	[ebp - 64], ecx	; J_qsort$IV$IV_&11
	mov	ecx, [ebp - 64]	; J_qsort$IV$IV_&11
	mov	[ebp - 12], ecx	; J_qsort$IV$IV_j
..@l12:
	mov	eax, [ebp - 8]	; J_qsort$IV$IV_i
	mov	ecx, [ebp - 12]	; J_qsort$IV$IV_j
	cmp	eax, ecx
	jg	..@l2
	jmp	..@l1
..@l2:
	mov	eax, [ebp - 12]	; J_qsort$IV$IV_j
	mov	ecx, [ebp + 16]	; J_qsort$IV$IV_l
	cmp	eax, ecx
	jg	..@l13
	jmp	..@l14
..@l13:
	mov	ecx, [ebp + 16]	; J_qsort$IV$IV_l
	push	ecx
	mov	ecx, [ebp - 12]	; J_qsort$IV$IV_j
	push	ecx
	mov	edi, [ebp + 8]
	push	edi		; dup old ebp
	call	J_qsort$IV$IV
	add	esp, 12
..@l14:
	mov	eax, [ebp - 8]	; J_qsort$IV$IV_i
	mov	ecx, [ebp + 12]	; J_qsort$IV$IV_h
	cmp	eax, ecx
	jl	..@l15
	jmp	..@l16
..@l15:
	mov	ecx, [ebp - 8]	; J_qsort$IV$IV_i
	push	ecx
	mov	ecx, [ebp + 12]	; J_qsort$IV$IV_h
	push	ecx
	mov	edi, [ebp + 8]
	push	edi		; dup old ebp
	call	J_qsort$IV$IV
	add	esp, 12
..@l16:
	pop	edi
	pop	esi
	pop	ebx
	mov	eax, [ebp - 4]
	mov	esp, ebp
	pop	ebp
	ret

SECTION .TEXT
	GLOBAL main
main:
	push	ebp
	mov	ebp, esp
	sub	esp, 112
	push	ebx
	push	esi
	push	edi
	mov	eax, ..@s1
	call	print_string
	call	scan_int
	mov	[ebp - 92], eax	; J_num
	mov	ecx, 1
	mov	[ebp - 88], ecx	; J_index
..@l17:
	mov	eax, [ebp - 88]	; J_index
	mov	ecx, [ebp - 92]	; J_num
	cmp	eax, ecx
	jg	..@l18
	mov	eax, ..@s2
	call	print_string
	call	scan_int
	mov	[ebp - 96], eax	; J_temp
	mov	ecx, [ebp - 88]	; J_index
	mov	edx, 1
	sub	ecx, edx
	mov	[ebp - 100], ecx	; J_&12
	mov	ecx, [ebp - 96]	; J_temp
	mov	eax, [ebp - 100]	; J_&12
	lea	edi, [ebp - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	[edi], ecx
	mov	ecx, [ebp - 88]	; J_index
	inc	ecx
	mov	[ebp - 88], ecx	; J_index
	jmp	..@l17
..@l18:
	mov	ecx, 0
	push	ecx
	mov	ecx, [ebp - 92]	; J_num
	mov	edx, 1
	sub	ecx, edx
	mov	[ebp - 104], ecx	; J_&13
	mov	ecx, [ebp - 104]	; J_&13
	push	ecx
	push	ebp		; push current ebp
	call	J_qsort$IV$IV
	add	esp, 12
	mov	ecx, [ebp - 92]	; J_num
	mov	edx, 1
	sub	ecx, edx
	mov	[ebp - 108], ecx	; J_&14
	mov	ecx, 0
	mov	[ebp - 88], ecx	; J_index
..@l19:
	mov	eax, [ebp - 88]	; J_index
	mov	ecx, [ebp - 108]	; J_&14
	cmp	eax, ecx
	jg	..@l20
	mov	eax, [ebp - 88]	; J_index
	lea	edi, [ebp - 8]	; J_a
	imul	eax, 4
	sub	edi, eax
	mov	ecx, [edi]
	mov	[ebp - 112], ecx	; J_&15
	mov	eax, [ebp - 112]	; J_&15
	call	print_int
	mov	ecx, [ebp - 88]	; J_index
	inc	ecx
	mov	[ebp - 88], ecx	; J_index
	jmp	..@l19
..@l20:
	pop	edi
	pop	esi
	pop	ebx
	mov	eax, [ebp - 4]
	mov	esp, ebp
	pop	ebp
	ret
SECTION .DATA
	..@s1: DB "please input number(<10): ", 0
	..@s2: DB "please input number> ", 0

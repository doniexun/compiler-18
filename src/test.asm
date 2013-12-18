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
	GLOBAL main
main:
	push	ebp
	mov	ebp, esp
	sub	esp, 44
	push	ebx
	push	esi
	push	edi
	mov	ecx, [ebp - 12]	; J_b
	mov	edx, [ebp - 16]	; J_c
	add	ecx, edx
	mov	[ebp - 24], ecx	; J_&1
	mov	ecx, [ebp - 8]	; J_a
	mov	edx, [ebp - 24]	; J_&1
	add	ecx, edx
	mov	[ebp - 28], ecx	; J_&2
	mov	ecx, [ebp - 12]	; J_b
	mov	edx, [ebp - 16]	; J_c
	add	ecx, edx
	mov	[ebp - 32], ecx	; J_&3
	mov	ecx, [ebp - 28]	; J_&2
	mov	edx, [ebp - 32]	; J_&3
	add	ecx, edx
	mov	[ebp - 36], ecx	; J_&4
	mov	ecx, [ebp - 36]	; J_&4
	mov	edx, [ebp - 8]	; J_a
	add	ecx, edx
	mov	[ebp - 40], ecx	; J_&5
	mov	ecx, [ebp - 40]	; J_&5
	mov	[ebp - 20], ecx	; J_z
	mov	ecx, [ebp - 20]	; J_z
	mov	[ebp - 8], ecx	; J_a
	mov	ecx, [ebp - 20]	; J_z
	mov	edx, 1
	add	ecx, edx
	mov	[ebp - 44], ecx	; J_&6
	mov	ecx, [ebp - 44]	; J_&6
	mov	[ebp - 20], ecx	; J_z
	pop	edi
	pop	esi
	pop	ebx
	mov	eax, [ebp - 4]
	mov	esp, ebp
	pop	ebp
	ret

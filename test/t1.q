J_fac$IV:
	EQU	J_fac$IV_n, 0, ..@l1
	SUB	J_fac$IV_n, 1, J_fac$IV_&1
	PUSH	-, -, J_fac$IV_&1
	CALL	J_fac$IV, -, J_fac$IV_&2
	MUL	J_fac$IV_&2, J_fac$IV_n, J_fac$IV_&3
	SRET	J_fac$IV_&3, -, J_fac$IV
	JMP	-, -, ..@l2
..@l1:
	SRET	1, -, J_fac$IV
..@l2:
	FIN	-, -, -

main:
	ASS	0, -, J_vn
..@l3:
	GTT	J_vn, 4, ..@l4
	PUSH	-, -, J_vn
	CALL	J_fac$IV, -, J_&4
	WRI	-, -, J_&4
	INC	-, -, J_vn
	JMP	-, -, ..@l3
..@l4:
	FIN	-, -, -


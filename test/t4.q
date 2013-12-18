J_pri_f$IV:
	LST	J_pri_f$IV_n, 3, ..@l1
	SUB	J_pri_f$IV_n, 1, J_pri_f$IV_&2
	PUSH	-, -, J_pri_f$IV_&2
	CALL	J_pri_f$IV, -, J_pri_f$IV_&3
	MUL	J_pri_f$IV_n, J_pri_f$IV_&3, J_pri_f$IV_&1
	SRET	J_pri_f$IV_&1, -, J_pri_f$IV
	JMP	-, -, ..@l2
..@l1:
	SRET	J_pri_f$IV_n, -, J_pri_f$IV
..@l2:
	FIN	-, -, -

J_pri:
	PUSH	-, -, 5
	CALL	J_pri_f$IV, -, J_pri_&4
	WRI	-, -, J_pri_&4
	FIN	-, -, -

main:
	CALL	J_pri, -, -
	FIN	-, -, -


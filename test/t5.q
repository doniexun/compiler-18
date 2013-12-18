J_sa_pri_f$IV:
	LST	J_sa_pri_f$IV_n, 3, ..@l1
	SUB	J_sa_pri_f$IV_n, 1, J_sa_pri_f$IV_&2
	PUSH	-, -, J_sa_pri_f$IV_&2
	CALL	J_sa_pri_f$IV, -, J_sa_pri_f$IV_&3
	MUL	J_sa_pri_f$IV_n, J_sa_pri_f$IV_&3, J_sa_pri_f$IV_&1
	SRET	J_sa_pri_f$IV_&1, -, J_sa_pri_f$IV
	JMP	-, -, ..@l2
..@l1:
	SRET	J_sa_pri_f$IV_n, -, J_sa_pri_f$IV
..@l2:
	FIN	-, -, -

J_sa_pri_prr:
	AARR	2, 1, J_sa_pri_he
	LOAD	J_sa_pri_he, 1, J_sa_pri_prr_&4
	AARR	2, J_sa_pri_prr_&4, J_sa_pri_he
	LOAD	J_sa_pri_he, 1, J_sa_pri_prr_&6
	LOAD	J_sa_pri_he, J_sa_pri_prr_&6, J_sa_pri_prr_&5
	LOAD	J_sa_pri_he, 1, J_sa_pri_prr_&7
	AARR	J_sa_pri_prr_&5, J_sa_pri_prr_&7, J_sa_pri_pe
	LOAD	J_sa_pri_he, 1, J_sa_pri_prr_&9
	LOAD	J_sa_pri_pe, J_sa_pri_prr_&9, J_sa_pri_prr_&8
	WRI	-, -, J_sa_pri_prr_&8
	ADD	J_sa_pri_i, J_sa_pri_j, J_sa_pri_prr_&10
	ASS	J_sa_pri_prr_&10, -, J_sa_pri_i
	FIN	-, -, -

J_sa_pri:
	CALL	J_sa_pri_prr, -, -
	PUSH	-, -, 6
	CALL	J_sa_pri_f$IV, -, J_sa_pri_&11
	LOAD	J_sa_pri_he, 1, J_sa_pri_&14
	LOAD	J_sa_pri_pe, J_sa_pri_&14, J_sa_pri_&13
	DIV	J_sa_pri_&11, J_sa_pri_&13, J_sa_pri_&12
	WRI	-, -, J_sa_pri_&12
	FIN	-, -, -

J_sa:
	CALL	J_sa_pri, -, -
	FIN	-, -, -

J_prn_fe$IR:
	ASS	22, -, J_prn_fe$IR_i
	FIN	-, -, -

J_prn:
	PUSHA	-, -, *J_prn_he
	CALL	J_prn_fe$IR, -, -
	WRI	-, -, J_prn_he
	FIN	-, -, -

main:
	CALL	J_sa, -, -
	CALL	J_prn, -, -
	FIN	-, -, -


J_prn_swap$IR$IR:
	ASS	J_prn_swap$IR$IR_i, -, J_prn_swap$IR$IR_temp
	ASS	J_prn_swap$IR$IR_j, -, J_prn_swap$IR$IR_i
	ASS	J_prn_swap$IR$IR_temp, -, J_prn_swap$IR$IR_j
	FIN	-, -, -

J_prn:
	AARR	1, 0, J_prn_he
	AARR	3, 1, J_prn_he
	AARR	2, 2, J_prn_he
	AARR	4, 3, J_prn_he
	AARR	5, 4, J_prn_he
	ASS	0, -, J_prn_i
..@l1:
	GTT	J_prn_i, 4, ..@l2
	ASS	0, -, J_prn_j
..@l3:
	GTT	J_prn_j, 4, ..@l4
	LOAD	J_prn_he, J_prn_i, J_prn_&1
	LOAD	J_prn_he, J_prn_j, J_prn_&2
	GTT	J_prn_&1, J_prn_&2, ..@l5
	JMP	-, -, ..@l6
..@l5:
	PUSHA	-, J_prn_i, *J_prn_he
	PUSHA	-, J_prn_j, *J_prn_he
	CALL	J_prn_swap$IR$IR, -, -
..@l6:
	INC	-, -, J_prn_j
	JMP	-, -, ..@l3
..@l4:
	INC	-, -, J_prn_i
	JMP	-, -, ..@l1
..@l2:
	ASS	0, -, J_prn_i
..@l7:
	LOAD	J_prn_he, J_prn_i, J_prn_&3
	ADD	J_prn_&3, 1, J_prn_&4
	AARR	J_prn_&4, J_prn_i, J_prn_he
	ADD	J_prn_i, 1, J_prn_&5
	ASS	J_prn_&5, -, J_prn_i
	LOAD	J_prn_he, J_prn_i, J_prn_&6
	EQU	J_prn_&6, 4, ..@l8
	JMP	-, -, ..@l7
..@l8:
	ASS	0, -, J_prn_i
..@l9:
	GTT	J_prn_i, 4, ..@l10
	LOAD	J_prn_he, J_prn_i, J_prn_&7
	WRI	-, -, J_prn_&7
	INC	-, -, J_prn_i
	JMP	-, -, ..@l9
..@l10:
	FIN	-, -, -

main:
	CALL	J_prn, -, -
	FIN	-, -, -


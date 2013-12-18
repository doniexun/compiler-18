J_TestCase09$IR:
	ASS	1, -, J_TestCase09$IR_a
	ASS	2, -, J_TestCase09$IR_b
	AARR	1, J_TestCase09$IR_a, J_TestCase09$IR_e
	AARR	2, J_TestCase09$IR_b, J_TestCase09$IR_f
	LOAD	J_TestCase09$IR_e, J_TestCase09$IR_a, J_TestCase09$IR_&1
	GTT	J_TestCase09$IR_&1, J_TestCase09$IR_a, ..@l1
	WRI	-, -, 2
	JMP	-, -, ..@l2
..@l1:
	WRI	-, -, 1
..@l2:
	LOAD	J_TestCase09$IR_f, J_TestCase09$IR_b, J_TestCase09$IR_&2
	LOAD	J_TestCase09$IR_e, J_TestCase09$IR_a, J_TestCase09$IR_&3
	GEQ	J_TestCase09$IR_&2, J_TestCase09$IR_&3, ..@l3
	WRI	-, -, 4
	JMP	-, -, ..@l4
..@l3:
	WRI	-, -, 3
..@l4:
	LOAD	J_TestCase09$IR_e, J_TestCase09$IR_a, J_TestCase09$IR_&4
	EQU	J_TestCase09$IR_&4, J_TestCase09$IR_a, ..@l5
	WRI	-, -, 7
	JMP	-, -, ..@l6
..@l5:
	WRI	-, -, 6
..@l6:
	LOAD	J_TestCase09$IR_f, J_TestCase09$IR_b, J_TestCase09$IR_&5
	NEQ	J_TestCase09$IR_&5, J_TestCase09$IR_a, ..@l7
	WRI	-, -, 9
	JMP	-, -, ..@l8
..@l7:
	WRI	-, -, 8
..@l8:
	LOAD	J_TestCase09$IR_f, J_TestCase09$IR_b, J_TestCase09$IR_&6
	LST	J_TestCase09$IR_&6, J_TestCase09$IR_a, ..@l9
	WRI	-, -, 11
	JMP	-, -, ..@l10
..@l9:
	WRI	-, -, 10
..@l10:
	LOAD	J_TestCase09$IR_e, J_TestCase09$IR_a, J_TestCase09$IR_&7
	LEQ	J_TestCase09$IR_b, J_TestCase09$IR_&7, ..@l11
	WRI	-, -, 13
	JMP	-, -, ..@l12
..@l11:
	WRI	-, -, 12
..@l12:
	LOAD	J_TestCase09$IR_e, J_TestCase09$IR_a, J_TestCase09$IR_&8
	NEQ	J_TestCase09$IR_&8, J_TestCase09$IR_a, ..@l13
	WRI	-, -, 14
	JMP	-, -, ..@l14
..@l13:
	WRI	-, -, 13
..@l14:
	FIN	-, -, -

main:
	PUSHA	-, -, *J_k
	CALL	J_TestCase09$IR, -, -
	FIN	-, -, -


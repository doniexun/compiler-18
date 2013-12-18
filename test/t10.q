J_ge:
	ASS	0, -, J_ge_index
..@l1:
	GTT	J_ge_index, 9, ..@l2
	AARR	J_ge_index, J_ge_index, J_ge_c
	INC	-, -, J_ge_index
	JMP	-, -, ..@l1
..@l2:
	ASS	0, -, J_ge_index
..@l3:
	GTT	J_ge_index, 9, ..@l4
	LOAD	J_ge_c, J_ge_index, J_ge_&1
	AARR	J_ge_index, J_ge_&1, J_ge_b
	INC	-, -, J_ge_index
	JMP	-, -, ..@l3
..@l4:
	ASS	0, -, J_ge_index
..@l5:
	GTT	J_ge_index, 9, ..@l6
	LOAD	J_ge_c, J_ge_index, J_ge_&3
	LOAD	J_ge_b, J_ge_&3, J_ge_&2
	AARR	J_ge_index, J_ge_&2, J_ge_a
	INC	-, -, J_ge_index
	JMP	-, -, ..@l5
..@l6:
	LOAD	J_ge_c, 5, J_ge_&4
	LOAD	J_ge_c, 1, J_ge_&7
	LOAD	J_ge_b, J_ge_&7, J_ge_&6
	MUL	J_ge_&4, J_ge_&6, J_ge_&5
	LOAD	J_ge_c, 2, J_ge_&11
	LOAD	J_ge_b, J_ge_&11, J_ge_&10
	LOAD	J_ge_c, 2, J_ge_&13
	MUL	J_ge_&10, J_ge_&13, J_ge_&12
	LOAD	J_ge_a, J_ge_&12, J_ge_&9
	LOAD	J_ge_a, 2, J_ge_&15
	LOAD	J_ge_a, 1, J_ge_&17
	SUB	J_ge_&15, J_ge_&17, J_ge_&16
	DIV	J_ge_&9, J_ge_&16, J_ge_&14
	ADD	J_ge_&5, J_ge_&14, J_ge_&8
	LOAD	J_ge_b, 2, J_ge_&19
	SUB	J_ge_&8, J_ge_&19, J_ge_&18
	LOAD	J_ge_b, 3, J_ge_&21
	ADD	J_ge_&18, J_ge_&21, J_ge_&20
	LOAD	J_ge_b, 4, J_ge_&23
	SUB	J_ge_&20, J_ge_&23, J_ge_&22
	ADD	J_ge_&22, 1, J_ge_&24
	ASS	J_ge_&24, -, J_ge_final
	ASS	0, -, J_ge_index
..@l7:
	GTT	J_ge_index, 9, ..@l8
	LOAD	J_ge_a, J_ge_index, J_ge_&25
	WRI	-, -, J_ge_&25
	INC	-, -, J_ge_index
	JMP	-, -, ..@l7
..@l8:
	WRI	-, -, J_ge_final
	FIN	-, -, -

main:
	CALL	J_ge, -, -
	FIN	-, -, -


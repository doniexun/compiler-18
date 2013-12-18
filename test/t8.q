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
	ASS	0, -, J_ge_index
..@l7:
	GTT	J_ge_index, 9, ..@l8
	LOAD	J_ge_a, J_ge_index, J_ge_&4
	WRI	-, -, J_ge_&4
	INC	-, -, J_ge_index
	JMP	-, -, ..@l7
..@l8:
	FIN	-, -, -

main:
	CALL	J_ge, -, -
	FIN	-, -, -


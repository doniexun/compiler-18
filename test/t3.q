J_hh_pri_he:
	AARR	2, J_hh_i, J_hh_ar
	FIN	-, -, -

J_hh_pri:
	ASS	1, -, J_hh_i
	CALL	J_hh_pri_he, -, -
	FIN	-, -, -

J_hh:
	CALL	J_hh_pri, -, -
	LOAD	J_hh_ar, J_hh_i, J_hh_&1
	WRI	-, -, J_hh_&1
	FIN	-, -, -

main:
	CALL	J_hh, -, -
	FIN	-, -, -


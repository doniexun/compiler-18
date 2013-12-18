J_h1$IR_h2$IR_h3$IR:
	ASS	9, -, J_h1$IR_h2$IR_h3$IR_i
	FIN	-, -, -

J_h1$IR_h2$IR:
	PUSHA	-, -, *J_h1$IR_h2$IR_i
	CALL	J_h1$IR_h2$IR_h3$IR, -, -
	FIN	-, -, -

J_h1$IR:
	PUSHA	-, -, *J_h1$IR_i
	CALL	J_h1$IR_h2$IR, -, -
	FIN	-, -, -

main:
	PUSHA	-, -, *J_i
	CALL	J_h1$IR, -, -
	WRI	-, -, J_i
	FIN	-, -, -


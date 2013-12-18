J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_h6$IR:
	ASS	6, -, J_h1$IR_i1
	ASS	6, -, J_h1$IR_h2$IR_i2
	ASS	6, -, J_h1$IR_h2$IR_h3$IR_i3
	ASS	6, -, J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	ASS	6, -, J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_i5
	ASS	6, -, J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_h6$IR_i6
	WRI	-, -, J_h1$IR_i1
	WRI	-, -, J_h1$IR_h2$IR_i2
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_i3
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_i5
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_h6$IR_i6
	FIN	-, -, -

J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR:
	ASS	5, -, J_h1$IR_i1
	ASS	5, -, J_h1$IR_h2$IR_i2
	ASS	5, -, J_h1$IR_h2$IR_h3$IR_i3
	ASS	5, -, J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	ASS	5, -, J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_i5
	WRI	-, -, J_h1$IR_i1
	WRI	-, -, J_h1$IR_h2$IR_i2
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_i3
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_i5
	PUSHA	-, -, *J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_i5
	CALL	J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR_h6$IR, -, -
	FIN	-, -, -

J_h1$IR_h2$IR_h3$IR_h4$IR:
	ASS	4, -, J_h1$IR_i1
	ASS	4, -, J_h1$IR_h2$IR_i2
	ASS	4, -, J_h1$IR_h2$IR_h3$IR_i3
	ASS	4, -, J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	WRI	-, -, J_h1$IR_i1
	WRI	-, -, J_h1$IR_h2$IR_i2
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_i3
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	PUSHA	-, -, *J_h1$IR_h2$IR_h3$IR_h4$IR_i4
	CALL	J_h1$IR_h2$IR_h3$IR_h4$IR_h5$IR, -, -
	FIN	-, -, -

J_h1$IR_h2$IR_h3$IR:
	ASS	3, -, J_h1$IR_i1
	ASS	3, -, J_h1$IR_h2$IR_i2
	ASS	3, -, J_h1$IR_h2$IR_h3$IR_i3
	WRI	-, -, J_h1$IR_i1
	WRI	-, -, J_h1$IR_h2$IR_i2
	WRI	-, -, J_h1$IR_h2$IR_h3$IR_i3
	PUSHA	-, -, *J_h1$IR_h2$IR_h3$IR_i3
	CALL	J_h1$IR_h2$IR_h3$IR_h4$IR, -, -
	FIN	-, -, -

J_h1$IR_h2$IR:
	ASS	2, -, J_h1$IR_i1
	ASS	2, -, J_h1$IR_h2$IR_i2
	WRI	-, -, J_h1$IR_i1
	WRI	-, -, J_h1$IR_h2$IR_i2
	PUSHA	-, -, *J_h1$IR_h2$IR_i2
	CALL	J_h1$IR_h2$IR_h3$IR, -, -
	FIN	-, -, -

J_h1$IR:
	ASS	1, -, J_h1$IR_i1
	WRI	-, -, J_h1$IR_i1
	PUSHA	-, -, *J_h1$IR_i1
	CALL	J_h1$IR_h2$IR, -, -
	FIN	-, -, -

main:
	PUSHA	-, -, *J_i0
	CALL	J_h1$IR, -, -
	FIN	-, -, -


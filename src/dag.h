/**
 * File: dag.h
 * Date: Dec 10, 2013
 * Author: Jeanhwea
 */
#ifndef DAG_H

#define DAG_H

typedef struct _DagNodeS *DagNodeSP;
typedef struct _NodeTabS *NodeTabSP;
typedef struct _NTListS *NTListSP;

typedef struct _DagNodeS {
	int id;
	QuadSP op;
	NTListSP vals;
	DagNodeSP left;
	DagNodeSP right;
} DagNodeS;

typedef struct _NodeTabS {
	SymTabESP name;
	DagNodeSP node;
	NodeTabSP next;
} NodeTabS;

typedef struct _NTListS {
	NodeTabSP nodetable;
	NTListSP next;
} NTListS;

#define NEWDAGNODE(v) \
do { \
	v = (DagNodeSP) malloc(sizeof(DagNodeS));		\
	if (v == NULL) {					\
		fprintf(errlist, "OUTOFMEM: on build dag\n");	\
		exit(1);					\
	}							\
	v->vals = NULL;						\
	v->left = NULL;						\
	v->right = NULL;					\
} while(0)

#define NEWNODETAB(v) \
do { \
	v = (NodeTabSP) malloc(sizeof(NodeTabS));		\
	if (v == NULL) {					\
		fprintf(errlist, "OUTOFMEM:  node table\n");	\
		exit(1);					\
	}							\
	v->name = NULL;						\
	v->node = NULL;						\
	v->next = NULL;						\
} while(0)

#define DAGABLE(v) (\
(v->op==ADD_op)||(v->op==SUB_op)||(v->op==MUL_op)||(v->op==DIV_op)\
||(v->op==INC_op)||(v->op==DEC_op)||(v->op==NEG_op)\
||(v->op==EQU_op)||(v->op==NEQ_op)||(v->op==GTT_op)\
||(v->op==GEQ_op)||(v->op==LST_op)||(v->op==LEQ_op)\
||(v->op==JMP_op)||(v->op==SRET_op)\
)

#endif /* end of include guard: DAG_H */

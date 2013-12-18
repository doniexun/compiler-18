/**
 * File: bblock.h
 * Date: Dec 10, 2013
 * Author: Jeanhwea
 */
#ifndef BBLOCK_H

#define BBLOCK_H

typedef struct _BBS *BBSP;
typedef struct _BBListS *BBListSP;

typedef struct _BBListS {
	BBSP bbp;
	BBListSP next;
} BBListS;

typedef struct _BBS {
	int id;
	// point to a function or procedure quadruples
	QuadSP scope; 
	QuadSP first;
	QuadSP last;
	// DAG node info
	DagNodeSP dag;
	NodeTabSP dnt; // dag nodes table
} BBS;

#define NEWBBLIST(v) \
do { \
	v = (BBListSP) malloc(sizeof(BBListS));			\
	if (v == NULL) {					\
		fprintf(errlist, "OUTOFMEM: on build bblock\n");\
		exit(1);					\
	}							\
	v->bbp = NULL;						\
	v->next = NULL;						\
} while(0)

#define NEWBB(v) \
do { \
	v = (BBSP) malloc(sizeof(BBS));				\
	if (v == NULL) {					\
		fprintf(errlist, "OUTOFMEM: on build bblock\n");\
		exit(1);					\
	}							\
	v->dag = NULL;						\
	v->dnt = NULL;						\
} while(0)

#define PFHEAD(v) (v->op==ENTER_op)
#define FINISH(v) (v->op==FIN_op)
#define LABEL(v) (v->op==LABEL_op)
#define BRANCE(v) (\
(v->op==EQU_op)||(v->op==NEQ_op)||(v->op==GTT_op)\
||(v->op==GEQ_op)||(v->op==LST_op)||(v->op==LEQ_op)\
||(v->op==JMP_op)\
)

extern BBListSP bblst;

void initLeader(void);
BBSP newBblock(void);
void addBblock(BBSP);
BOOL quad_end(void);
void printBblock(BBSP);
void printAllBblock();

#endif /* end of include guard: BBLOCK_H */

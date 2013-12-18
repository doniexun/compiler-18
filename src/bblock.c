/**
 * File: bblock.c
 * Date: Dec 10, 2013
 * Author: Jeanhwea
 */
 
#include "global.h"
#include "parse.h"
#include "symtab.h"
#include "quad.h"
#include "dag.h"
#include "bblock.h"

// qlst => quadruples list after semantic analysis
// see qaud.c
static QuadSP leader = NULL ;

// header pointer to the function 
// the current block blogs to
static QuadSP header = NULL; 

static int bblock_id = 0;

// point to basic block head
BBListSP bblst = NULL;
// point to basic block list after 
// basic block partition
BBListSP bbtail = NULL;
BOOL quad_end_flag = FALSE;

void initLeader(void)
{
	leader = qlst;
	header = qlst;
}

static QuadSP nextleader(void)
{
	QuadSP p;
	// jump continues labels
	// notes that, we need do this if and only if
	// the leader is a label, or we will make mistakes
	for (   p = leader->next; 
		p != NULL && LABEL(leader) && LABEL(p); 
		p = p->next ) 
		;
	for (; p != NULL; p = p->next) {
		if (PFHEAD(p)) {
			header = p;
			leader = p;
			return p;
		} else if (PFHEAD(leader)) {
			leader = p;
			return p;
		} else if (FINISH(p)) {
			leader = p;
			return p;
		} else if (LABEL(p)) {
			leader = p;
			return p;
		} else if (BRANCE(p)) {
			leader = p->next;
			return p->next;
		}
	}
	leader = NULL;
	quad_end_flag = TRUE;
	return NULL;
}

BBSP newBblock(void)
{
	BBSP p;
	NEWBB(p);
	p->id = ++bblock_id;
	p->scope = header;
	p->first = leader;
	nextleader();
	if (leader != NULL) {
		p->last = leader->prev;
	} else {
		p->last = NULL;
	}
	return p;
}

void addBblock(BBSP b)
{
	BBListSP bl;
	// BBListSP in, out;
	if (bbtail == NULL) {
		NEWBBLIST(bl);
		bl->bbp = b;
		bl->next = NULL;
		bblst = bbtail = bl;
	} else {
		if (!PFHEAD(b->first)) {
			// do natural link
			// from top downto buttom
			// NEWBBLIST(in);
			// in->bbp = bbtail->bbp;
			// in->next = NULL;
			// b->ins= in;
			// NEWBBLIST(out);
			// out->bbp = b;
			// out->next = NULL;
			// bbtail->bbp->outs = out;
		}

		NEWBBLIST(bl);
		bl->bbp = b;
		bl->next = NULL;
		bbtail->next = bl;
		bbtail = bl;
	}
}

BOOL quad_end(void)
{
	return quad_end_flag;
}

void printBblock(BBSP b)
{
	QuadSP p;
	// BBListSP q;
	fprintf(code, "\nBBLOCK_ID = %d; SCOPE = %s\n", 
		b->id, b->scope->d->name);
	// fprintf(code, "INS = ");
	// for (q = b->ins; q != NULL; q = q->next) {
	// 	fprintf(code, "%d ", q->bbp->id);
	// }
	// fprintf(code, "\n");
	// fprintf(code, "OUTS = ");
	// for (q = b->outs; q != NULL; q = q->next) {
	// 	fprintf(code, "%d ", q->bbp->id);
	// }
	// fprintf(code, "\n");
	fprintf(code, "---------------------------------------");
	fprintf(code, "-------------------------------------\n");
	for (p = b->first; p != NULL; p = p->next) {
		printQuad(p);
		if (p == b->last) 
			break;
	}
	fprintf(code, "---------------------------------------");
	fprintf(code, "-------------------------------------\n");
}

void printAllBblock()
{
	BBListSP p;
	for (p = bblst; p != NULL; p = p->next) {
		printBblock(p->bbp);
	}
}

void doLink()
{
	BBListSP p;
	for (p = bblst; p != NULL; p = p->next) {
		
	}
}


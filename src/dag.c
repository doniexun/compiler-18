/**
 * File: dag.c
 * Date: Dec 10, 2013
 * Author: Jeanhwea
 */
#include "global.h"
#include "parse.h"
#include "symtab.h"
#include "quad.h"
#include "dag.h"
#include "bblock.h"
#include "fgraph.h"

// point to current basic block's node table head
NodeTabSP tabhead = NULL;
// point to current basic block's node table tail
NodeTabSP tabtail = NULL;

DagNodeSP daghead = NULL;

int dag_node_id = 0;

static BOOL inDagNode(SymTabESP e, DagNodeSP d)
{
	NTListSP p;
	for (p = d->vals; p != NULL; p = p->next) {
		if (p->nodetable->name == e) {
			return TRUE;
		}
	}
	return FALSE;
}

DagNodeSP newDagNode(QuadSP op)
{
	DagNodeSP d;
	NEWDAGNODE(d);
	d->id = ++dag_node_id;
	d->op = op;
	return d;
}

DagNodeSP lookup_dag(QuadSP op, SymTabESP l, SymTabESP r, DagNodeSP d)
{
	DagNodeSP ret;
	if (d == NULL) return NULL;
	if (    d->op == op && 
		inDagNode(l, d->left) &&
		inDagNode(r, d->right) ) {
		return d;
	}
	if (d->left == d->right) {
		return lookup_dag(op, l, r, d->left);
	} else {
		ret = lookup_dag(op, l, r, d->left);
		if (ret != NULL) return ret;
		return lookup_dag(op, l, r, d->right);
	}
}

NodeTabSP lookup_nodetab(SymTabESP key)
{
	NodeTabSP p;
	for (p = tabhead; p != NULL; p = p->next) {
		if (key == p->name) 
			return p;
	}
	return NULL;
}

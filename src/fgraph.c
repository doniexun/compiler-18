/**
 * File: fgraph.c
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

// point to basic block head
// BBListSP bblst = NULL; see bblock.c

void make_fgraph(void)
{
	BBSP b;
	initLeader();
	do {
		b = newBblock();
		addBblock(b);
		// printBblock(b);
	} while (!quad_end());
	printAllBblock();
}

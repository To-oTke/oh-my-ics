#include <stdio.h>
#include "list_and_tree.h"

void build_list()
{
    List x = malloc(sizeof(struct List_));
    List y = malloc(sizeof(struct List_));

    x->link = y;
    x->key = 7;

    y->link = x;
    y->key = 9;

    while (1)
        ;
}

void build_tree()
{
    Tree p, r;
    int q;

    p = make_tree();
    r = p.right;
    q = r.key;

    show_tree(p);
}
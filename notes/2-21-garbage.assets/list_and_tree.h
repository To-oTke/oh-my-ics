typedef struct List_
{
    struct List_ *link;
    int key;
} * List;

typedef struct Tree_
{
    int key;
    struct Tree_ *left;
    struct Tree_ *right;
} * Tree;

Tree make_tree();
void show_tree();
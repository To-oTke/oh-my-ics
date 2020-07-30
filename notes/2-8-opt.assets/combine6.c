#include "defs.h"

void combine6(vec_ptr v, int *dest)
{
	int i;
	int length = vec_length(v), limit = length - 1;
	data_t *data = get_vec_start(v);
	data_t acc0 = IDENT, acc1 = IDENT;

	/* combine 2 elements at a time */
	for (i = 0; i < limit; i += 2)
	{
		acc0 = acc0 OPER data[i];
		acc1 = acc1 OPER data[i + 1];
	}

	/* finish any remaining elements */
	for (; i < length; i++)
		acc0 = acc0 OPER data[i];

	*dest = acc0 OPER acc1;
}

#include "defs.h"

void combine5(vec_ptr v, int *dest)
{
	int i;
	int length = vec_length(v);
	int limit = length - 2;
	data_t *data = get_vec_start(v);
	data_t acc = IDENT;

	/* combine 2 elements at a time */
	for (i = 0; i < limit; i += 2)
		acc = acc OPER data[i] OPER data[i + 1];

	/* finish any remaining elements */
	for (; i < length; i++)
		acc = acc OPER data[i];

	*dest = acc;
}

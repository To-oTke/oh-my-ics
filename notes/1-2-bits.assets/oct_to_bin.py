#!/usr/bin/env python

# 将 Oct 转化为 Bin 之后
# 其二进制表示的位数不会超过 maxx
maxx = int(log(num, 2))

result = []
for i in range(maxx, -1, -1):
    # 用 2 ** i 从大到小除
	if num // (2 ** i) != 0:
        # 如果能够除则置该位为 1
		num %= (2 ** i)
		result.append('1')
	else:
        # 否则置为 0
		result.append('0')

print(''.join(result))
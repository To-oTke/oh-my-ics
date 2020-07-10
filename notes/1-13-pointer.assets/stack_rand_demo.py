#!/usr/bin/env python3

import os
# import time

addresses = []

try:
    while True:
        line = os.popen("./stack_rand").readlines()[0]
        addr = int(line[9:-1], base=16)
        addresses.append(addr)
        print(line, end='')
        # time.sleep(0.01)
except KeyboardInterrupt:
    print("\nexecuted %d times\nmin addr: %s, max addr: %s\nrange: %s" %
          (len(addresses), hex(min(addresses)), hex(max(addresses)), hex(max(addresses) - min(addresses))))

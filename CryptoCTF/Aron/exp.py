#!/usr/bin/env python
# -*- coding:utf-8 -*-
# author: lanzhaoxian
# time: 2019/x/x

from pwn import *

c = remote('167.71.62.250', 12439)
tips1 = c.recv()
print(tips1)

c.interactive()

if __name__ == '__main__':
    pass


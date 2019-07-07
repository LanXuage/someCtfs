#/usr/bin/python
from hashlib import *
from base64 import *
username = ''
sha1Hash = sha1(username.encode('utf-8')).hexdigest()
l = len(sha1Hash)
single = ''
double = ''
i = 0
while i < l:
    single += hex(ord(sha1Hash[i]))[2:]
    i += 1
    double += hex(ord(sha1Hash[i]))[2:]
    i += 1
res = ''
for i in range(l):
    res += hex(ord(single[i]) & ord(double[l - 1 - i]))[2:]
print(b64encode(bytes(res, encoding='utf-8')))

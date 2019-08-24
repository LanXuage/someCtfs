#!/usr/bin/env python
# -*- coding:utf-8 -*-
# author: lanzhaoxian
# time: 2019/x/x


ac = b"\007+?>!\023|CU\030o*\005M;j\ts,=\005M;\030\017s*h,J\027F0s?8\022#{Z\007:"
ai = b'aG^YZyH5'
res = ''
for i in range(len(ac)):
    res += chr(ac[i]^ai[i%8])

print(res)
# flag{j4u4_1s_4s\\h4rd_4s.n4t1v3_pQ4aaHZ3lf}



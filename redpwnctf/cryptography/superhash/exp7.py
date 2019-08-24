#!/usr/bin/env python
# -*- coding:utf-8 -*-
# author: lanzhaoxian
# time: 2019/x/x

import sys
from hashlib import md5

c = 'cd04302cbbd2e0eb259f53fac7c57ee2' 

if __name__ == '__main__':
    for a in range(81, 85):
        for b in range(49, 127):
            for c in range(49, 127):
                for d in range(49, 127):
                    tmp = chr(a) + chr(b) + chr(c) + chr(d)
                    print(tmp)
                    cc = tmp
                    for i in range(10):
                        cc = md5(cc.encode()).hexdigest()
                    if  cc == c:
                        print(tmp)
                        break
                    for e in range(49, 127):
                        print(tmp)
                        tmp = chr(a) + chr(b) + chr(c) + chr(d) + chr(e)
                        cc = tmp
                        for i in range(10):
                            cc = md5(cc.encode()).hexdigest()
                        if cc == c:
                            print(tmp)
                            break


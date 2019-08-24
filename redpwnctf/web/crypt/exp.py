your safely encrypted flag is vdDby72W15O2qrnJtqep0cSnsd3HqZzbx7io27C7tZi7lanYx6jPyb2nsczHuMec

f=>btoa([...btoa(f)].map(s=>String.fromCharCode(s.charCodeAt(0)+(location.host.charCodeAt(0)%location.host.charCodeAt(3)))).join(''))
s[0] + (99%108)
[...btoa('xyz')].map(s=>String.fromCharCode(s.charCodeAt(0))).join('')

import base64
c = b'vdDby72W15O2qrnJtqep0cSnsd3HqZzbx7io27C7tZi7lanYx6jPyb2nsczHuMec'
c = base64.b64decode(c)
cc = ''
for i in c:
 cc += chr(i - 99)
cc = bytes(cc.encode())
flag = base64.b64decode(cc)
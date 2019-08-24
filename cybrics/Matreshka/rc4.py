import requests
import base64
import hashlib
def crypt(data,key) :
    s = [0] * 256
    for i in range(256) :
        s[i] = i
    print(s)
    j = 0
    for i in range(256) :
        j = (j + s[i] + key[i % len(key)]) % 256
        print(j)
        s[i], s[j] = s[j], s[i]
    i = 0
    j = 0
    res = ""
    for c in data :
        i = (i + 1) % 256
        j = (j + s[i]) % 256
        s[i], s[j] = s[j], s[i]
        res = res + chr(c ^ s[(s[i] + s[j]) % 256])
    return res

def tdecode(data ,key) :
    data = base64.b64decode(data)
    salt = data[:16]
    return crypt(data[16:] ,hashlib.sha1(bytes(key,encoding = "utf8") + salt).digest())

if __name__ =='__main__':
    key = "\x01\x08\x03\x03\x07\x03\x03\x01" 			#填写key
    data = "\x53\xDD\xC5\x87\xE4\x63\x99\x14\x4F\xA4\x14\x2D\xC4\x24\x04\xC0\xB0"			#填写密文
    print(tdecode(data,key))
def C0rr3ct():
    print('Wow!!!You so best^_^')
    return

def Ch3cking(flag):
    if ord(flag[0]) + 52 != ord(flag[-1]):
        return
    if ord(flag[-1]) - 2 != ord(flag[7]):
        return
    if flag[:7] != 'ISITDTU':
        return
    
    if flag[9] != flag[14]:
        return
    if flag[14] != flag[19]:
        return
    if flag[19] != flag[24]:
        return
    if ord(flag[8]) != 49:
        return
    if flag[8] != flag[16]:
        return
    if flag[10:14] != 'd0nT':
        return            3
    if int(flag[18]) + int(flag[23]) + int(flag[28]) != 9:
        return
    if flag[18] != flag[28]:
        return
    if flag[15] != 'L':
        return
    if ord(flag[17]) ^ -10 != -99:
        return
    if ord(flag[20]) + 2 != ord(flag[27]):
        return
    if ord(flag[27]) > 123:
        return
    if ord(flag[20]) < 97:
        return 
    if ord(flag[27]) % 100 != 0:
        return
    if flag[25] != 'C':
        return
    if ord(flag[26]) % 2 != 0:
        return
    if ord(flag[26]) % 3 != 0:
        return
    if ord(flag[26]) % 4 != 0:
        return
    if not flag[26].isdigit():
        return
    if int(flag[23]) != 3:
        return 
    if flag[22] != flag[13].lower():
        return
    tmp = 0
    for i in flag:
        tmp += ord(i)
    if tmp != 2441:
        return
    print('good')

Ch3cking('ISITDTU{1_d0nT_L1k3_b:t3_C0d3}')

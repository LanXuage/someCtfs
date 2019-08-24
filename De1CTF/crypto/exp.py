from itertools import *

cipher = bytes.fromhex('49380d773440222d1b421b3060380c3f403c3844791b202651306721135b6229294a3c3222357e766b2f15561b35305e3c3b670e49382c295c6c170553577d3a2b791470406318315d753f03637f2b614a4f2e1c4f21027e227a4122757b446037786a7b0e37635024246d60136f7802543e4d36265c3e035a725c6322700d626b345d1d6464283a016f35714d434124281b607d315f66212d671428026a4f4f79657e34153f3467097e4e135f187a21767f02125b375563517a3742597b6c394e78742c4a725069606576777c314429264f6e330d7530453f22537f5e3034560d22146831456b1b72725f30676d0d5c71617d48753e26667e2f7a334c731c22630a242c7140457a42324629064441036c7e646208630e745531436b7c51743a36674c4f352a5575407b767a5c747176016c0676386e403a2b42356a727a04662b4446375f36265f3f124b724c6e346544706277641025063420016629225b43432428036f29341a2338627c47650b264c477c653a67043e6766152a485c7f33617264780656537e5468143f305f4537722352303c3d4379043d69797e6f3922527b24536e310d653d4c33696c635474637d0326516f745e610d773340306621105a7361654e3e392970687c2e335f3015677d4b3a724a4659767c2f5b7c16055a126820306c14315d6b59224a27311f747f336f4d5974321a22507b22705a226c6d446a37375761423a2b5c29247163046d7e47032244377508300751727126326f117f7a38670c2b23203d4f27046a5c5e1532601126292f577776606f0c6d0126474b2a73737a41316362146e581d7c1228717664091c')
salt="WeAreDe1taTeam"
si=cycle(salt)

res1 = ''
for i in cipher:
    res1 += chr(i^ord(next(si)))

res1 = res1.encode('utf-8')
print(res1)

# for l in range(1, 38):
# print('----------------------------' + str(l))
l = 30
res = ['*' for i in range(600)]
for i in range(600):
    tmp = res1[i]
    f = True
    j = i % l
    while j < 600:
        if i != j:
            ttmp = tmp^res1[j]
            if not chr(ttmp).isalpha() and  ttmp != 64 and  ttmp != 0 and  ttmp != 27 and ttmp != 12 and ttmp != 14 and ttmp != 1 and ttmp != 7 and ttmp != 2:
            # if not chr(ttmp).isalpha():
                f = False
                break
        j += l
    # if f and chr(res1[i]).isalpha():
    if f:
        # print(str(i) + '------' + chr(res1[i]))
        jj = i % l
        while jj < 600:
            if jj != i:
                res[jj] = chr(res1[i]^res1[jj]^32)
            jj += l
        res[i] = ' '
print(''.join(res))

flag = ['*' for i in range(l)]
for i in range(l):
    j = i
    v = '*'
    while j < 600:
        if res[j] != '*':
            tmp = chr(ord(res[j])^res1[j])
            if v == '*':
                v = tmp
            else:
                if v != tmp:
                    print("error: " + str(j))
                    v = '*'
                    break
        j += l
    flag[i] = v
print(''.join(flag))

# pre = 0
# for i in range(len(res1)):
#     if chr(res1[i]).isalpha():
#         if res1[i] == 79:
#             print(i - pre)
#             pre = i
        # print(str(i) + '------' + chr(res1[i]^32))
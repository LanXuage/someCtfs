# Math
简单的四则运算，有几十轮，靠人算有点难，只能使用代码识别输出然后计算求出结果再发送回去。
简单粗暴效率低的代码如下：
```python
from pwn import *

n0 = '\n  ###   \n #   #  \n#     # \n#     # \n#     # \n #   #  \n  ###   \n'

n1 = '''
  #   
 ##   
# #   
  #   
  #   
  #   
##### 
'''
n2 = '''
 #####  
#     # 
      # 
 #####  
#       
#       
####### 
'''
n3 = '''
 #####  
#     # 
      # 
 #####  
      # 
#     # 
 #####  
'''

n4 = '''
#       
#    #  
#    #  
#    #  
####### 
     #  
     #  
'''
n5 = '''
####### 
#       
#       
######  
      # 
#     # 
 #####  
'''
n6 = '''
 #####  
#     # 
#       
######  
#     # 
#     # 
 #####  
'''
n7 = '''
####### 
#    #  
    #   
   #    
  #     
  #     
  #     
'''
n8 = '''
 #####  
#     # 
#     # 
 #####  
#     # 
#     # 
 #####  
'''
n9 = '''
 #####  
#     # 
#     # 
 ###### 
      # 
#     # 
 #####  
'''
add = '''
      
  #   
  #   
##### 
  #   
  #   
      
'''
sub = '''
      
      
      
##### 
      
      
      
'''
mul = '''
        
 #   #  
  # #   
####### 
  # #   
 #   #  
        
'''
e = '''
        
        
   #####
        
   #####
        
        
'''
c = remote('104.154.120.223', 8083)

def cut(data, pos, l):
    res = ''
    for i in data:
        res += '\n' + i[pos:pos + l]
    return res[1:]

for i in range(100):
	n = ''
	x = 0
	t = 0
	data = c.recvuntil('>>>').split('\n')
	i = 0
	data.pop()
	data[0] = ''
	data[8] = ''
	while i + 5 < len(data[1]):
	    f = True
	    for j in range(1, 8):
	        if (data[j][i + 5] != ' '):
	            f = False
	    if f:
	        g = cut(data, i, 6)
	        if g == add:
	            x = int(n)
	            n = ''
	            t = 0
	            print(str(x) + '---' + str(t))
	        elif g == sub:
	            x = int(n)
	            n = ''
	            t = 1
	            print(str(x) + '---' + str(t))
	        elif g == mul:
	            x = int(n)
	            n = ''
	            t = 2
	            print(str(x) + '---' + str(t))
	        elif g == e:
	            if t == 0:
	                c.sendline(str(x + int(n)))
	            elif t == 1:
	                c.sendline(str(x - int(n)))
	            elif t == 2:
	                c.sendline(str(x * int(n)))
	        elif g == n0:
	            n += str(0)
	        elif g == n1:
	            n += str(1)
	        elif g == n2:
	            n += str(2)
	        elif g == n3:
	            n += str(3)
	        elif g == n4:
	            n += str(4)
	        elif g == n5:
	            n += str(5)
	        elif g == n6:
	            n += str(6)
	        elif g == n7:
	            n += str(7)
	        elif g == n8:
	            n += str(8)
	        elif g == n9:
	            n += str(9)
	        else:
	        	print('------------------------')
	        	print('g=' + g.replace('\n', '\\n'))
	        	print('------------------------')
	        	print(len(g))
	        i += 6
	    else:
	        g = cut(data, i, 8)
	        if g == add:
	            x = int(n)
	            n = ''
	            t = 0
	            print(str(x) + '---' + str(t))
	        elif g == sub:
	            x = int(n)
	            n = ''
	            t = 1
	            print(str(x) + '---' + str(t))
	        elif g == mul:
	            x = int(n)
	            n = ''
	            t = 2
	            print(str(x) + '---' + str(t))
	        elif g == e:
	            if t == 0:
	                c.sendline(str(x + int(n)))
	            elif t == 1:
	                c.sendline(str(x - int(n)))
	            elif t == 2:
	                c.sendline(str(x * int(n)))
	        elif g == n0:
	            n += str(0)
	        elif g == n1:
	            n += str(1)
	        elif g == n2:
	            n += str(2)
	        elif g == n3:
	            n += str(3)
	        elif g == n4:
	            n += str(4)
	        elif g == n5:
	            n += str(5)
	        elif g == n6:
	            n += str(6)
	        elif g == n7:
	            n += str(7)
	        elif g == n8:
	            n += str(8)
	        elif g == n9:
	            n += str(9)
	        else:
	        	print('------------------------')
	        	print('g=' + g.replace('\n', '\\n'))
	        	print('------------------------')
	        	print(len(g))
	        i += 8
	for i in data:
	    print(i)

c.interactive()
```
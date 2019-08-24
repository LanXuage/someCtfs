import idaapi
start_address = 0x4B68A0
data_length = 662
data = idaapi.dbg_read_memory(start_address , data_length)
fp = open('dump1.pyc', 'wb')
fp.write(data)
fp.close()

import visa
rm = visa.ResourceManager()
SDG6x = rm.open_resource('USB0::0xF4EC::0x1101::SDG6XBAX3R0080::INSTR')
print(SDG6x.query('*IDN?'))
print(SDG6x.query('C1:OUTPUT?'))
SDG6x.write('C1:OUTPUT OFF') 

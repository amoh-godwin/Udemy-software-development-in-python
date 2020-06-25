import re
prob = '20+12%*5'

percenatage = re.findall('[0-9]+%', prob)
print(percenatage)



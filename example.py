from kukavarproxy import *
robot = KUKA('172.31.1.147')


robot.write("MYAXIS",{'A1': 0, 'A2': -90, 'A3': 90, 'A4': 0, 'A5': 0, 'A6': 0})
print (robot.read("$OV_PRO"))

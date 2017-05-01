# _*_coding:utf-8_*_
import re
taikong={}
fengge={}

with open('/home/zheng/下载/数挖2017培训教学资料/week2 Python基础语言讲解/作业/太空旅客.txt' 'r',encoding = 'utf-8') as readFile:
    txt = readFile.read()

with open('/home/zheng/下载/数挖2017培训教学资料/week2 Python基础语言讲解/作业/词典/主题/风格.txt', 'r', encoding = 'utf-8') as readFile2:
    for line in readFile.readlines():
        line = line.strip('\n')
        reg = re.findall(line, txt)
        num = len(reg)
        fengge[line] = num
with open('/home/zheng/下载/数挖2017培训教学资料/week2 Python基础语言讲解/作业/词典/主题/风格.txt', 'w') as writeFile:
    for line in fengge:
        writeFile.write(str(fengge[line]))
        writeFile.write(' ')
        writeFile.write(line)
        writeFile.write('\n')
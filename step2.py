# coding=utf-8

def prc_line(line):
     _result = line.decode("utf-8").strip().split(" ")
     _result[2] = int(_result[2])
     _result[4] = int(_result[4])
     return _result


with open("../data/sql.txt","r") as f:
     datas = [prc_line(line) for line in f.readlines()]

for d in datas:
    cur.execute("insert into department(dept_name,building,budget) values('%s','%s'%d)"%(d[0],d[1],d[2]"
        "insert into peoples(name,sex,age,emotion_state,salary) values('%s','%s',%d,'%s',%d)"%(d[0],d[1],d[2],d[3],d[4])
    "insert into exam(student_ID,exam name, grade)
    values('% d', '%s', % d)"%(d[0],d[1],d[2])

    conn.commit()

#关闭游标cur.close()

#关闭连接conn.close()

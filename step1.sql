# 第一，建立department表
CREATE TABLE `department` (
# 属性的类型
  `dept_name` varchar(45) NOT NULL,
  `building` varchar(45) DEFAULT NULL,
  `budget` int(10) unsigned DEFAULT NULL,
# 主码设置
  PRIMARY KEY (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--------------------------------------------------

# 第二，建立student表
CREATE TABLE `student` (
# 属性的类型
  `ID` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  `emotion_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
# 唯一识别码设置为学生ID
  UNIQUE KEY `ID_UNIQUE` (`ID`),
# 设置外码为dept_name，参照department表的主码dept_name
  KEY `fk_student_1_idx` (`dept_name`),
  CONSTRAINT `fk_student_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL ON UPDATE CASCADE
# 前面设置了参照关系为删除时置零，更新时跟随
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--------------------------------------------------------

# 最后建立exam表
CREATE TABLE `exam` (
# 属性的类型
  `student_ID` int(10) unsigned NOT NULL,
  `exam_name` varchar(45) NOT NULL,
  `grade` int(10) unsigned DEFAULT NULL,
# 主码设置了两个，student_ID和exam_name
  PRIMARY KEY (`student_ID`,`exam_name`),
# 唯一识别码：学生的ID
  UNIQUE KEY `student_ID_UNIQUE` (`student_ID`),
# 设置外码为student_ID，参照student表的主码ID
  CONSTRAINT `fk_exam_1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
# 前面设置了参照关系为跟随
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





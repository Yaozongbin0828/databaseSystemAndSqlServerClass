CREATE DATABASE student
CREATE TABLE Student(
	Sno VARCHAR(9) PRIMARY KEY,
	Sname VARCHAR(10)NOT NULL,
	Ssex VARCHAR(2),
	Sage TINYINT,
	Sdept VARCHAR(20) DEFAULT '计算机系',
	Sid VARCHAR(18),
	Sdate DATE
);

INSERT INTO Student VALUES
(1,'aaa','男',20,'计算机系',4891,'2023-09-03'),
(2,'bbb','男',21,'计算机系',4892,'2023-09-03'),
(3,'ccc','男',22,'计算机系',4893,'2023-09-03'),
(4,'ddd','女',22,'计算机系',4894,'2023-09-03'),
(5,'eee','女',23,'计算机系',4895,'2023-09-03'),
(6,'fff','女',23,'计算机系',4896,'2023-09-03'),
(7,'ggg','男',24,'计算机系',4897,'2023-09-03'),
(8,'hhh','女',24,'计算机系',4898,'2023-09-03')

CREATE TABLE Course(
	Cno VARCHAR(10)  PRIMARY KEY,
	Cname CHAR(20) NOT NULL,
	Credit FLOAT,
	Semester FLOAT,
)

CREATE TABLE SC(
	Sno VARCHAR(9),
	Cno VARCHAR(10),
	Grade TINYINT,
	FOREIGN KEY(Sno) REFERENCES Student(Sno),
	FOREIGN KEY (Cno) REFERENCES Course(Cno),
)

CREATE TABLE Teacher(
	Tno CHAR(8) NOT NULL,
	Tname CHAR(10) NOT NULL,
	Salary FLOAT
)

SELECT * FROM Student;
SELECT * FROM Course
SELECT * FROM SC
SELECT * FROM Teacher

-- SQL_USE
-- 1.Teacher表添加职称列，列名Title,类型为nchar(4)
ALTER TABLE Teacher ADD Title nchar(4);
-- 2.Teacher表中的Title列添加取值范围约束，取值约束范围{教授，副教授，讲师}
ALTER TABLE Teacher ADD CONSTRAINT CK_TitleRange CHECK (Title IN ('教授', '副教授', '讲师'));
-- 3.Course表中Credit列数据更改tinyint
ALTER TABLE Course MODIFY Credit tinyint;
-- 4.删除Student表中的Sid和Sdate
ALTER TABLE Student DROP COLUMN  Sid;
ALTER TABLE Student DROP COLUMN  Sdate;
-- 5.Teacher表添加主键约束，主键为Tno
ALTER TABLE Teacher ADD PRIMARY KEY (Tno);					

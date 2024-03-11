-- 数据库student
CREATE DATABASE student

-- Student表
CREATE TABLE Student(
    Sno CHAR(9) PRIMARY KEY,
    Sname VARCHAR(10) NOT NULL,
    Ssex CHAR(2),
    CONSTRAINT CK_Ssex CHECK (Ssex IN ('男','女')),
    Sage TINYINT, 
    CONSTRAINT CK_Sage CHECK (Sage >= 15 AND Sage <= 45),
    Sdept VARCHAR(20) DEFAULT '计算机系',
    Sid CHAR(18) UNIQUE
    -- Sdate DATETIME DEFAULT CURRENT_TIMESTAMP,
);
-- Sdate
ALTER TABLE Student
ADD Sdate DATETIME DEFAULT CURRENT_TIMESTAMP;

-- 插入值
INSERT INTO Student VALUES
(1,'aaa','男',20,'计算机系',4891,'2023-09-03'),
(2,'bbb','男',21,'计算机系',4892,'2023-09-03'),
(3,'ccc','男',22,'计算机系',4893,'2023-09-03'),
(4,'ddd','女',22,'计算机系',4894,'2023-09-03'),
(5,'eee','女',23,'计算机系',4895,'2023-09-03'),
(6,'fff','女',23,'计算机系',4896,'2023-09-03'),
(7,'ggg','男',24,'计算机系',4897,'2023-09-03'),
(8,'hhh','女',24,'计算机系',4898,'2023-09-03')

-- Course表
CREATE TABLE Course(
	Cno CHAR(10) PRIMARY KEY,
	Cname VARCHAR(20) NOT NULL,
	Credit DECIMAL(3, 1) CHECK (Credit > 0),
	Semester TINYINT
)

-- SC表
CREATE TABLE SC (
    Sno CHAR(9),
    Cno CHAR(10),
    Grade TINYINT,
    FOREIGN KEY (Sno) REFERENCES Student(Sno),
    FOREIGN KEY (Cno) REFERENCES Course(Cno),
    CHECK (Grade >= 0 AND Grade <= 100)
);

-- Teacher表
CREATE TABLE Teacher(
	Tno CHAR(8) NOT NULL,
	Tname CHAR(10) NOT NULL,
	-- 定点小数，小数点前4位，小数点后2位
	Salary DECIMAL(6, 2)
)

-- 查表
SELECT * FROM Student
SELECT * FROM Course
SELECT * FROM SC
SELECT * FROM Teacher

-- 操作1
-- 1.Teacher表添加职称列，列名Title,类型为nchar(4)
ALTER TABLE Teacher 
ADD Title nchar(4);
-- 2.Teacher表中的Title列添加取值范围约束，取值约束范围{教授，副教授，讲师}
ALTER TABLE Teacher 
ADD CONSTRAINT CK_TitleRange CHECK (Title IN ('教授', '副教授', '讲师'));
-- 3.Course表中Credit列数据更改tinyint
ALTER TABLE Course 
MODIFY Credit tinyint;
-- 4.删除Student表中的Sid和Sdate
ALTER TABLE Student 
DROP COLUMN  Sid;
ALTER TABLE Student 
DROP COLUMN  Sdate;
-- 5.Teacher表添加主键约束，主键为Tno
ALTER TABLE Teacher 
ADD PRIMARY KEY (Tno);			

-- 操作2
-- 1.Teacher表添加职称列，列名Title,类型为nchar(4)
ALTER TABLE Teacher 
ADD Title NCHAR(4);
-- 2.Teacher表中的Title列添加取值范围约束，取值约束范围{教授，副教授，讲师}
ALTER TABLE Teacher 
ADD CONSTRAINT CK_Title CHECK (Title IN ('教授', '副教授', '讲师'));
-- 3.Course表中Credit列数据更改tinyint
ALTER TABLE Course 
ALTER COLUMN Credit TINYINT;
-- 4.删除Student表中的Sid和Sdate
ALTER TABLE Student 
DROP COLUMN Sid, Sdate;
-- 5.Teacher表添加主键约束，主键为Tno
ALTER TABLE Teacher 
ADD CONSTRAINT PK_Teacher PRIMARY KEY (Tno);

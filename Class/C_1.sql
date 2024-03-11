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

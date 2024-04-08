-- Student:
CREATE TABLE Student (
  Sno	char(9) PRIMARY KEY,   -- 在列级定义主键
  Sname  nchar(5) NOT NULL,
  Ssex  nchar(1)  CHECK( Ssex = '男' OR Ssex = '女'), 
  Sage  TINYINT ,
  Sdept nchar(20) 
)

INSERT INTO Student VALUES
(
"202011101","李勇","男",21,"计算机系"),
(
"202011102",	"刘晨",	"男",	20	,"计算机系"
),
(
"202011103",	"王敏",	"女",	20,	"计算机系"
),
(
"202011104"	,"张小红",	"女",	19	,"计算机系"
),
(
"202021101",	"张立",	"男",	20	,"信息管理系"
)
,(
"202021102"	,"吴宾",	"女",	19,	"信息管理系"
)
,(
"202021103"	,"张海",	"男"	,20,	"信息管理系"
),
(
"202031101"	,"钱小平",	"女",	21,	"通信工程系"
),
(
"202031102",	"王大力",	"男"	,20	,"通信工程系"
),
(
"202031103"	,"张珊珊",	"女",	19,	"通信工程系"
)

SELECT * FROM Student

-- SC：
CREATE TABLE SC (
  Sno	char(9),   -- 在列级定义主键
  Cno	char(6),
Grade  TINYINT ,
  primary key(Sno,Cno),
  foreign key(Sno) references Student(Sno),
  foreign key(Cno) references Course(Cno)
)

INSERT INTO SC (Sno,Cno,Grade)
VALUES
(
"202011101","C001",96
),
(
"202011101","C002",80
),
(
"202011101","C003",84
),
(
"202011101","C005",62
),
(
"202011102","C001",92
),
(
"202011102","C002",90
),
(
"202011102","C004",84
),
(
"202021102","C001",76
),
(
"202021102","C004",85
),
(
"202021102","C005",73
),
(
"202021102","C007",NULL
),
(
"202021103","C001",50
),
(
"202021103","C004",80
),
(
"202031101","C001",50
),
(
"202031101","C004",80
),
(
"202031102","C007",NULL
),
(
"202031103","C004",78
),
(
"202031103	","C005",65
),
(
"202031103	","C007",NULL
)

SELECT * FROM SC

-----------------------------
  
-- Course
CREATE TABLE Course (
  Cno	char(6) PRIMARY KEY,   -- 在列级定义主键
  Cname  nvarchar(20) NOT NULL, 
  Credit  TINYINT ,
  Semester  TINYINT 
)

INSERT INTO Course VALUES
(
"C001","高等数学",4	,1
),
(
"C002","大学英语",3,1
),
(
"C003","大学英语",3,2
),
(
"C004","计算机文化学",2,2
),
(
"C005",	"Java",	2,3
),
(
"C006",	"数据库基础",	4,	5
),
(
"C007","数据结构"	,4,4
),
(
"C008","计算机网络",4,	4
)

SELECT * FROM Course

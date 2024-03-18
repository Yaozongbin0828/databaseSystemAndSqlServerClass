CREATE TABLE Jobs(
	Jid char(6) PRIMARY KEY ,
	Descp nvarchar(20)NOT NULL,
	EduReq nchar(6) DEFAULT '本科',
	MinSalary int,
	MaxSalary int
)

CREATE TABLE Employess(
	Eid char(10),
	Ename nchar(6) NOT NULL,
	Sex nchar(1),
	CHECK(Sex='男' OR Sex='女'),
	BirthDate date,
	JobDate dateTime,
	Sid char(18) UNIQUE,
	Jid char(6),
	Tel char(11),
	 PRIMARY KEY(Eid),
	 FOREIGN KEY(Jid) REFERENCES Jobs(Jid)
)

-- emp表添加Salary列
ALTER TABLE Employess
ADD Salary INT

--Jobs表的Descp列的数据
ALTER TABLE Employess
DROP COLUMN IF EXISTS Tel

--查看
SELECT * FROM Jobs
SELECT * FROM Employess

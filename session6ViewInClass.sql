--建立查询信息管理选修了"C001"的课程的学生学号，姓名和成绩的视图
CREATE VIEW V_IS_SC001(Sno,Sanme,Grade)
AS
SELECT Student.Sno,Sname,Grade
FROM Student JOIN SC ON Student.Sno = SC.Sno
WHERE Sdept = '信息管理系' AND SC.Cno ='C001'

-- 视图
CREATE VIEW IS_Student
AS
SELECT Sno,Sname,Ssex,Sage
FROM Student WHERE Sdept = '信息管理系'

-- 定义一个查询学生出生年份的视图包括学号姓名和出生年份
CREATE VIEW BT_S(Sno,Sname,BirthYear)
AS 
SELECT Sno,Sname,2020-Sage
FROM Student

-- 定义查询每个学生的学号及平均成绩的视图
CREATE VIEW S_G
AS
SELECT Sno,AVG(Grade)AverageGrade FROM SC
GROUP BY Sno


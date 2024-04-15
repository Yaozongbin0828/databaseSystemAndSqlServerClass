-- 不带参数的存储过程，查询计算机系学生的考试情况，列出学生的姓名、课程名和考试成绩
create procedure student_grade1
AS
SELECT Sname,Cname,Grade
FROM Student s INNER JOIN SC
ON s.Sno = SC.Sno INNER JOIN Course c
ON c.Cno = sc.Cno
WHERE Sdept = '计算机系'

-- 执行存储过程
EXEC student_grade1


-- 带参数的存储过程，查询计算机系学生的考试情况，列出学生的姓名、课程名和考试成绩
create procedure student_grade2
@dept char(20)
AS
SELECT Sname,Sdept,Grade,Cname
FROM Student s INNER JOIN SC
ON s.Sno = SC.Sno INNER JOIN Course c
ON c.Cno = SC.Cno
WHERE Sdept = @dept

EXEC student_grade2 '信息管理系'

-- 有多个输入参数并有默认值的存储过程：查询某个学生某门课程的考试成绩，若没有指定课程，则默认课程为'Java'
create procedure student_grade3
@sname char(10),@cname char(20) = 'Java'
AS
SELECT Sname,Cname,Grade
FROM Student s INNER JOIN SC
ON s.Sno = SC.sno INNER JOIN Course c
ON c.Cno = SC.Cno
WHERE sname = @sname
AND cname = @cname

EXEC student_grade3 '吴宾','高等数学'

-- 带输出参数的存储结构：统计学生人数，并将计算结果作为输出参数返回给调用者
create procedure Count_Total
@total int output
AS
SELECT @total = COUNT(*) FROM Student

-- 10
Declare @res int
Execute Count_Total @res output
Print @res
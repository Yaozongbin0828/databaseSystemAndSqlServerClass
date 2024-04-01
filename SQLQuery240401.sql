SELECT * FROM Student ORDER BY Sage

SELECT SNO,Grade FROM SC
WHERE Cno = 'C002'
ORDER BY Grade DESC

SELECT * FROM Student
ORDER BY Sdept ASC,Sage DESC

SELECT COUNT(*)FROM Student

SELECT COUNT(DISTINCT Sno)FROM	SC

SELECT SUM(Grade) FROM SC WHERE Sno = '202011101'

SELECT AVG(Grade) FROM SC WHERE Sno ='202031103'

-- 5-31
SELECT MAX(Grade)AS 最高分,MIN(Grade)AS 最低分
FROM SC WHERE Cno = 'C001'

SELECT Cno AS 课程名 , COUNT(Sno)AS 选课人数
FROM SC GROUP BY Cno

SELECT Sno AS 学号,COUNT(*) AS 选课门数,AVG(Grade)平均成绩
FROM SC GROUP BY Sno

SELECT Sdept,COUNT(*) AS 学生人数,AVG(Sage) AS 平均年龄
FROM Student
GROUP BY Sdept

SELECT Sdept,COUNT(*) AS 女生人数 FROM Student
WHERE Ssex= '女'
GROUP BY Sdept

SELECT Sdept ,Ssex,COUNT(*)AS 人数,MAX(Sage)AS 最大年龄
FROM Student
GROUP BY Sdept,Ssex
ORDER BY Sdept

SELECT Sno,COUNT(*)AS 选课门数 FROM SC
GROUP BY Sno HAVING COUNT(*) > 3

-- https://blog.csdn.net/qq_45696288/article/details/106848661
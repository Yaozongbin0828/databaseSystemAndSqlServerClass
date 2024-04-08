-- 视图
CREATE VIEW IS_Student
AS
SELECT Sno,Sname,Ssex,Sage
FROM Student WHERE Sdept = '信息管理系'

CREATE VIEW V_IS_S1(Sno,Sname,Grade)
AS 
SELECT Student.Sno,Sname,Grade
FROM Student JOIN SC ON Student.Sno = SC.Sno
WHERE Sdept= '信息管理系' AND SC.Cno = 'C001'
-- ��ͼ
CREATE VIEW IS_Student
AS
SELECT Sno,Sname,Ssex,Sage
FROM Student WHERE Sdept = '��Ϣ����ϵ'

CREATE VIEW V_IS_S1(Sno,Sname,Grade)
AS 
SELECT Student.Sno,Sname,Grade
FROM Student JOIN SC ON Student.Sno = SC.Sno
WHERE Sdept= '��Ϣ����ϵ' AND SC.Cno = 'C001'
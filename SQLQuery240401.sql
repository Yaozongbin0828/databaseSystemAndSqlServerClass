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
SELECT MAX(Grade)AS ��߷�,MIN(Grade)AS ��ͷ�
FROM SC WHERE Cno = 'C001'

SELECT Cno AS �γ��� , COUNT(Sno)AS ѡ������
FROM SC GROUP BY Cno

SELECT Sno AS ѧ��,COUNT(*) AS ѡ������,AVG(Grade)ƽ���ɼ�
FROM SC GROUP BY Sno

SELECT Sdept,COUNT(*) AS ѧ������,AVG(Sage) AS ƽ������
FROM Student
GROUP BY Sdept

SELECT Sdept,COUNT(*) AS Ů������ FROM Student
WHERE Ssex= 'Ů'
GROUP BY Sdept

SELECT Sdept ,Ssex,COUNT(*)AS ����,MAX(Sage)AS �������
FROM Student
GROUP BY Sdept,Ssex
ORDER BY Sdept

SELECT Sno,COUNT(*)AS ѡ������ FROM SC
GROUP BY Sno HAVING COUNT(*) > 3

-- https://blog.csdn.net/qq_45696288/article/details/106848661
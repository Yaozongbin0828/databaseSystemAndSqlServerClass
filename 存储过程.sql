-- ���������Ĵ洢���̣���ѯ�����ϵѧ���Ŀ���������г�ѧ�����������γ����Ϳ��Գɼ�
create procedure student_grade1
AS
SELECT Sname,Cname,Grade
FROM Student s INNER JOIN SC
ON s.Sno = SC.Sno INNER JOIN Course c
ON c.Cno = sc.Cno
WHERE Sdept = '�����ϵ'

-- ִ�д洢����
EXEC student_grade1


-- �������Ĵ洢���̣���ѯ�����ϵѧ���Ŀ���������г�ѧ�����������γ����Ϳ��Գɼ�
create procedure student_grade2
@dept char(20)
AS
SELECT Sname,Sdept,Grade,Cname
FROM Student s INNER JOIN SC
ON s.Sno = SC.Sno INNER JOIN Course c
ON c.Cno = SC.Cno
WHERE Sdept = @dept

EXEC student_grade2 '��Ϣ����ϵ'

-- �ж�������������Ĭ��ֵ�Ĵ洢���̣���ѯĳ��ѧ��ĳ�ſγ̵Ŀ��Գɼ�����û��ָ���γ̣���Ĭ�Ͽγ�Ϊ'Java'
create procedure student_grade3
@sname char(10),@cname char(20) = 'Java'
AS
SELECT Sname,Cname,Grade
FROM Student s INNER JOIN SC
ON s.Sno = SC.sno INNER JOIN Course c
ON c.Cno = SC.Cno
WHERE sname = @sname
AND cname = @cname

EXEC student_grade3 '���','�ߵ���ѧ'

-- ����������Ĵ洢�ṹ��ͳ��ѧ��������������������Ϊ����������ظ�������
create procedure Count_Total
@total int output
AS
SELECT @total = COUNT(*) FROM Student

-- 10
Declare @res int
Execute Count_Total @res output
Print @res
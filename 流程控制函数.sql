## 演示流程控制语句

# IF(expr1,expr2,expr3) expr1为ture 则返回expr2 否则返回expr3
SELECT IF(TRUE,'北京','上海')FROM DUAL;

# IFNULL(expr1,expr2)
SELECT IFNULL(NULL,'yzbsg')FROM DUAL;

# SELECT CASE WHEN expr1 THEN expr2 WHEN expr3 THEN expr4 ELSE expr5 END;
SELECT CASE
			 WHEN TRUE THEN 'jack' 
			 WHEN FALSE THEN 'tom'
			 ELSE 'mary' END
			 
 -- 1.查询emp表，如果comm是null，则显示0.0
 SELECT ename,IF(comm IS NULL,0.0,comn)
			FROM emp;
		
SELECT ename,IFNULL(comm,0.0)
			FROM emp;
			
-- 2.如果emp表的job是CLERK则显示职员，如果是MANAGER则显示经理
-- 如果是 SALESMAN 则显示销售人员，其它正常显示
SELECT ename,(
	SELECT CASE
	WHEN job = 'CLERK' THEN '职员' 	
	WHEN job = 'MANAGER' THEN '经理'
	WHEN job = 'SALESNAB' THEN '销售人员'
	ELSE 'mary' END ) AS 'job'
 FROM emp;

SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrate;

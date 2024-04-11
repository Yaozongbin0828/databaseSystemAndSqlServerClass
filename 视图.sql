/** 需求一：创建一个视图emp_view01，只能查询emp表的(empno、ename，job和deptno)信息*/
CREATE VIEW emp_view01 AS SELECT empno,ename,job,deptno FROM emp

CREATE TABLE emp(empno INT,ename VARCHAR(32),job  VARCHAR(32),deptno TINYINT);
SELECT * FROM emp

# 查看视图
DESC emp_view01;
SELECT * FROM  emp_view01;
SELECT empno,job FROM emp_view01;

# 查看创建视图的指令
SHOW CREATE  VIEW emp_view01

-- 删除视图
DROP VIEW emp_view01;

-- 视图的细节

-- 1.创建视图后,到数据库去看,对应视图只有一个视图结构文件（形式：视图名.frm ）
-- 2.视图的数据变化会影响到基表，基表的数据变化也会影响到视图[insert update delete]

# 修改视图
UPDATE emp_view01
SET job = 'MANAGER'
WHERE empno = 7369

SELECT * FROM emp;

UPDATE emp
SET job = 'SALESMAN'
WHERE empno = 7369
# 视图总结
1.视图时根据(可以来自多个基表)根本来创建的的视图时虚拟的表。
2.视图也有列，数据来自基表。
3.视图通过可以修改基表的数据。
4.通过基表的改变，也会影响到视图的数据。

# 视图基本使用
1. CREATE VIEW 视图名 AS SELECT 语句
2. ALTER VIEW 视图名 AS SELECT 语句
3. SHOW CREATE VIEW 视图名
4. DROP VIEW 视图名1，视图名2


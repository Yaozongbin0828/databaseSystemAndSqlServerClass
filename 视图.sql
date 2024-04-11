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

/** 
安全.一些数据表有着重要的信息.有些字段是保密的，不能让用户直接看到.这
时就可以创建一个视图，在这张视图中只保留一部分字段.这样，用户就可以查询
自己需要的字段，不能查看回到梅签设，

性能.关系数据库的数据常常会分表存储，使用外键建立这些表的之间关系.这时
数据库查询通常会用到连接(加入)这样做不但麻烦，效率相对也比较低.如果
建立一个视图，将相关的表和字段组合在一起，就可以避免使用加入查询数据

灵活.如果系统中有一张旧的表，这张表由于设计的问题，即将被废弃.然而，很
多应用都是基于这张表，不易修改.这时就可以建立一张视图，视图中的数据直接
映射到新建的表.这样，就可以少做很多改动，也达到了升级数据表的目的
*/

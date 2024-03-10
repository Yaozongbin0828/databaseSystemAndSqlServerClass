-- 演示字符串相关函数的使用
CHARSET(str)-- 返回字符串字符集
CONCAT(str1,str2,...)-- 连接字串
INSTR(str,substr)-- 返回subtring在string中出现的位置，没有返回0
UCASE(str1)-- 大写 
LCASE(str2)-- 小写
LEFT() -- 从str左边起去length字符
LENGTH(str)-- str长度[按照字节]
REPLACE-- str中用replace_str替换search_str
STRCMP(expr1,expr2)-- 逐字符化比较两字串大小
SUBSTRING(str FROM pos FOR len)-- str posithion开始
LTRIM(str) RTRIM(str) trim-- 去空格

-- 返回字符集
SELECT CHARSET(ename) FROM emp;

-- 连接字串，输出结果为一列
SELECT CONCAT(ename,'工作是',job)FROM emp;

-- 大小写
SELECT UCASE(ename) FROM emp;
SELECT LCASE(ename) FROM emp;

-- 左右取length
SELECT LEFT(ename,2)FROM emp;

SELECT LENGTH(ename) FROM emp;

SELECT ename,REPLACE(job,'MANAGER','经理')FROM emp;

SELECT STRCMP('hsp','Hsp')FROM emp;

SELECT SUBSTRING(ename,1,2)FROM emp;

SELECT LTRIM('韩顺平教育') FROM DUAL;

SELECT CONCAT(LCASE,(SUBSTRING(ename,1,1)),SUBSTRING(ename,2) AS new_name FROM emp;

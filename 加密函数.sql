-- 演示加密函数和系统函数
-- USER() 查询用户
-- 可以查看登录到mysql的哪些用户，以及登录的IP
SELECT USER() FROM DUAL; -- 用户@IP地址
-- DATABASE(); 查看当前使用的数据库名称
SELECT DATABASE();
-- MD5(str) 为字符串加密一个MD5 32位的字符串 用户密码加密
SELECT MD5('yzb') FROM DUAL;
SELECT LENGTH(MD5('yzb')) FROM DUAL;

CREATE TABLE yao_user
(
	id INT,
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	pwd CHAR(32) NOT NULL DEFAULT ''
);

INSERT INTO yao_user
	VALUES(100,'姚宗彬',MD5('yzb'));
SELECT * FROM yao_user;
SELECT * FROM yao_user
				WHERE `name` = '姚宗彬' AND pwd = MD5('yzb')
				
-- PASSWORD(str) --加密函数 Mysql数据库的用户密码就是PASSWORD函数加密
SELECT PASSWORD('yzb') FROM DUAL;

-- SELECT * FROM mysql.user \G 原文密码str 计算返回字符串
-- 通常用于mysql数据库的用户密码加密
-- mysql.user 表示数据库.表
SELECT * FROM mysql.user


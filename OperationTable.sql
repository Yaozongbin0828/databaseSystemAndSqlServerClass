# 创建表练习
CREATE TABLE `emp`
(id int,
`name` VARCHAR(32),
sex CHAR(1),
birthday DATE,
entry_date DATETIME,
job VARCHAR(32),
Salary DOUBLE,
`resume` TEXT) 
-- 这段代码中的`CHARSET utf8 COLLATE utf8_bin ENGINE INNODB`用于指定表的字符集和校对规则，以及表的存储引擎。
CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;

# 操作表练习
-- 添加
INSERT INTO `emp`
VALUES(100,'三星瑟提',
'男',
'2001-08-28',
'2001-11-11 11:11:11',
'战士',5000,'给我砸');

-- 删除
DELETE FROM `emp` WHERE sex

-- 修改 ALTER 
-- 增加image列，VARCHAR类型，在resume后面(AFTER)
ALTER TABLE emp ADD image VARCHAR(32) NOT NULL DEFAULT '' AFTER resume 
-- 修改job列，长度为60
ALTER TABLE emp MODIFY job VARCHAR(60) NOT NULL DEFAULT ''
-- 删除sex列
ALTER TABLE emp DROP sex
-- 表名改为employee
RENAME TABLE emp TO employee
-- 修改表的字符集为utf-8
ALTER TABLE employee CHARACTER SET utf8
-- 列名name更改为user_name
ALTER TABLE employee CHANGE `name` user_name VARCHAR(64) NOT NULL DEFAULT '' 

-- 显示表结构，可以查看表的所有字段
DESC employee

-- 查询
SELECT * FROM `employee`;
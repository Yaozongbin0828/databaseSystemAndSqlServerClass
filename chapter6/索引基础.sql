-- 创建mysql索引的使用
-- 创建索引
CREATE TABLE tmp
(
	id INT,
	`name` VARCHAR(32)
)

-- 查询表是否有索引
SHOW INDEXES FROM tmp;

## 添加索引
-- 添加唯一索引()
CREATE UNIQUE INDEX id_index ON tmp (id);

-- 添加普通索引方式1
CREATE INDEX id_index ON tmp (id);

-- 删除索引
DROP INDEX id_index ON tmp

## 1.如果某列的值，是不会重复的，则优先考虑使用unique索引，否则使用普通索引。
-- 添加普通索引方式2
ALTER TABLE tmp ADD INDEX id_index (id);

-- 添加主键索引
CREATE TABLE t26(
	id INT,
	name VARCHAR(32)
)
-- 添加主键索引
ALTER TABLE t26 ADD PRIMARY KEY (id)

-- 删除主键索引
ALTER TABLE t26 DROP PRIMARY KEY

SHOW INDEXES FROM t26;

-- 修改索引，先删除，在添加新的索引
-- 查询索引
-- 1.INDEX方式
SHOW INDEX FROM 表名;
-- 2.INDEXES方式
SHOW INDEXES FROM 表名;
-- 3.KEYS方式
SHOW KEYS FROM 表名;
-- 4.DESC方式
DESC 表名;

--------------------练习 1
/* 创建一张订单表Order(id号，商品名，订购人，数量)要求id号为主键，请使
用2种方式来创建主键.(提示:为练习方便，可以是命令1，order*/
CREATE TABLE order1(
	id INT,
	name VARCHAR(25),
	person VARCHAR(25),
	size INT
)

/* 添加主键索引*/
ALTER TABLE order1 ADD PRIMARY KEY (id)

SHOW INDEX FROM order1;
---------------------------练习2
/* 创建一张特价菜谱表菜单(id号，菜谱名，厨师，点餐人身份证，价)
(格)。要求id号为主键，点餐人身份证是唯一请使用两种方式来创建
唯一(提示:为练习方便，可以是menu 1，menu 2)*/
CREATE TABLE menu1(
	id INT,
	fname VARCHAR(25),
	cheif VARCHAR(32),
	IDcard INT,
	price INT
)

/* 添加主键索引*/
ALTER TABLE menu1 ADD PRIMARY KEY (id)

/* 一*/
CREATE UNIQUE INDEX menu1_key ON menu1 (IDcard)

/* 二*/
ALTER TABLE menu1 ADD UNIQUE INDEX menu1_key (IDcard);

/* 查询索引*/
SHOW INDEX FROM menu1

-----------------------------------练习3
/* 创建一张运动员表运动员(id号，名字，特长)要求id号为主键)
名字为普通索引，需南三种方式来创建索引(提示:为练习方便，可
以是不同表名运动员1，运动员2，运动员3*/

CREATE TABLE sportman1
(
	id INT,
	name VARCHAR(32),
	Specialties VARCHAR(25)
)

ALTER TABLE sportman1 ADD PRIMARY KEY (id);

CREATE INDEX id_index ON sportman1 (id);

SHOW INDEX FROM sportman1

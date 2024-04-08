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

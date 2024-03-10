CREATE TABLE student(
	id int NOT NULL DEFAULT 1,
	NAME VARCHAR(20) NOT NULL DEFAULT '',
	chinese FLOAT,
	english FLOAT,
	math FLOAT
)

ALTER TABLE student ADD COLUMN math FLOAT;

ALTER TABLE student DROP matg;

DELETE FROM student
WHERE id>=1 AND id <=9;

INSERT INTO student VALUES
(1,'ddd',52,11,100),
(2,'ddd',62,21,95),
(3,'ccc',62,31,85),
(4,'bbb',42,21,75),
(5,'aaa',32,51,65),
(6,'hhh',52,51,55),
(7,'xxx',72,91,45),
(8,'韩翰',90,90,90),
(9,'韩天',50,50,50)

-- 查询数学大于60并且id大于90的成绩
SELECT * FROM student WHERE (math>60 AND id <5) 
-- 查询英语大于语文成绩的同学
SELECT * FROM student WHERE (english > chinese) 
-- 查询总分大于200分 并且 数学成绩小于语文成绩 姓韩的同学
SELECT * FROM student WHERE (english + chinese + math) > 200 AND (math >= chinese) AND `name` LIKE '韩%' 
-- 英语80-90之间
SELECT * FROM student WHERE english >= 80 AND english <=90;
SELECT * FROM student WHERE english BETWEEN 80 AND 90;
-- 数学成绩为85 90 100的学生
SELECT * FROM student WHERE math IN (85,90,100);
-- 查询所有姓韩的学生
SELECT * FROM student WHERE name LIKE '韩%'
-- math>80 chinese>80
SELECT * FROM student WHERE math > 80 AND chinese > 80;

-- demo
SELECT * FROM student WHERE chinese BETWEEN 70 AND 80;
SELECT * FROM student WHERE (chinese+english+math) IN (163,178,150);
SELECT * FROM student WHERE name LIKE 'd%' AND name LIKE '韩%';
-- 查询数学比语文多30分
SELECT * FROM student WHERE math - chinese > 30;


SELECT * FROM student

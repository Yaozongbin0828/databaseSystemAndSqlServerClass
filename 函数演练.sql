-- count
-- 数学成绩
SELECT COUNT(*) AS '学生个数' FROM student;
-- 统计数学成绩大于90的学生有多少个？
SELECT COUNT(*) AS '学生数学成绩大于90的个数' FROM student WHERE math > 90;

-- sum
-- 统计一个班数学总成绩
SELECT SUM(math) FROM student;
-- 统计一个班级语数英各科总成绩
SELECT SUM(math) AS math_total_score,SUM(chinese) ,SUM(english)FROM student;
-- 统计一个班语数英成绩总和
SELECT SUM(math+chinese+english) FROM student;
-- 统计一个班级语文成绩平均分
SELECT SUM(chinese) / COUNT(*) FROM student;

-- avg
-- 求一个班级数学平均分
SELECT AVG(math) FROM student;
-- 求一个班级总分平均分
SELECT AVG(math + chinese + english) FROM student;

-- max和min
-- 总分最高分和最低分
SELECT MAX(math + chinese + english),MIN(math + chinese + english) FROM student;
-- 数学最高分最低分
SELECT MAX(math) AS '数学最高分',MIN(math)'数学最低分' FROM student;

-- ORDER BY
-- 数学升序
SELECT * FROM student ORDER BY math;
-- 总分从高到低 降序输出 并且设置别名total_score
SELECT `name`, (chinese + english + math) AS total_score FROM student
				ORDER BY total_score DESC;
-- 对姓韩的学生成绩[总分]排序输出(升序)
SELECT `name`, (chinese + english + math) AS total_score FROM student
WHERE name LIKE '韩%' 
ORDER BY math;

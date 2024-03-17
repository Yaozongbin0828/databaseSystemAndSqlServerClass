-- 演示数字相关函数

-- ABS(sum) 绝对值
SELECT ABS(-10) FROM DUAL;

-- BIN (decimal_number) 十进制转二进制
SELECT BIN(10) FROM DUAL;

-- CEILING (number2) 向上取整,得到比num2大的最小整数
SELECT CEILING(-1.1) FROM DUAL;

-- CONV(number2,from_base,to_base) 进制转换
SELECT CONV(8, 10, 2) FROM DUAL;

-- FLOOR (num2) 向下取整 得到比num2小的最大整数
SELECT FLOOR(-1,1)

-- FORMAT (num,decimal_places) 保留小数位数
SELECT FORMAT(78.12312421,2) FROM DUAL;

-- HEX(N_or_S)转十六进制

-- LEAST(value1,value2,...) 求最小值
SELECT LEAST(0,1,-10,4)

-- MOD(N,M) 求余
SELECT MOD(10,3) FROM DUAL;

-- RAND() 返回随机数 其范围0<=v<=1.0
-- 1.rand()返回不同随机数 0<v<1.0
-- 2.rand(v)返回 随机数,范围0<v<1.0 v不变
SELECT RAND() FROM DUAL;
SELECT RAND(6) FROM DUAL;

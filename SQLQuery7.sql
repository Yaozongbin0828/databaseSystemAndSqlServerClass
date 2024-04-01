CREATE DATABASE mydb
CREATE TABLE users(id int,name varchar(255),address varchar(255),City varchar(255));
CREATE TABLE Websites(id int,url TEXT,alexa int,country varchar(255));

ALTER TABLE Websites ADD name varchar(255);

INSERT INTO users VALUES
(1,'张三','北京','a'),
(2,'李四','上海','b'),
(3,'王五','深圳','c'),
(4,'六','美国','d');

INSERT INTO Websites VALUES
(1,'https://www.google.com/',1,'USA','Google'),
(2,'https://www.taobao.com/',13,'CN','淘宝'),
(3,'http://www.runoob.com/',4689,'CN','菜鸟教程'),
(4,'http://weibo.com/',20,'CN','微博');


SELECT * FROM users
SELECT * FROM Websites
ORDER BY country,alexa DESC;

DELETE FROM users;
DELETE FROM Websites WHERE id='' AND url=''AND  alexa=''AND country='';

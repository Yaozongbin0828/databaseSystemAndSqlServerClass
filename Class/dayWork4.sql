CREATE TABLE Student (
    Sno CHAR(9) PRIMARY KEY,
    Sname NCHAR(5) NOT NULL,
    Ssex NCHAR(1),
    Sage TINYINT,
    Sdept NCHAR(20)
);

// 定义一个名为“BOOK”的架构。
SELECT * FROM Student
  
// 为用户“Teacher”定义一个架构，架构名同用户名。
CREATE SCHEMA Teacher AUTHORIZATION Teacher;

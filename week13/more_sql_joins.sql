CREATE DATABASE teachers;
USE teachers;
CREATE TABLE subject(SubjectID INT PRIMARY KEY NOT NULL, SubjectName VARCHAR(20));
CREATE TABLE teacher(LastName VARCHAR(20), SubjectID INT REFERENCES department(DepartmentID));
INSERT INTO subject
VALUES (1, 'Science'), (2, 'Math'), (3, 'English'), (4, 'SocialStudies');
INSERT INTO teacher
VALUES ('Smith', 2), ('Ramirez', 2), ('Taylor', 3), ('Brigman', 4), ('Rutland', NULL), ('Jackson', 2);

USE teachers;

SELECT * 
FROM subject;

SELECT *
FROM teacher;

SELECT t.LastName, s.SubjectName
FROM teacher AS t
INNER JOIN subject AS s
ON t.SubjectID = s.subjectID;

SELECT t.LastName, s.SubjectName
FROM teacher AS t
LEFT JOIN subject AS s
ON t.SubjectID = s.subjectID;

SELECT t.LastName, s.SubjectName
FROM teacher AS t
RIGHT JOIN subject AS s
ON t.SubjectID = s.subjectID;

SELECT teacher.LastName, subject.SubjectName
FROM teacher
LEFT JOIN subject
ON teacher.SubjectID = subject.subjectID
UNION
SELECT teacher.LastName, subject.SubjectName
FROM teacher
RIGHT JOiN subject
ON teacher.SubjectID = subject.subjectID;

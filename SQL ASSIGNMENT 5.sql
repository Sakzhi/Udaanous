
CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(50),
    Marks INT
);

CREATE TABLE PassingMarks (
    Subject VARCHAR(50),
    PassMark INT
);
INSERT INTO Students (StudentID, Name, Marks) VALUES
(1, 'Alice', 45),
(2, 'Bob', 55),
(3, 'Charlie', 60),
(4, 'Diana', 35);
INSERT INTO PassingMarks (Subject, PassMark) VALUES
('Math', 40),
('Science', 50),
('English', 60);
SELECT Name, Marks
FROM Students
WHERE Marks > ANY (
    SELECT PassMark
    FROM PassingMarks
);
select avg(Marks) as averagemarks,Name from Students group by Name having avg(marks)>35;
-- exsit9

Select S.* from student_information As S
Where exists(Select 5 From enrollments_data as E Where S.student_id=E.student_id and grade='A');
CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
 
-- Insert 10 values for each variable
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');
CREATE TABLE exam_info (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);
select s.* from student_info as s join exam_info as e on s.StudentID=e.StudentID where e.Scores>EXISTS
(select 3 from exam_info as e where s.StudentID=e.StudentID and Scores>75);
CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');
CREATE TABLE exam_info (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
INSERT INTO exam_info (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);
select s.* from student_info as s join exam_info as e on s.StudentID=e.StudentID where e.Scores>any 
(select 3 from exam_info as e where s.StudentID=e.StudentID and Scores>75);


CREATE DATABASE schooldb;

CREATE TABLE student
(
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    total_score INT NOT NULL, 
 );

 INSERT INTO student 
VALUES ('Jolly', 'Female', 20, 500), 
('Jon', 'Male', 22, 545), 
('Sara', 'Female', 25, 600), 
('Laura', 'Female', 18, 400), 
('Alan', 'Male', 20, 500), 
('Kate', 'Female', 22, 500), 
('Joseph', 'Male', 18, 643), 
('Mice', 'Male', 23, 543), 
('Wise', 'Male', 21, 499), 
('Elis', 'Female', 27, 400);


SELECT * FROM student;

SELECT GENDER, COUNT(GENDER) AS TOTAL_STUDENTS, AVG(AGE) AS AVERAGE_AGE, SUM(TOTAL_SCORE) AS FINAL_SCORE FROM STUDENT GROUP BY GENDER;

SELECT id, name, Aggregation.gender, Aggregation.Total_students, Aggregation.Average_Age, Aggregation.Total_Score
FROM student
INNER JOIN
(SELECT gender, count(gender) AS Total_students, AVG(age) AS Average_Age, SUM(total_score) AS Total_Score
FROM student
GROUP BY gender) AS Aggregation
on Aggregation.gender = student.gender;


SELECT ID, sum(total_score) Sum_Of_Score into students from student group by id;

select * from student;

select checksum_agg(sum_of_score) score_check_sum from students;



DROP TABLE IF EXISTS university_db.instructor;
DROP TABLE IF EXISTS university_db.course;
DROP TABLE IF EXISTS university_db.department;

CREATE TABLE university_db.department (
dept_name VARCHAR(25),
building VARCHAR(50),
budget numeric(8,2),
PRIMARY KEY(dept_name)
);

CREATE TABLE university_db.instructor (
instructor_id CHAR(5),
name VARCHAR(25) NOT NULL,
dept_name VARCHAR(25),
salary numeric(8,2),
PRIMARY KEY(instructor_id),
FOREIGN KEY (dept_name)  REFERENCES university_db.department(dept_name)
);


DROP TABLE IF EXISTS university_db.student;

CREATE TABLE university_db.student (
student_id CHAR(5),
name VARCHAR(25),
total_cred numeric(8,2),
PRIMARY KEY(student_id)
);

CREATE TABLE university_db.course (
course_id CHAR(8),
title VARCHAR(50),
dept_name VARCHAR(25),
credits numeric(2,0),
PRIMARY KEY(course_id),
FOREIGN KEY (dept_name)  REFERENCES university_db.department(dept_name)
);






DROP TABLE IF EXISTS university_db.takes;

CREATE TABLE university_db.takes (
student_id CHAR(5),
course_id VARCHAR(25),
semester INT,
year_takes YEAR,
grade CHAR(2),

);
DROP DATABASE IF EXISTS CS602;
CREATE DATABASE CS602;

USE CS602;  -- MySQL commanddrop table if exists sk_courses;
drop table if exists sk_students;

create table sk_courses (
  courseID varchar(12) NOT NULL,
  courseName varchar(255) NOT NULL,
  PRIMARY KEY (courseID)
);

create table sk_students(
	studentID INT(11) NOT NULL auto_increment,
	courseID varchar(12) NOT NULL,
	firstName varchar(255) NOT NULL,
	lastName varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	primary key(studentID)
);
	
INSERT INTO sk_courses VALUES
		('cs601', 'Web Application Development'),
		('cs602', 'Server-Side Web Development'),
		('cs701 ', 'Rich Internet Application Development');
        
INSERT INTO sk_students VALUES
		(1, 'cs601', 'John','Doe','john@doe.com'),
		(2, 'cs601', 'Jane','Doe','jane@doe.com'),
        (3, 'cs602', 'John','Smith','john@smith.com'),
        (4, 'cs602', 'Jane','Smith','jane@smith.com'),
        (5, 'cs701', 'John','Doe','john@doe.com'),
        (6, 'cs701', 'Jane','Smith','jane@smith.com');
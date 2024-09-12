create table Students (
Stud_ID INT primary KEY,
First_Name varchar(100) NOT NULL,
last_Name varchar(100),
Age int check(Age>=18),
Email varchar(255) unique not null
);

INSERT INTO Students(Stud_ID,First_Name,Last_Name,Age,Email)
values (1,'John','Doe',20,'john.doe@example.com'),
(2,'Jane','Smith',22,'jane.smith@example.com'),
(3,'Michael','Brown',19,'michael.brown@example.com');

ALTER TABLE Students
ADD COLUMN EnrollmentDate DATE;

ALTER TABLE Students
MODIFY COLUMN Email VARCHAR(300) NOT NULL UNIQUE;

ALTER TABLE Students
DROP COLUMN Last_Name;

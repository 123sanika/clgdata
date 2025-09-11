create table college(
clgid int primary key,
clgname varchar,
branch varchar,
city varchar
)

CREATE TABLE student (
stdid INT PRIMARY KEY,
name VARCHAR,
lastname VARCHAR,
gender VARCHAR,
clgid INT,
FOREIGN KEY (clgid) REFERENCES college(clgid)
);

create table library(
lib_id int primary key,
student_name varchar,
book_name varchar,
class int,
clgid int,
FOREIGN key(clgid) REFERENCES college(clgid)
)

INSERT INTO college (clgid, clgname, branch, city) 
VALUES
(1, 'Techno Institute', 'Computer Science', 'Mumbai'),
(2, 'National College', 'Mechanical', 'Delhi'),
(3, 'Sunrise University', 'Electrical', 'Pune'),
(4, 'Bright Future College', 'Civil', 'Nagpur'),
(5, 'Green Valley Institute', 'IT', 'Bangalore'),
(6, 'Skyline College', 'Electronics', 'Hyderabad'),
(7, 'Silver Oak College', 'AI & Data Science', 'Ahmedabad'),
(8, 'Riverdale University', 'Biotechnology', 'Chennai'),
(9, 'Global Academy', 'Commerce', 'Kolkata'),
(10, 'Ocean View College', 'Management', 'Goa');

select * from college

INSERT INTO student (stdid, name, lastname, gender, clgid) VALUES
(101, 'Amit', 'Sharma', 'Male', 1),
(102, 'Priya', 'Verma', 'Female', 2),
(103, 'Rahul', 'Patil', 'Male', 3),
(104, 'Sneha', 'Joshi', 'Female', 4),
(105, 'Vikas', 'Nair', 'Male', 5),
(106, 'Ananya', 'Iyer', 'Female', 6),
(107, 'Karan', 'Deshmukh', 'Male', 7),
(108, 'Riya', 'Kapoor', 'Female', 8),
(109, 'Sahil', 'Choudhary', 'Male', 9),
(110, 'Meera', 'Khan', 'Female', 10);


select * from student

INSERT INTO library (lib_id, student_name, book_name, class, clgid) 
VALUES
(201, 'Amit Sharma', 'Database Systems', 3, 1),
(202, 'Priya Verma', 'Thermodynamics', 2, 2),
(203, 'Rahul Patil', 'Circuit Theory', 1, 3),
(204, 'Sneha Joshi', 'Structural Analysis', 4, 4),
(205, 'Vikas Nair', 'Python Programming', 2, 5),
(206, 'Ananya Iyer', 'Microprocessors', 3, 6),
(207, 'Karan Deshmukh', 'AI Fundamentals', 1, 7),
(208, 'Riya Kapoor', 'Biotechnology Basics', 2, 8),
(209, 'Sahil Choudhary', 'Business Accounting', 1, 9),
(210, 'Meera Khan', 'Marketing Management', 3, 10);

select * from library
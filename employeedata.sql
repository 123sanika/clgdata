CREATE TABLE department(
deptid INT PRIMARY KEY,
deptname VARCHAR,
location VARCHAR,
manager VARCHAR
);

CREATE TABLE project(
projid INT PRIMARY KEY,
projname VARCHAR,
budget INT,
deptid INT,
FOREIGN KEY (deptid) REFERENCES department(deptid)
);

CREATE TABLE employee(
empid INT PRIMARY KEY,
name VARCHAR,
position VARCHAR,
salary INT,
deptid INT,
FOREIGN KEY (deptid) REFERENCES department(deptid)
);

INSERT INTO department (deptid, deptname, location, manager) VALUES
(1, 'HR', 'Mumbai', 'Amit Sharma'),
(2, 'IT', 'Delhi', 'Priya Verma'),
(3, 'Finance', 'Pune', 'Rahul Patil'),
(4, 'Marketing', 'Bangalore', 'Sneha Joshi'),
(5, 'Operations', 'Hyderabad', 'Vikas Nair'),
(6, 'Sales', 'Chennai', 'Ananya Iyer'),
(7, 'R&D', 'Ahmedabad', 'Karan Deshmukh'),
(8, 'Support', 'Nagpur', 'Riya Kapoor'),
(9, 'Logistics', 'Kolkata', 'Sahil Choudhary'),
(10, 'Legal', 'Goa', 'Meera Khan');

SELECT * FROM department;

INSERT INTO project (projid, projname, budget, deptid) VALUES
(101, 'Recruitment System', 500000, 1),
(102, 'ERP Development', 1200000, 2),
(103, 'Tax Management', 800000, 3),
(104, 'Ad Campaign 2025', 600000, 4),
(105, 'Supply Chain Optimization', 900000, 5),
(106, 'CRM Implementation', 700000, 6),
(107, 'AI Research', 1500000, 7),
(108, 'Helpdesk Automation', 400000, 8),
(109, 'Fleet Management', 650000, 9),
(110, 'Contract Review System', 550000, 10);

SELECT * FROM project;

INSERT INTO employee (empid, name, position, salary, deptid) VALUES
(201, 'Arjun Mehta', 'HR Executive', 35000, 1),
(202, 'Neha Singh', 'Software Engineer', 60000, 2),
(203, 'Rohan Gupta', 'Accountant', 40000, 3),
(204, 'Simran Kaur', 'Marketing Analyst', 45000, 4),
(205, 'Mohit Jain', 'Operations Manager', 55000, 5),
(206, 'Tanya Roy', 'Sales Executive', 30000, 6),
(207, 'Aditya Rao', 'Research Scientist', 70000, 7),
(208, 'Pooja Sharma', 'Support Engineer', 32000, 8),
(209, 'Nikhil Yadav', 'Logistics Officer', 38000, 9),
(210, 'Fatima Sheikh', 'Legal Advisor', 50000, 10);

SELECT * FROM employee;

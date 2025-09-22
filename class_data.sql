CREATE TABLE class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR,
    strength INT,
    section CHAR,
    class_teacher VARCHAR
);

INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (1, 'Class 1', 35, 'A', 'Mr. Sharma');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (2, 'Class 1', 33, 'B', 'Ms. Gupta');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (3, 'Class 2', 40, 'A', 'Mr. Khan');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (4, 'Class 2', 38, 'B', 'Mrs. Patil');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (5, 'Class 3', 42, 'A', 'Ms. Verma');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (6, 'Class 3', 39, 'B', 'Mr. Deshmukh');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (7, 'Class 4', 41, 'A', 'Mrs. Fernandes');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (8, 'Class 4', 37, 'B', 'Mr. Das');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (9, 'Class 5', 36, 'A', 'Ms. Sen');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (10, 'Class 5', 34, 'B', 'Mr. Reddy');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (11, 'Class 6', 43, 'A', 'Mrs. Mehta');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (12, 'Class 6', 40, 'B', 'Mr. Iyer');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (13, 'Class 7', 39, 'A', 'Ms. Chawla');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (14, 'Class 7', 37, 'B', 'Mr. Kulkarni');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (15, 'Class 8', 45, 'A', 'Mrs. Roy');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (16, 'Class 8', 42, 'B', 'Mr. Naik');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (17, 'Class 9', 46, 'A', 'Ms. Pandey');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (18, 'Class 9', 44, 'B', 'Mr. Bhatt');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (19, 'Class 10', 48, 'A', 'Mrs. Dsouza');
INSERT INTO class (class_id, class_name, strength, section, class_teacher) VALUES (20, 'Class 10', 47, 'B', 'Mr. Sethi');

select * from class

--add column

alter table class add column room_no int;
alter table class add column floor int;
alter table class add column start_time time;
alter table class add column end_time time;
alter table class add column remark text;

select * from class;

update class set room_no =2

--drop column 

ALTER TABLE class DROP COLUMN remark;
ALTER TABLE class DROP COLUMN start_time;
ALTER TABLE class DROP COLUMN end_time;
ALTER TABLE class DROP COLUMN floor;
ALTER TABLE class DROP COLUMN strength;

select * from class

--change data type

alter table class alter column building_no type float;
alter table class alter column strength type varchar;
alter table class alter column division type varchar;
alter table class alter column start_time type TIME;
alter table class alter column end_time type TIME;

select * from class

--rename column

ALTER TABLE class RENAME COLUMN class_name TO grade_name;
ALTER TABLE class RENAME COLUMN class_id TO roll_no;
ALTER TABLE class RENAME COLUMN section TO division;
ALTER TABLE class RENAME COLUMN class_teacher TO mentor;
ALTER TABLE class RENAME column floor to building_no;

select * from class

--add constraint

ALTER TABLE class ADD CONSTRAINT uq_start_time UNIQUE (start_time);
ALTER TABLE class ADD CONSTRAINT uq_building UNIQUE (building_no);
ALTER TABLE class ADD CONSTRAINT uq_end UNIQUE (end_time);
ALTER TABLE class ADD CONSTRAINT uq_remark UNIQUE (remark);

ALTER TABLE class DROP CONSTRAINT uq_start_time;

select * from class

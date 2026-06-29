use mydatabase;
CREATE TABLE persons (
 id INT NOT NULL,
 person_name VARCHAR(50) NOT NULL,
 birth_date DATE,
 phone VARCHAR(15) NOT NULL,
 CONSTRAINT pk_persons PRIMARY KEY(id)
);

CREATE TABLE students(
 id INT NOT NULL,
 reg_no INT,
 name VARCHAR(50) NOT NULL,
 dept VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL,
 address VARCHAR(50) NOT NULL,
 date_of_birth DATE,PRIMARY KEY(reg_no),
 mobile VARCHAR(15) NOT NULL
);

DESC students;

--- change column name and datatype from mobile to phone ---
ALTER TABLE students
CHANGE COLUMN mobile phone VARCHAR(20);

--- remove primary key and change the name,datatype for reg_no ---
ALTER TABLE students
CHANGE COLUMN reg_no reg_no INT NULL,
DROP PRIMARY KEY;

--- set auto increment for a column ---
ALTER TABLE students
CHANGE COLUMN id id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id);

--- add primary key to reg_no ---
ALTER TABLE students
CHANGE COLUMN reg_no reg_no INT NOT NULL,
ADD  PRIMARY KEY(reg_no);

--- remove primary key for id ---
ALTER TABLE students
CHANGE COLUMN id id INT NULL,
DROP PRIMARY KEY;

DESC students;
--- Try to allocate auto increament for id when we have reg_no column as primary key---

ALTER TABLE students
MODIFY id INT UNIQUE;

ALTER TABLE students
MODIFY id INT AUTO_INCREMENT;

--- tO DROP UNIQUE KEY ---
ALTER TABLE students
CHANGE COLUMN id id INT NULL;

ALTER TABLE students
DROP INDEX id;

---------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE employee(
id INT unique AUTO_INCREMENT,
emp_no INT ,
emp_name VARCHAR(20),
emp_dob DATE,
email VARCHAR(20),
address VARCHAR(50),
PRIMARY KEY(emp_no)
);

DESC employee;

SELECT* FROM employee;

ALTER TABLE employee
ADD COlUMN phone VARCHAR(15) AFTER email;

ALTER TABLE employee
CHANGE COlUMN address location VARCHAR(40);

SHOW TABLES;

drop TABLES students, employee;


--------------------------------------------------------------------------------------------------------------------------------------


DESC persons;


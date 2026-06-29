--- INSERT ----

SELECT *
FROM persons;

DESC persons;

INSERT INTO persons
(id,person_name,birth_date,phone)
VALUES (1,'Jasmine','2006-07-08',6381673114);

TRUNCATE persons;

INSERT INTO persons
(id,person_name,birth_date,phone)
VALUES (1,'Jasmine','2006-07-08',6381673114),
	   (2,'Mervin','1987-01-25',9840496261),
       (3,'Raji','1989-12-31',8939154962);
       
       
DROP TABLE students;

CREATE TABLE students(
 stud_id INT UNIQUE AUTO_INCREMENT,
 reg_no INT,
 stud_name VARCHAR(20) NOT NULL,PRIMARY KEY(reg_no),
 dob DATE
 );
 
 DESC students;
 
 SELECT * FROM students;
 
 INSERT INTO students
  (reg_no,stud_name,dob)
  VALUES ('4001','Jasmine','2006-07-08'),
	   ('4002','Mervin','1997-01-25'),
       ('4003','Raji','1980-12-31');
       
SELECT * FROM students;  

DELETE FROM students WHERE reg_no =4001 OR stud_name='Jasmine';

/* IF SAME NAME TWO PERSON

DELETE FROM students
WHERE name='Kumar' AND reg_no =102;

--- FOR NULL VALUE ---
SELECT * FROM student WHERE name IS NOT NULL;

--- FOR NULL ---
SELECT * FROM student WHERE reg_no=4001 AND name IS NULL;
*/

--- UPDATE ---

UPDATE students SET stud_name='Jas'WHERE reg_no=4001;


 
 
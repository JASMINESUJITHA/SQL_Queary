use mydatabase;

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(8,2),
    published_date DATE,
    in_stock INT DEFAULT 1
);

DESC Books;

SELECT * FROM Books;

INSERT INTO Books (title,isbn,price,published_date,in_stock)
VALUES
('Power of Money','ISBN001',450.00,'2021-05-10',5),
('It start with us','ISBN002',350.00,'2019-08-15',2),
('It ends with us','ISBN003',550.00,'2022-01-20',0),
('History of home Town','ISBN004',400.00,'2018-11-25',3);

INSERT INTO Books (title, isbn, price, published_date)
VALUES
('Life Of Happy Girl','ISBN005',600.00,'2023-02-14');

ALTER TABLE Books
RENAME COLUMN title TO book_title;

ALTER TABLE Books
MODIFY COLUMN price FLOAT;

ALTER TABLE Books
ADD COLUMN author_name VARCHAR(50) NOT NULL DEFAULT 'Unknown';

UPDATE Books
SET price = price * 0.9
WHERE published_date < '2020-01-01';

DELETE FROM Books
WHERE in_stock = 0;

ALTER TABLE Books
AUTO_INCREMENT = 101;

SELECT book_title, price, published_date
FROM Books
WHERE book_title LIKE '%History%'
AND price > 300
ORDER BY price DESC;

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURRENT_DATE)
);

DESC Members;

SELECT * FROM Members;

SELECT *
FROM Members
WHERE YEAR(join_date) = 2024
ORDER BY member_name ASC;

SELECT * FROM Books;

SELECT * FROM Members;

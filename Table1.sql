CREATE TABLE colleges (
    id INT PRIMARY KEY,
    college_name VARCHAR(100),
    Address VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(20),
    student_count INT,
    established_date DATE,
    dept_count INT,
    prof_count INT
);
select * from colleges

COPY colleges (id, college_name, Address, email, phone, student_count, established_date, dept_count, prof_count)
FROM 'D:/DA-20_EXCEL/sql/Table1.csv'
DELIMITER ','
CSV HEADER;

select * from colleges;
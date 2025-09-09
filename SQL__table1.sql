CREATE TABLE college (
    id SERIAL PRIMARY KEY,
    college_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(50),
    student_count INT,
    established_date DATE,
    dept_count INT,
    prof_count INT
);


select * from college;


Insert into college (
    college_name, address, email, phone, student_count, established_date, dept_count, prof_count
) values (
    'Greenfield College',
    '123 Main St, Springfield',
    'info@greenfield.edu',
    '555-1234',
    1200,
    '2001-08-15',
    8,
    75
);

select * from college;

copy college(id, college_name, address, email, phone, student_count, established_date, dept_count, prof_count)
from 'D:\Da20_SQL\Table1.csv'
with (FORMAT csv, HEADER true, DELIMITER ',');


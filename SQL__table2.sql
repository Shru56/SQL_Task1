-- Create new table for Table2.csv

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    marks_math INT,
    marks_physics INT,
    marks_chemistry INT,
    percentage VARCHAR(10)  -- keeping as VARCHAR since it's stored with %
);


select * from student;

-- Example insert

insert into student (
    id, name, marks_math, marks_physics, marks_chemistry, percentage
) values (
    120001,
    'John Doe',
    85,
    78,
    90,
    '84%'
);

select * from student;


copy student(id, name, marks_math, marks_physics, marks_chemistry, percentage)
from 'D:\Da20_SQL\Table2.csv'
with (FORMAT csv, HEADER true, DELIMITER ',');

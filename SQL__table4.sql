-- Create table for Table4.csv

CREATE TABLE insurance (
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    bmi NUMERIC(5,2),
    children INT,
    smoking_status VARCHAR(20),
    location VARCHAR(50),
    insurance_price_usd INT
);

select * from insurance;


-- Insert 

insert into insurance
(name, age, gender, bmi, children, smoking_status, location, insurance_price_usd)
values 
('Test User',
30, 
'Male', 
25.5, 1, 
'Non-Smoker', 
'Test City', 
15000);

select * from insurance;


copy insurance(name, age
, gender, bmi, children, smoking_status, location, insurance_price_usd)
from 'D:\DataAnalytics_20\SQL\SQL_Tasks\Table4.csv'
DELIMITER ','
CSV HEADER;

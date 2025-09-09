-- Create new table for Table3.csv

CREATE TABLE orders (
    order_no INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(255),
    ship_date DATE,
    retail_price_usd NUMERIC(10,2),
    order_quantity INT,
    tax_usd NUMERIC(10,2),
    total_usd NUMERIC(10,2)
);


select * from orders;

-- Example insert 

insert into orders (
    order_no, order_date, customer_name, ship_date, retail_price_usd, order_quantity, tax_usd, total_usd
) values (
    1001,
    '2024-01-01',
    'John Smith',
    '2024-01-03',
    50.00,
    2,
    10.00,
    110.00
);

select * from orders;


COPY orders(order_no, order_date, customer_name, ship_date, retail_price_usd, order_quantity, tax_usd, total_usd)
FROM 'D:\Da20_SQL\Table3.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

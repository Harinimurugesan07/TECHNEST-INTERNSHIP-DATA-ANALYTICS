-- importing dataset
create database retail_sales;
use retail_sales;
SHOW TABLES;
select * from retails_data limit 10;

-- Data cleaning
-- check null values

SELECT * FROM retails_data
WHERE 'Transaction Id' IS NULL
   OR 'Date' IS NULL
   OR 'Customer Id' IS NULL
   OR 'Gender' IS NULL
   OR 'Age' IS NULL
   OR 'Product Category' IS NULL
   OR 'Quantity' IS NULL
   OR 'Price per Unit' IS NULL
   OR 'Total Amount' IS NULL;

-- exploration and business insights

select COUNT(*) as total_transactions from retails_data;

select COUNT(distinct `Customer ID`) as unique_customers from retails_data;

select distinct `Product Category` from retails_data;

select `Product Category`, SUM(`Total Amount`) as total_sales from retails_data group by `Product Category` order by total_sales desc;

select `Gender`, COUNT(*) as transactions from retails_data group by `Gender`;

select `customer id`, sum(`total amount`) as total_spent
from retails_data
group by `customer id`
order by total_spent desc;



select round(avg(`age`),2) as avg_age
from retails_data
where `product category` = 'Beauty';


-- view

create view v_sales_by_category as
select `product category`, sum(`total amount`) as total_sales
from retails_data
group by `product category`;
 
create view v_top_customers as
select `customer id`, sum(`total amount`) as total_spent
from retails_data
group by `customer id`
order by total_spent desc
limit 5;

create view v_transactions_by_gender as
select `gender`, count(*) as transactions
from retails_data
group by `gender`;

create view v_high_value_txn as
select *
from retails_data
where `total amount` > 1000;


select * from v_sales_by_category;
select * from v_top_customers;
select * from v_transactions_by_gender;
select * from v_high_value_txn;

select column_name, data_type
from information_schema.columns
where table_name = 'retails_data';

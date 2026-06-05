create database supply_chain;
use supply_chain;
show tables;

-- 1. Count total records
select count(*) from supply_chain_data;


select * 
from supply_chain_data;

select distinct `supplier name`
from supply_chain_data;


-- 4. Find minimum and maximum price
select min(price) as min_price
from supply_chain_data;

select max(price) as max_price
from supply_chain_data;


-- AVG
select avg(price) as avg_price
from supply_chain_data;


-- Total revenue
select sum(`Revenue generated`) as total_revenue
from supply_chain_data;



select distinct(`product type`)
from supply_chain_data;

DESCRIBE supply_chain_data;

-- total products sold
select sum(`Number of products sold`)
from supply_chain_data;


-- Null Values
select * from supply_chain_data
where price is null
or `Revenue generated` is null
or `stock levels` is null
or `shipping costs` is null;

-- Find duplicate rows
SELECT sku, COUNT(*) AS duplicate_count
FROM supply_chain_data
GROUP BY SKU
HAVING COUNT(*) > 1;

--  Find negative or zero values
SELECT *
FROM supply_chain_data
WHERE Price <= 0
OR `Stock levels` <= 0
OR `Revenue generated` <= 0
OR `Manufacturing costs` <= 0;

--  Find blank product types or suppliers
SELECT *
FROM supply_chain_data
WHERE `Product type` = ''
OR `Supplier name` = '';

--  Check transportation mode inconsistencies
SELECT DISTINCT `Transportation modes`
FROM supply_chain_data;


--  Revenue by product type
SELECT `Product type`,
SUM(`Revenue generated`) AS total_revenue
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY total_revenue DESC;


--  Top-selling products
SELECT SKU,
SUM(`Number of products sold`) AS total_sold
FROM supply_chain_data
GROUP BY SKU
ORDER BY total_sold DESC
LIMIT 10;


--  Stock levels by product
SELECT `Product type`,
SUM(`Stock levels`) AS total_stock
FROM supply_chain_data
GROUP BY `Product type`;


--  Supplier defect rates
SELECT `Supplier name`,
AVG(`Defect rates`) AS avg_defect_rate
FROM supply_chain_data
GROUP BY `Supplier name`
ORDER BY avg_defect_rate DESC;


--  Average shipping cost
SELECT AVG(`Shipping costs`) AS avg_shipping_cost
FROM supply_chain_data;




--  Shipping cost by transportation mode
SELECT `Transportation modes`,
AVG(Costs) AS avg_transport_cost
FROM supply_chain_data
GROUP BY `Transportation modes`;


--  Average lead time by supplier
SELECT `Supplier name`,
AVG(`Lead times`) AS avg_lead_time
FROM supply_chain_data
GROUP BY `Supplier name`;


--  Product-wise manufacturing cost
SELECT `Product type`,
AVG(`Manufacturing costs`) AS avg_manufacturing_cost
FROM supply_chain_data
GROUP BY `Product type`;


--  Inspection result counts
SELECT `Inspection results`,
COUNT(*) AS total_count
FROM supply_chain_data
GROUP BY `Inspection results`;


--  Product types with highest defect rates
SELECT `Product type`,
AVG(`Defect rates`) AS avg_defect_rate
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY avg_defect_rate DESC;



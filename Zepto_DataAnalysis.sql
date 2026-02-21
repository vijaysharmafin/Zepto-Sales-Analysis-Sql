create table zepto (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150),
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,	
quantity INTEGER
);

-- Data Exploration
-- Count of Rows
select count(*) from zepto;

--Sample data
select * from zepto;

--different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

--products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--Data Cleaning
--convert paise to rupees

SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

Update zepto
set discountedSellingPrice = discountedSellingPrice/100;

--Data Analysis
-- Q1. Find the top 10 best-value products based on the discount percentage.
select name,mrp,discountpercent
from zepto
order by discountpercent desc
limit 10;

--Q2.What are the Products with High MRP but Out of Stoct.
select distinct name,mrp
from zepto
where mrp > 300 and outofstock = true
order by mrp desc;

--Q3.Calculate Estimated Revenue for each category
select category,
sum(discountedsellingprice*availablequantity) as total_revenue
from zepto
group by category
order by total_revenue;

--Q5. Find all products where MRP is greater than ₹500 and discount is less than 10%.

select distinct name,mrp,discountpercent
from zepto
where mrp > 500 and discountpercent < 10
order by mrp desc,discountpercent desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category, round(avg(discountpercent),2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name,discountedsellingprice,weightingms,
round(discountedsellingprice/weightingms,2) as pricepergm
from zepto
where weightingms >= 100
order by pricepergm;

--Q7.Group the products into categories like Low, Medium, Bulk.
select distinct name,weightingms,
Case when weightingms <1000 then 'low'
when weightingms <2000 then 'medium'
else 'bulk'
end as weight_category
from zepto;

--Q8.What is the Total Inventory Weight Per Category 
select category, sum(weightingms*availablequantity) as Total_Inventory_weight
from zepto
group by category
order by Total_Inventory_weight;
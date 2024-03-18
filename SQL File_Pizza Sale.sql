select * from [Pizza Sales]
SELECT SUM(total_price) / COUNT(distinct order_id) AS Avg_Order_Value FROM [Pizza Sales]
SELECT SUM(quantity) AS Total_Pizza_Sold FROM [Pizza Sales]
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM [Pizza Sales]
SELECT CAST (CAST(SUM(quantity) AS DECIMAL (10,2)) / 
CAST (COUNT(DISTINCT order_id) AS DECIMAL (10,2)) AS DECIMAL (10,2)) 
AS Avg_Pizzas_Per_Order 
FROM [Pizza Sales]
select * from [Pizza Sales]
select DATENAME(DW,	order_date) as order_day, count(distinct order_id) as Total_Orders
from [Pizza Sales]
Group BY DATENAME(DW, order_date)
select * from [Pizza Sales]
select DATENAME(MONTH,	order_date) as Month_Name, count(distinct order_id) as Total_Orders
from [Pizza Sales]
Group BY DATENAME(MONTH, order_date)
Order By Total_Orders DESC
select * from [Pizza Sales]
select pizza_category, SUM(total_price) AS Total_Sales, SUM(total_price) * 100 / (select SUM(total_price) from [Pizza Sales] where MONTH(order_date) = 1) AS PCT
from [Pizza Sales] 
where MONTH(order_date) = 1
Group BY pizza_category

select * from [Pizza Sales]
select pizza_size, CAST(SUM(total_price) as decimal(10,2)) as Total_sales, CAST(SUM(total_price) * 100 /
(Select SUM(total_price) from [Pizza Sales] where datepart(QUARTER, order_date)=1) AS decimal(10,2)) as PCT
from [Pizza Sales]
where datepart(QUARTER, order_date)=1
Group BY pizza_size
order by PCT DESC

select * from [Pizza Sales]
select top 5 pizza_name, SUM(	total_price) as Total_Revenue from [Pizza Sales]
GROUP BY pizza_name
order by Total_Revenue desc

select top 5 pizza_name, SUM(	total_price) as Total_Revenue from [Pizza Sales]
GROUP BY pizza_name
order by Total_Revenue asc

select top 5 pizza_name, SUM(quantity) as Total_Quantity from [Pizza Sales]
GROUP BY pizza_name
order by Total_Quantity DESC

select top 5 pizza_name, SUM(quantity) as Total_Quantity from [Pizza Sales]
GROUP BY pizza_name
order by Total_Quantity ASC

select top 5 pizza_name, count(distinct order_id) as Total_Orders from [Pizza Sales]
GROUP BY pizza_name
order by Total_Orders DESC

select top 5 pizza_name, count(distinct order_id) as Total_Orders from [Pizza Sales]
GROUP BY pizza_name
order by Total_Orders ASC